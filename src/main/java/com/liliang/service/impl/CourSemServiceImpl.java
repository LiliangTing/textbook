package com.liliang.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liliang.dao.BookDAO;
import com.liliang.dao.BookingDAO;
import com.liliang.dao.CourSemDAO;
import com.liliang.dao.SemesterDAO;
import com.liliang.entry.Book;
import com.liliang.entry.Booking;
import com.liliang.entry.CourSem;
import com.liliang.entry.Semester;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;
import com.liliang.service.CourSemService;

@Service
public class CourSemServiceImpl implements CourSemService {
	@Autowired
	private SemesterDAO semesterDAO;
	@Autowired
	private CourSemDAO coueSemDAO;
	@Autowired
	private BookDAO bookDAO;
	@Autowired
	private BookingDAO bookingDAO;

	/**
	 * 按照教师ID获取信息，falg 是否获取全部数据。false获取当前学期的数据
	 * 
	 */
	public ResultDO<List<CourSem>> getCourSemByTeacherId(String teacherId, boolean falg) {
		ResultDO<List<CourSem>> result = new ResultDO<List<CourSem>>();
		List<CourSem> list = null;
		if (falg) {
			list = this.coueSemDAO.getCourSemAllByTeacherId(teacherId);
		} else {
			Semester sem = this.semesterDAO.getNowSemester();
			list = this.coueSemDAO.getCourSemByTeacherId(teacherId, sem.getId());
		}
		if (list != null && list.size() > 0) {
			result.setResult(list);
			result.setSuccess(true);
		} else {
			result.setSuccess(false);
			result.setMessage("还没有您的数据！");
		}
		return result;
	}

	/**
	 * 添加课程教材的信息
	 */
	public synchronized Map<String, String> addBook(Book book, String teacherId, String courid) {
		Map<String, String> map = new HashMap<String, String>();
		int bookflag = 0, bcsflag = 0;
		if (null == this.bookDAO.getById(book.getIsbn13())) {
			bookflag = this.bookDAO.add(book);
			if (bookflag == 0) {
				map.put("status", "0");
				map.put("msg", "图书资源库添加失败！");
				return map;
			}
		}
		if (null == this.coueSemDAO.getByCourId(courid).get(0).getBook()) {
			bcsflag = this.coueSemDAO.addBookTeacher(courid, book.getIsbn13(), teacherId);
		} else {
			map.put("status", "0");// 已经有教材了
			map.put("msg", "其他教师已经抢先了！");
			return map;
		}
		if (bcsflag > 0) {
			map.put("status", "1");// 添加成功
			map.put("msg", "您抢在其他教师前添加了教材！");
		}
		return map;
	}

	/**
	 * 按照ID获取课程信息
	 */
	public ResultDO<CourSem> getById(int id) {
		ResultDO<CourSem> result = new ResultDO<CourSem>();
		CourSem cs = this.coueSemDAO.getById(id);
		if (null == cs) {
			result.setSuccess(false);
			result.setMessage("未获取到数据！");
		} else {
			result.setResult(cs);
			result.setSuccess(true);
		}
		return result;
	}

	/**
	 * 按照班级获取课程
	 */
	public ResultDO<List<CourSem>> getCourSemByClassId(Student student, boolean falg) {
		ResultDO<List<CourSem>> result = new ResultDO<List<CourSem>>();
		if (!falg) {
			Semester s = this.semesterDAO.getNowSemester();
			if (null != s) {
				List<CourSem> list = this.coueSemDAO.getByClassId(student.getClassId(), s.getId());
				List<Booking> bookingList = this.bookingDAO.getBySnoSemId(student.getUsername(), s.getId());
				for (Booking b : bookingList) {
					for (int i = 0; i < list.size(); i++) {
						if (list.get(i).getId() == b.getCourSemId() && b.getStatus() == 1) {
							list.remove(i);
						}
					}
				}
				if (list.size() > 0) {
					result.setResult(list);
					result.setSuccess(true);

				} else {
					result.setSuccess(false);
					result.setMessage("未导入课程，或您已选择了全部教材");
				}
			} else {
				result.setSuccess(false);
				result.setMessage("我们出现未知错误，请稍后再试！");
			}
		} else {
			List<CourSem> list = this.coueSemDAO.getAllByClassId(student.getClassId());
			if (null == list && list.size() > 0) {
				result.setSuccess(false);
				result.setMessage("未获取到您的课程信息！");
			} else {
				result.setResult(list);
				result.setSuccess(true);
			}
		}
		return result;
	}

	@Override
	public PageInfo<CourSem> getCourSemBySemId(int sem, int page) {
		List<CourSem> list = new ArrayList<CourSem>();
		PageInfo<CourSem> pi = null;

		if (sem == 0) {
			Semester s = this.semesterDAO.getNowSemester();
			PageHelper.startPage(1, 30);
			list = this.coueSemDAO.getCourSemBySemId(s.getId());
			pi = new PageInfo<CourSem>(list);
		} else if (sem == -1) {
			PageHelper.startPage(1, 30);
			list = this.coueSemDAO.getAllCourSem();

			pi = new PageInfo<CourSem>(list);
		} else {
			PageHelper.startPage(1, 30);
			list = this.coueSemDAO.getCourSemBySemId(sem);
			pi = new PageInfo<CourSem>(list);
		}

		return pi;
	}

}

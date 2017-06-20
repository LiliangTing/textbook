package com.liliang.service.impl;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liliang.dao.BookingDAO;
import com.liliang.dao.CourSemDAO;
import com.liliang.dao.SemesterDAO;
import com.liliang.entry.Booking;
import com.liliang.entry.CourSem;
import com.liliang.entry.Semester;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;
import com.liliang.service.BookingService;

@Service
public class BookingServiceImpl implements BookingService {
	@Autowired
	private BookingDAO bookingDAO;
	@Autowired
	private CourSemDAO courSemDAO;
	@Autowired
	private SemesterDAO semesterDAO;

	@Override
	public int booking(String username, int courSemId) {
		CourSem cs = this.courSemDAO.getById(courSemId);

		int i = this.bookingDAO.booking(courSemId, username,
				cs.getBook().getDiscount() == 0 ? cs.getBook().getPrice() : cs.getBook().getDiscount(), cs.getSemId(),0);
		return i;
	}

	@Override
	public ResultDO<List<Booking>> getBySnoSemId(String sno, boolean falg) {
		ResultDO<List<Booking>> result = new ResultDO<List<Booking>>();
		if (falg) {
			List<Booking> list = this.bookingDAO.getBySno(sno);
			if (list != null && list.size() > 0) {
				result.setResult(list);
				result.setSuccess(true);
			} else {
				result.setMessage("未找到数据");
				result.setSuccess(false);
			}
		} else {
			Semester s = this.semesterDAO.getNowSemester();
			List<Booking> list = this.bookingDAO.getBySnoSemId(sno, s.getId());
			if (list != null && list.size() > 0) {
				result.setResult(list);
				result.setSuccess(true);
			} else {
				result.setMessage("本学期还未预订教材！");
				result.setSuccess(false);
			}
		}
		return result;
	}

	@Override
	public int unbooking(String sno, int id) {
		Booking b = this.bookingDAO.getById(id);
		int flag = 0;
		if (b != null && b.getSno().equals(sno)&&b.getFalg()==1) {
			flag = this.bookingDAO.unbooking(id);
		}
		return flag;
	}

	public int bookingByList(Map<String, List<Student>> student) {
		Semester semster = this.semesterDAO.getNowSemester();
		int flag = 0;
		Set<String> classIds = student.keySet();
		for (String classId : classIds) {
			List<CourSem> coursemList = this.courSemDAO.getByClassId(classId, semster.getId());
			for (Student stu : student.get(classId)) {
				for (CourSem cs : coursemList) {
					int n = this.bookingDAO.booking(cs.getId(), stu.getUsername(),
							cs.getBook().getDiscount() == 0 ? cs.getBook().getPrice() : cs.getBook().getDiscount(),
							semster.getId(),1);//添加一个预订记录
					if (n == 0) {
						flag++;
					}
				}
			}
		}
		return flag;
	}

}

package com.liliang.service;

import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.liliang.entry.Book;
import com.liliang.entry.CourSem;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;

public interface CourSemService {

	/**
	 * 按照教师ID查询任课信息
	 * 
	 * @param teacherId
	 * @param falg
	 *            true查询所有，false查询当前学期
	 * @return
	 */
	ResultDO<List<CourSem>> getCourSemByTeacherId(String teacherId, boolean falg);

	/**
	 * 添加课程图书信息
	 * 
	 * @param book
	 * @param teacherId
	 * @param id
	 * @return
	 */
	public Map<String, String> addBook(Book book, String teacherId, String id);

	/**
	 * 按照ID获取课程信息
	 * 
	 * @param id
	 * @return
	 */
	public ResultDO<CourSem> getById(int id);

	/**
	 * 按照班级ID获取课程信息
	 * 
	 * @param classId
	 * @param falg
	 *            true 查询所有
	 * @return
	 */
	public ResultDO<List<CourSem>> getCourSemByClassId(Student student, boolean falg);
	/**
	 * 按照学期获取课程（教务处用）
	 * @param sem -1所有课程，0 本学期，其他按找传入参数查
	 * @return
	 */
	public PageInfo<CourSem> getCourSemBySemId(int sem,int page);
}

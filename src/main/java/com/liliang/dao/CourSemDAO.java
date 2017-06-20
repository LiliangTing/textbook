package com.liliang.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.liliang.entry.CourSem;

public interface CourSemDAO {
	/**
	 * 按照教师ID和学期号获取课程信息
	 * 
	 * @param teacherId
	 * @param semId
	 * @return
	 */
	List<CourSem> getCourSemByTeacherId(@Param("teacherId") String teacherId, @Param("semId") int semId);

	/**
	 * 按照教师ID获取全部的课程信息
	 * 
	 * @param teacherId
	 * @return
	 */
	List<CourSem> getCourSemAllByTeacherId(String teacherId);

	/**
	 * 按照教师ID和学期ID获取信息
	 * 
	 * @param teacherId
	 * @param semId
	 * @return
	 */
	List<String> getIdByTeacherId(@Param("teacherId") String teacherId, @Param("semId") int semId);

	/**
	 * 按照ID获取课程信息
	 * 
	 * @param id
	 * @return
	 */
	CourSem getById(int id);

	/**
	 * 添加图书信息
	 * 
	 * @param courId
	 * @param isbn
	 * @param teacherId
	 * @return
	 */
	int addBookTeacher(@Param("courId") String courId, @Param("isbn") String isbn,
			@Param("teacherId") String teacherId);

	/**
	 * 按照课程ID获取学期课程信息
	 * 
	 * @param courId
	 * @return
	 */
	List<CourSem> getByCourId(String courId);

	/**
	 * 按照班级获取课程
	 * 
	 * @param classId
	 * @return
	 */
	List<CourSem> getByClassId(@Param("classId") String classId, @Param("semId") int semId);

	/**
	 * 按照班级获取全部课程
	 * 
	 * @param classId
	 * @return
	 */
	List<CourSem> getAllByClassId(String classId);

	/**
	 * 按照学期获取课程
	 * 
	 * @param semId
	 * @return
	 */
	List<CourSem> getCourSemBySemId(int semId);
	/**
	 * 获取全部的课程信息
	 * @return
	 */
	List<CourSem> getAllCourSem();
}

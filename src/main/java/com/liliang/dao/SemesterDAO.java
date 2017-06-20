package com.liliang.dao;

import com.liliang.entry.Semester;

public interface SemesterDAO {

	/**
	 * 按照ID获取学期
	 * @param id
	 * @return
	 */
	Semester getSemesterById(int id);
	/**
	 * 获取任务学期
	 * @return
	 */
	Semester getNextSemester();
	/**
	 * 获取当前学期
	 * @return
	 */
	Semester getNowSemester();
	
}

package com.liliang.service;

import java.util.List;
import java.util.Map;

import com.liliang.entry.Classes;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;

public interface StudentService {
/**
 * 验证学生职务
 * @param id
 * @return
 */
	int getStudnetPost(String id);
/**
 * 按照ID获取学生信息
 * @param username
 * @return
 */
	ResultDO<Student> getById(String username);
	/**
	 * 按照班级获取学生
	 * @param list
	 * @return
	 */
	ResultDO<Map<String,List<Student>>> getByClassId(List<Classes> list);
	/**
	 * 获取全部班级
	 * @return
	 */
	ResultDO<List<Classes>> getAllClass();
	/**
	 * 按照班级获取学生
	 * @param classId
	 * @return
	 */
	ResultDO<Map<String,List<Student>>> getByClassId(String classId);
}

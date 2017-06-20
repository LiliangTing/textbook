package com.liliang.dao;

import java.util.List;

import com.liliang.entry.Student;

public interface StudentDAO {
	Student getStudentById(String id);
	
	List<Student> getStudentByClass(String classId);

}

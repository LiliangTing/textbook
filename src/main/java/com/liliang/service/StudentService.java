package com.liliang.service;

import java.util.List;
import java.util.Map;

import com.liliang.entry.Classes;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;

public interface StudentService {

	int getStudnetPost(String id);

	ResultDO<Student> getById(String username);
	
	ResultDO<Map<String,List<Student>>> getByClassId(List<Classes> list);
}

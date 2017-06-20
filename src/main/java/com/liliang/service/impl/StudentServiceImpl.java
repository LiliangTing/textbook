package com.liliang.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liliang.dao.StudentDAO;
import com.liliang.entry.Classes;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;
import com.liliang.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studnetDAO;

	public int getStudnetPost(String id) {
		Student s = this.studnetDAO.getStudentById(id);
		if (s != null) {
			return s.getPost();
		}
		return -1;
	}

	public ResultDO<Student> getById(String username) {
		ResultDO<Student> result = new ResultDO<Student>();
		Student s = this.studnetDAO.getStudentById(username);
		if (null == s) {
			result.setSuccess(false);
			result.setMessage("未获取到学生信息");
		} else {
			result.setResult(s);
			result.setSuccess(true);
		}
		return result;
	}

	@Override
	public ResultDO<Map<String, List<Student>>> getByClassId(List<Classes> list) {
		ResultDO<Map<String,List<Student>>> result=new ResultDO<Map<String,List<Student>>>();
		Map<String,List<Student>> map=new HashMap<String, List<Student>>();
		for(Classes c:list){
			List<Student> slist=this.studnetDAO.getStudentByClass(c.getId());
			map.put(c.getId(),slist);
		}
		result.setResult(map);
		return result;
	}

}

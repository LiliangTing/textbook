package com.liliang.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liliang.dao.ClassesDAO;
import com.liliang.dao.StudentDAO;
import com.liliang.entry.Classes;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;
import com.liliang.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studnetDAO;
	@Autowired
	private ClassesDAO classesDAO;

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
		ResultDO<Map<String, List<Student>>> result = new ResultDO<Map<String, List<Student>>>();
		Map<String, List<Student>> map = new HashMap<String, List<Student>>();
		for (Classes c : list) {
			List<Student> slist = this.studnetDAO.getStudentByClass(c.getId());
			map.put(c.getId(), slist);
		}
		result.setResult(map);
		return result;
	}

	@Override
	public ResultDO<List<Classes>> getAllClass() {

		ResultDO<List<Classes>> result = new ResultDO<List<Classes>>();
		List<Classes> list = this.classesDAO.getAll(1);
		if (list != null && list.size() > 0) {
			result.setResult(list);
			result.setSuccess(true);
		} else {
			result.setMessage("未查找到班级");
			result.setSuccess(false);
		}
		return result;
	}

	@Override
	public ResultDO<Map<String, List<Student>>> getByClassId(String classId) {
		ResultDO<Map<String, List<Student>>> result = new ResultDO<>();
		Map<String, List<Student>> map = new HashMap<String, List<Student>>();
		map.put(classId, this.studnetDAO.getStudentByClass(classId));
		result.setResult(map);
		result.setSuccess(true);
		return result;
	}

}

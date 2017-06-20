package com.liliang.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liliang.dao.SemesterDAO;
import com.liliang.entry.Semester;
import com.liliang.entry.result.ResultDO;
import com.liliang.service.SemesterService;

@Service
public class SemesterServiceImpl implements SemesterService {
	@Autowired
	private SemesterDAO semesterDAO;

	public ResultDO<Semester> getNowSemester() {
		ResultDO<Semester> result=new ResultDO<Semester>();
		Semester s=this.semesterDAO.getNowSemester();
		if(null==s){
			result.setSuccess(false);
			result.setMessage("未找到当前学期！");
		}else{
			result.setResult(s);
			result.setSuccess(true);
		}
		return result;
	}
}

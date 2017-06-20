package com.liliang.service;

import com.liliang.entry.Semester;
import com.liliang.entry.result.ResultDO;

public interface SemesterService {
	
	ResultDO<Semester> getNowSemester();

}

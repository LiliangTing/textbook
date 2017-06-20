package com.liliang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.liliang.entry.Classes;

public interface ClassesDAO {
	
	Classes getClassesById(String id);
	
	List<Classes> getClassByYear(@Param("type")int type,@Param("year")int year);

}

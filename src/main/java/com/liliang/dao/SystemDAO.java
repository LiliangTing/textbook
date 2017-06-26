package com.liliang.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.liliang.entry.SystemLog;

public interface SystemDAO {
	/**
	 * 获取当前的系统状态
	 * 
	 * @param now
	 * @return
	 */
	int getSystemStatus(Date now);

	/**
	 * 添加一个系统日志
	 * 
	 * @param s
	 * @return
	 */
	int add(SystemLog s);

	/**
	 * 修改一个系统状态
	 * 
	 * @param id
	 * @param time
	 * @return 影响行数
	 */
	int update(@Param("id") int id, @Param("time") Date time);

	/**
	 * 获取全部系统状态
	 * 
	 * @return
	 */
	List<SystemLog> getAll();
}

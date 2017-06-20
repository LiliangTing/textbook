package com.liliang.service;

import java.util.List;
import java.util.Map;

import com.liliang.entry.Booking;
import com.liliang.entry.Student;
import com.liliang.entry.result.ResultDO;

public interface BookingService {

	/**
	 * 预订教材
	 * @param username
	 * @param courSemId
	 * @return
	 */
	int booking(String username, int courSemId);
	/**
	 * 按照学号获取预订信息
	 * @return
	 */
	
	ResultDO<List<Booking>> getBySnoSemId(String sno,boolean falg);
	/**
	 * 退订
	 * @param sno
	 * @param id
	 * @return
	 */
	int unbooking(String sno,int id);
	/**
	 * 批量订购教材
	 * @param student string是班级编号
	 * @return
	 */
	public int bookingByList(Map<String,List<Student>> student);
	
	

}

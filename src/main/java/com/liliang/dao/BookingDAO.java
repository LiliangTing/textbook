package com.liliang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.liliang.entry.Booking;

public interface BookingDAO {

	int booking(@Param("courSemId") int courSemId, @Param("sno") String sno, @Param("discount") float discount,
			@Param("semId") int semId,@Param("flag")int flag);

	List<Booking> getBySnoSemId(@Param("sno") String sno, @Param("semId") int semId);

	List<Booking> getBySno(String sno);

	int unbooking(int id);

	Booking getById(int id);

}

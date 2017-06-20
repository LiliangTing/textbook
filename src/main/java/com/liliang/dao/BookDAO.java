package com.liliang.dao;

import java.math.BigDecimal;

import org.apache.ibatis.annotations.Param;

import com.liliang.entry.Book;

public interface BookDAO {

	Book getById(String isbn13);

	int add(Book book);

	int setDiscount(@Param("isbn") String isbn, @Param("discount") BigDecimal discount);

}

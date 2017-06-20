package com.liliang.service;

import java.math.BigDecimal;

import com.liliang.entry.Book;
import com.liliang.entry.result.ResultDO;

public interface BookService {
	int addBook(Book book);
	
	ResultDO<Book> getById(String isbn);
	
	int setDiscount(String isbn,BigDecimal discount);

}

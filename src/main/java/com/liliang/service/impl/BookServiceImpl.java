package com.liliang.service.impl;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liliang.dao.BookDAO;
import com.liliang.entry.Book;
import com.liliang.entry.result.ResultDO;
import com.liliang.service.BookService;
@Service
public class BookServiceImpl implements BookService {
@Autowired
	private BookDAO bookDAO;
	
	@Override
	public int addBook(Book book) {
		return this.bookDAO.add(book);
		
	}

	@Override
	public ResultDO<Book> getById(String isbn) {
		ResultDO<Book> result=new ResultDO<Book>();
		
		Book b=this.bookDAO.getById(isbn);
		if(b==null){
			result.setMessage("未找到该书籍！");
			result.setSuccess(false);
		return result;
		}
		result.setResult(b);
		result.setSuccess(true);
		return result;
	}

	@Override
	public int setDiscount(String isbn, BigDecimal discount) {
		return this.bookDAO.setDiscount(isbn, discount);
		
	}

}

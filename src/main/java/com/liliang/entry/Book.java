package com.liliang.entry;

import java.util.Arrays;

/**
 * Created by lilia on 2017/5/10. 教材表
 */
public class Book {
	// isbn
	private String isbn13;
	// 书名
	private String title;
	// 出版社
	private String publisher;
	// 作者
	private String author;
	// 定价
	private float price;
	// 售价
	private float discount;
	// 简介
	private String summary;
	// 序言
	private String catalog;

	public String getIsbn13() {
		return isbn13;
	}

	public void setIsbn13(String isbn13) {
		this.isbn13 = isbn13;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {

		this.author = author;
	}

	public void setAuthor(String[] author) {

		this.author = author[0];
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getDiscount() {
		return discount;
	}

	public void setDiscount(float discount) {
		this.discount = discount;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getCatalog() {
		return catalog;
	}

	public void setCatalog(String catalog) {
		this.catalog = catalog;
	}

	@Override
	public String toString() {
		return "Book [isbn13=" + isbn13 + ", title=" + title + ", publisher=" + publisher + ", author=" + author
				+ ", price=" + price + ", discount=" + discount + ", summary=" + summary + ", catalog=" + catalog + "]";
	}

}

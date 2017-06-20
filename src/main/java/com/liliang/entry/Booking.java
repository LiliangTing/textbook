package com.liliang.entry;

import java.util.Date;

/**
 * Created by lilia on 2017/5/10. 预订信息
 */
public class Booking {
	private int id;
	private String sno;
	private int courSemId;
	private Date time;
	private float discount;
	private int semId;
	private int falg;
	private int status;

	private Semester sem;
	private Student student;
	private CourSem bookCourSem;

	public int getSemId() {
		return semId;
	}

	public int getFalg() {
		return falg;
	}

	public void setFalg(int falg) {
		this.falg = falg;
	}

	public void setSemId(int semId) {
		this.semId = semId;
	}

	public Semester getSem() {
		return sem;
	}

	public void setSem(Semester sem) {
		this.sem = sem;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public int getCourSemId() {
		return courSemId;
	}

	public void setCourSemId(int courSemId) {
		this.courSemId = courSemId;
	}

	public CourSem getBookCourSem() {
		return bookCourSem;
	}

	public void setBookCourSem(CourSem bookCourSem) {
		this.bookCourSem = bookCourSem;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public float getDiscount() {
		return discount;
	}

	public void setDiscount(float discount) {
		this.discount = discount;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}

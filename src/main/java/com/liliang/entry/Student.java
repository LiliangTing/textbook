package com.liliang.entry;

/**
 * Created by lilia on 2017/5/10. 基本信息
 */
public class Student extends Basis {

	private String sno;
	private String classId;
	private int post;

	private Classes classes;

	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public int getPost() {
		return post;
	}

	public void setPost(int post) {
		this.post = post;
	}

}

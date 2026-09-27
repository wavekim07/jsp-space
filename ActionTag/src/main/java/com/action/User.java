package com.action;

public class User {
	private String uid, pwd, name;
	private int point;
	// useBean에서는 디폴트생성자를 사용함
	public User() {}
	
	public User(String uid, String pwd, String name, int point) {
		super();
		this.uid = uid;
		this.pwd = pwd;
		this.name = name;
		this.point = point;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
}

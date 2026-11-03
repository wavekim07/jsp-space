package com.travel.dto;

public class MemberDTO {
	private String mid, name, pwd, email, telno, role, regDate;

	public MemberDTO(String mid, String name, String pwd, String email, 
			String telno, String role, String regDate) {
		super();
		this.mid = mid;
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.telno = telno;
		this.role = role;
		this.regDate = regDate;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelno() {
		return telno;
	}

	public void setTelno(String telno) {
		this.telno = telno;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
}

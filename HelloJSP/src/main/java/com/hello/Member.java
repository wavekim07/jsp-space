package com.hello;

public class Member {
	private String name;
	private double w, h, bmi;
	public Member(String name, double w, double h) {
		super();
		this.name = name;
		this.w = w;
		this.h = h;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getW() {
		return w;
	}
	public void setW(double w) {
		this.w = w;
	}
	public double getH() {
		return h;
	}
	public void setH(double h) {
		this.h = h;
	}
	public double getBmi() {
		return bmi;
	}
	public void setBmi(double bmi) {
		this.bmi = bmi;
	}
	
}

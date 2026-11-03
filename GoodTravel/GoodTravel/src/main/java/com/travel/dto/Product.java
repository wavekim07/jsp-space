package com.travel.dto;

import java.util.Date;

// product 테이블과 매핑되는 DTO 클래스
public class Product {
	private int productID;    
	private String title;    
	private String region;    
	private int price;    
	private String period;    
	private String description;    
	private String image;    
	private Date regDate;
	public Product() {} 
	public Product(int productID, String title, String region, int price, String period, String description,
			String image, Date regDate) {
		super();
		this.productID = productID;
		this.title = title;
		this.region = region;
		this.price = price;
		this.period = period;
		this.description = description;
		this.image = image;
		this.regDate = regDate;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
}


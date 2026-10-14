package com.bookshop;

// DB에서 검색한 결과를 담는 랩퍼클래스. 데이터 클래스
// DTO 클래스는 테이블의 컬럼과 동일한 멤버변수를 가짐
public class BookDTO {
	private int bookid;
	private String title, pubdate;
	private int price;
	private double rating;
	public BookDTO(int bookid, String title, String pubdate, int price, double rating) {
		super();
		this.bookid = bookid;
		this.title = title;
		this.pubdate = pubdate;
		this.price = price;
		this.rating = rating;
	}
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPubdate() {
		return pubdate;
	}
	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	
}

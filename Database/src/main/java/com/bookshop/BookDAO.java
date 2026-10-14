package com.bookshop;

import java.sql.*;
import java.util.ArrayList;

public class BookDAO {
	// 1. 도서를 book 테이블에 추가하기(INSERT) : Create 기능을 담당 
	public boolean addNewBook(String title, String pubdate, int price, double rating) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;  // insert 실행 결과 값 
		try {
			conn = DBUtil.getConnection(); 
			String sql = "insert into book (title, pubdate, price, rating) values(?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, title);
			stmt.setString(2, pubdate);
			stmt.setInt(3, price);
			stmt.setDouble(4, rating);
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally { // 해제(DB 관련 객체들을 삭제)
			DBUtil.close(stmt, conn);
		}
		return result > 0;
	}
	// 제목으로 책을 검색하는 함수
	public BookDTO findBookByTitle(String title) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		BookDTO book = null; // 검색된 책 하나를 저장하는 객체  
		try {
			conn = DBUtil.getConnection(); 
			String sql = "select * from book where title = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, title);
			rs = stmt.executeQuery(); // select 실행해서 레코드 집합을 가져옴 
			while (rs.next()) { // 검색된 레코드 집합에서 현재 레코드를 가지옴 
				book = new BookDTO(rs.getInt("bookid"), rs.getString("title"),
						rs.getString("pubdate"),
						rs.getInt("price"),
						rs.getDouble("rating"));
				break;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally { // 해제(DB 관련 객체들을 삭제)
			DBUtil.close(rs, stmt, conn);
		}
		return book;
	}		
	// book 테이블의 모든 레코드들을 검색한 다음 BookDTO 객체 리스트를 생성해서 반환
	public ArrayList<BookDTO> getAllBooks() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<BookDTO> books = new ArrayList<>(); // 검색된 책 하나를 저장하는 객체  
		try {
			conn = DBUtil.getConnection(); 
			String sql = "select * from book";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery(); // select 실행해서 레코드 집합을 가져옴 
			while (rs.next()) { // 검색된 레코드 집합에서 현재 레코드를 가지옴 
				BookDTO book = new BookDTO(rs.getInt("bookid"), rs.getString("title"),
						rs.getString("pubdate"),
						rs.getInt("price"),
						rs.getDouble("rating"));
				books.add(book);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally { // 해제(DB 관련 객체들을 삭제)
			DBUtil.close(rs, stmt, conn);
		}
		return books;  // 검색된 책들의 리스트 반환 
	}
	// 도서 삭제 함수
	public boolean deleteBook(int bookid) {
		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;  // insert 실행 결과 값 
		try {
			conn = DBUtil.getConnection(); 
			String sql = "delete from book where bookid = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, bookid);
			result = stmt.executeUpdate();  // insert, delete, update 실행 
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally { // 해제(DB 관련 객체들을 삭제)
			DBUtil.close(stmt, conn);
		}
		return result > 0;  // true/false

	}
}




























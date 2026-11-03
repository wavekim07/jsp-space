package com.travel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.travel.dto.MemberDTO;
import com.travel.util.DBUtil;

// member 테이블에 대한 CRUD 기능을 제공하는 클래스 
public class MemberDAO {
	public int signUp(String mid, String name, String pwd, String email,
						String telno, String role, String regDate) {
		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			String sql = "insert into member values (?,?,?,?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, mid);
			stmt.setString(2, name);
			stmt.setString(3, pwd);
			stmt.setString(4, email);
			stmt.setString(5, telno);
			stmt.setString(6, role);
			stmt.setString(7, regDate);
			result = stmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(stmt, conn);
		}
		return result;
	}
	// 회원아이디 중복 체크
	public boolean isExists(String mid) {
		boolean isIdFound = false;
		String sql = "select mid from member where mid = ?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;  // select의 결과를 받는 것
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, mid);
			rs = stmt.executeQuery();
			if (rs.next()) isIdFound = true;
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return isIdFound;
	}
	public MemberDTO login(String mid, String pwd) {
		MemberDTO member = null;
		String sql = "select * from member where mid = ? and pwd = ?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;  // select의 결과를 받는 것
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, mid);
			stmt.setString(2, pwd);
			rs = stmt.executeQuery();
			if (rs.next()) {
				member = new MemberDTO(rs.getString(1), rs.getString(2), 
						rs.getString(3), rs.getString(4), rs.getString(5), 
						rs.getString(6), rs.getString(7));
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return member;
	}

}

























package com.bookshop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// 데이터베이스 연결 및 해제를 처리하는 유틸리티 클래스(정적 클래스)
public class DBUtil {
	private static final String URL = "jdbc:mysql://localhost:3306/moviedb"; // MySQL 서버와 DB 
	private static final String ID = "root";
	private static final String PASS = "0000";
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";  // JDBC Driver 이름	
	
	// DB 연결 함수
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName(DRIVER);
		return DriverManager.getConnection(URL, ID, PASS);
	}
	// DB 연결 해제
	public static void close(AutoCloseable... acs) {
		for (AutoCloseable ac : acs) {
			try {
				if (ac != null) ac.close();  // conn, stmt, rs
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dbconn.jsp</title>
</head>
<body>
	<h1>Database Connection Test</h1>
	<%
	//1. Database 연결 정보 설정
	final String URL = "jdbc:mysql://localhost:3306/moviedb"; // MySQL 서버와 DB 
	final String ID = "root";
	final String PASS = "0000";
	final String DRIVER = "com.mysql.cj.jdbc.Driver";  // JDBC Driver 이름
	//2. Connection 객체 생성
	Connection conn = null;
	boolean isConn = false;
	//3. DB 연결하기(try ~ catch 구문으로 처리)
	try {
		//4. JDBC 드라이버 로딩
		Class.forName(DRIVER);  // 드라이버 프로그램을 메모리에 로딩
		out.println("<p>JDBC 드라이버 로딩 성공</p>");
		//5. 데이터베이스 연결
		conn = DriverManager.getConnection(URL, ID, PASS); 
		isConn = true;
		out.println("<p>moviedb 데이터베이스 연결 성공</p>");
		// 데이터베이스에 접근해서 데이터 처리하기
		/*
		String uid = "peter";
		String name = "Peter Hong";
		String email = "peter@bbc.com";
		int point = 45000;
		// SQL 구문 작성하기
		String sql = "insert into user values ('" + uid + "','" + name + 
														"','" + email + "'," + point +")";
		//out.println("<p>SQL : " + sql + "</p>");
		// SQL 실행하기 : SQL Injection 이라는 보안 오류
		Statement stmt = conn.createStatement();
		int row = stmt.executeUpdate(sql);  // SQL 구문 실행 */
		String sql = "insert into book values (?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "010");
		pstmt.setString(2, "Backend Web");
		pstmt.setString(3, "2026/03/28");
		pstmt.setInt(4, 29000);
		pstmt.setDouble(5, 4.3);
		int row = pstmt.executeUpdate();
		out.println("<p>Result row : " + row + "</p>");
	} catch (ClassNotFoundException e) {
		out.println("<p>JDBC 드라이버 로딩 실패</p>");
	} catch (SQLException e) {
		out.println("<p>moviedb 데이터베이스 연결 실패</p>");
	} finally {
		//6. 자원 해제
		if (conn != null) {
			try {
				conn.close();  // DB 연결 해제
				out.println("<p>moviedb 데이터베이스 연결 해제</p>");
			} catch (SQLException e) {
				out.println("<p>moviedb 데이터베이스 연결 해제 실패</p>");
				e.printStackTrace(new PrintWriter(out));
			}
		}
	}
	%>
</body>
</html>












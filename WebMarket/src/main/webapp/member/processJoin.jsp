<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 자료db에 연동하기</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String user="root";
		String password="1234";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String insertSql = "insert into membertbl(number, id, pwd, name, email) values(null, ?, ?, ?, ?)";
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");		
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");		
		String email = request.getParameter("email");
		
		PreparedStatement pstmt = con.prepareStatement(insertSql); //연결된 상태 위에 sql문을 올리기
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, email);
		
		pstmt.executeUpdate();
		response.sendRedirect("/WebMarket/welcome.jsp");
		
		
		
		
		
		
		
		
		
		
		
		
	%>
</body>
</html>
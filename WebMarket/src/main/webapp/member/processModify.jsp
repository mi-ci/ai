<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
 	String n1 = request.getParameter("number");
 	Integer n2 = Integer.valueOf(n1);
 	int number = n2.intValue();
 	
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/webmarket?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
	String user="root";
	String password="1234";
	Connection con = DriverManager.getConnection(url, user, password);
	
	String updateSql = "update membertbl set id=?, pwd=?, name=?, email=? where number=?";
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");		
	String pw = request.getParameter("pw");
	String name = new String(request.getParameter("name").getBytes("8859_1"),"utf-8");		
	String email = request.getParameter("email");
	
	PreparedStatement pstmt = con.prepareStatement(updateSql); //연결된 상태 위에 sql문을 올리기
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, name);
	pstmt.setString(4, email);
	pstmt.setInt(5, number);
	
	pstmt.executeUpdate();
	response.sendRedirect("/WebMarket/member/memberInfo.jsp");
	
	%>
</body>
</html>
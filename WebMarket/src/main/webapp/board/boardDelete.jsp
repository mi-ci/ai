<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	 	String n1 = request.getParameter("num");
	 	Integer n2 = Integer.valueOf(n1);
	 	int num = n2.intValue();
	 	
	 	Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/webmarket?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String user="root";
		String password="1234";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String deleteSql = "delete from boardtbl where num=?";
		PreparedStatement pstmt = con.prepareStatement(deleteSql);
		pstmt.setInt(1, num);
		pstmt.executeUpdate();
		response.sendRedirect("boardList.jsp");
	%>
	
</body>
</html>
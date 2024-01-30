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
	 	
		request.setCharacterEncoding("utf-8");
		String title = new String(request.getParameter("title").getBytes("8859_1"),"utf-8");
		String content = new String(request.getParameter("content").getBytes("8859_1"),"utf-8");
		String writer = new String(request.getParameter("writer").getBytes("8859_1"),"utf-8");

	 	Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/webmarket?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String user="root";
		String password="1234";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String updateSql = "update boardtbl set title=?, content=?, writer=?, reg_date=curdate() where num=?";
		PreparedStatement pstmt = con.prepareStatement(updateSql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, writer);
		pstmt.setInt(4, num);
		pstmt.executeUpdate();
		response.sendRedirect("boardList.jsp");
	%>

	
</body>
</html>
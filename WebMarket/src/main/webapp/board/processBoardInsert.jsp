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
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
		String user="root";
		String password="1234";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String updateSql = "insert into boardtbl values(null,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(updateSql);
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		String date = request.getParameter("date");
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		String name = (String) session.getAttribute("name");
		if(name != null){
			pstmt.setString(3, name);
		}
		else{
			pstmt.setString(3, writer+"(비회원)");			
		}
		pstmt.setString(4, date);
		pstmt.setInt(5, 1);
		pstmt.executeUpdate();
		response.sendRedirect("boardList.jsp");
	%>
	
</body>
</html>
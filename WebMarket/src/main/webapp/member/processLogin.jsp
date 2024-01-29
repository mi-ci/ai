<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
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
	
	String selectSql = "select * from membertbl where id=?";
	PreparedStatement pstmt = con.prepareStatement(selectSql);
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");		
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	if(rs.next() && pw.equals(rs.getString("pwd"))){
		session.setAttribute("id", rs.getString("id"));
		session.setAttribute("name", rs.getString("name"));
		response.sendRedirect("loginSucess.jsp");
	}
	else if(id.isBlank() || pw.isBlank()){
		response.sendRedirect("login.jsp");		
	}
	else{		
		response.sendRedirect("loginFail.jsp");
		//out.print("<script>alert('id또는 비밀번호가 틀립니다.'); location.href = 'login.jsp';</script>");
	}
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>몬스터 리스트</title>
<style>
a{
text-decoration:none;
color:black;
}</style>
</head>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
	String user="root";
	String password="1234";
	Connection con = DriverManager.getConnection(url, user, password);
	
	String selectSql = "select nameko, level from mob3 order by level";
	PreparedStatement pstmt = con.prepareStatement(selectSql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs = pstmt.executeQuery();
	int flag = 0;
	int level;
	rs.last();
	int row = rs.getRow();
	rs.beforeFirst();
	%>
	<h2><%=row %>개의 몬스터</h2>
	<%
	while(rs.next()!=false){
		level=rs.getInt("level");
		if(level<=20){
			
		}
		if(level>100 ){
			rs.next();
		}
	%>
	
	<a href="mob3.jsp?nameko=<%=rs.getString("nameko")%>"><%=rs.getString("nameko")%> <%=rs.getInt("level") %></a>
	<br>
	<%
	}
	%>
	
	
</body>
</html>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청담당</title>
</head>
<body>
	<h3>이 파일은 first.jsp입니다. 요청담당 - 주문 받는 곳</h3>
	<jsp:forward page="second.jsp">
		<jsp:param value="<%= new java.util.Date() %>" name="date"/>
		<jsp:param value="10" name="age"/>
		<jsp:param value= '<%= URLEncoder.encode("국제컴")%>' name="school"/>
		<jsp:param value='<%= URLEncoder.encode("홍길동") %>' name="name"/>
		<jsp:param value='<%= URLEncoder.encode("장우진") %>' name="name2"/>
	</jsp:forward>
		<h4>이 곳은 실행 안되는 곳</h4>
</body>
</html>
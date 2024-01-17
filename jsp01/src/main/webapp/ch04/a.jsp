<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="b.jsp">
		<jsp:param value='<%= URLEncoder.encode("국어") %>' name="kor"/>
		<jsp:param value='<%= URLEncoder.encode("100") %>' name="score"/>
	</jsp:forward>
</body>
</html>
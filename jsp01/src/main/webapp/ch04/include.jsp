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
	<h1>요청 받는 곳</h1>
	<jsp:include page="include_data.jsp">
		<jsp:param value='<%= URLEncoder.encode("국어") %>' name="kor"/>
		<jsp:param value='100' name="score"/>
	</jsp:include>
	<h1>요청 완료</h1>
</body>
</html>
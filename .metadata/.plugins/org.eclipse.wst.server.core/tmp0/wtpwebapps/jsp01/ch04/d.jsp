<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>d</title>
</head>
<body>
	<jsp:include page="e.jsp">
		<jsp:param value='<%= URLEncoder.encode("홍길동") %>' name="name"/>
		<jsp:param value='010-123-4567' name="tel"/>
		<jsp:param value='<%= URLEncoder.encode("10살") %>' name="age"/>
	</jsp:include>
</body>
</html>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e</title>
</head>
<body>
	<h3>
		e의 페이지
		<br>
		<br>
		<%= URLDecoder.decode(request.getParameter("name")) %>
		<br>
		<%= request.getParameter("tel") %>
		<br>
		<%= URLDecoder.decode(request.getParameter("age")) %>
	</h3>
</body>
</html>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답 담당</title>
</head>
<body>
	<h3> second.jsp 파일 - 응답하는 곳 - 주문에 대답하기</h3>
	<h3> <%= request.getParameter("date") %></h3>
	<h3> <%= request.getParameter("age") %></h3>
	<h3> 
		<% String school =  request.getParameter("school"); %>
		<%= java.net.URLDecoder.decode(request.getParameter("school"))%>
	</h3>
	<h3> 
		<% String name = request.getParameter("name"); %>
		<%= java.net.URLDecoder.decode(request.getParameter("name"))%>
	</h3>
	<h3> 
		<% String name2 = request.getParameter("name2"); %>
		<%= java.net.URLDecoder.decode(request.getParameter("name2"))%>의 웹사이트입니다!
	</h3>
	
	
</body>
</html>
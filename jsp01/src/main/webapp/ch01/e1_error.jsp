<%@ page isErrorPage = "true" %>
<%@ page import = "java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 처리하는 곳</title>
</head>
<body>
	<h3>잘못된 연산을 수행하였습니다</h3>
	<h3>다시 확인하세요</h3>
	<% Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
	%>
	<h4><%= year %></h4>
	
</body>
</html>
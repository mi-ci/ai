<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="mb" class="jsp01.MemberBean" scope="page"/>
	<p> 아이디 : <%= mb.getId() %>
	<p> 이  름 : <%= mb.getName() %>
	
	<%
		mb.setId(20241210);
		mb.setName("이순신");
	%>
	<br>
	<br>
	<p> 아이디 : <%= mb.getId() %>
	<p> 이  름 : <%= mb.getName() %>
</body>
</html>
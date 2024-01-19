<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>login.jsp 파일입니다</h3>
	<jsp:useBean id="login" class="jsp01.Login"></jsp:useBean>
	
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	
	<%
		login.setId(id);
		login.setPw(pw);
	%>
	
	<%
		String jid = login.getId();
		String jpw = login.getPw();
	%>
	
	<h3>
	<%= jid %>	
	</h3>
	
	<h3>
	<%= pw %>	
	</h3>
	
	
	
</body>
</html>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="c.jsp">
		<jsp:param value= '<%= request.getParameter("kor") %>' name="kor2"/>
		<jsp:param value= '<%= request.getParameter("score") %>' name="score2"/>
	</jsp:include>
</body>
</html>
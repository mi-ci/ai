<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> Board 자바 자료 입력하고 출력하기</h1><br>
	<jsp:useBean id="b" class = "jsp01.Board" scope = "page"></jsp:useBean>
	<%
		b.setbNo(1);
		b.setbTitle("게시판제목");
		b.setbContent("게시판내용");
		b.setWriter("홍길동");
	%>
	<p> <%= b.getbNo()%> <%= b.getbTitle()%> <%= b.getbContent()%> <%= b.getWriter()%>
	
	<%
		b.setbNo(2);
		b.setbTitle("자바빈즈");
		b.setbContent("자바와 jsp연결");
		b.setWriter("이순신");
	%>
	<p> <%= b.getbNo()%> <%= b.getbTitle()%> <%= b.getbContent()%> <%= b.getWriter()%>
	
</body>
</html>
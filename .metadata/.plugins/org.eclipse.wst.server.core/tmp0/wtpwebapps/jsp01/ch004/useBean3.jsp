<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="p" class="jsp01.Person" scope="page"></jsp:useBean>
	<h1>Person 자바 자료 입력하고 출력하기</h1><br>
	<p> 이름 나이 주소
	<%
		p.setName("이수진");
		p.setAge(25);
		p.setAddr("서울");
	%>
	<p> <%= p.getName() %> <%= p.getAge() %> <%= p.getAddr() %> 
	
	<%
		p.setName("정수진");
		p.setAge(27);
		p.setAddr("인천");
	%>
	<p> <%= p.getName() %> <%= p.getAge() %> <%= p.getAddr() %> 
	
	
</body>
</html>
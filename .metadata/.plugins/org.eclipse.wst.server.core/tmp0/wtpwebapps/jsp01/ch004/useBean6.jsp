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

	<jsp:setProperty property="bNo" name="b" value="1"/>
	<jsp:setProperty property="bTitle" name="b" value="게시판제목"/>
	<jsp:setProperty property="bContent" name="b" value="게시판내용"/>
	<jsp:setProperty property="writer" name="b" value="게시판내용"/>
	
	<jsp:getProperty property="bNo" name="b"/>
	<jsp:getProperty property="bTitle" name="b"/>
	<jsp:getProperty property="bContent" name="b"/>
	<jsp:getProperty property="writer" name="b"/>
	<br>
	<jsp:setProperty property="bNo" name="b" value="2"/>
	<jsp:setProperty property="bTitle" name="b" value="자바빈즈"/>
	<jsp:setProperty property="bContent" name="b" value="자바와 jsp연결"/>
	<jsp:setProperty property="writer" name="b" value="이순신"/>
	
	<jsp:getProperty property="bNo" name="b"/>
	<jsp:getProperty property="bTitle" name="b"/>
	<jsp:getProperty property="bContent" name="b"/>
	<jsp:getProperty property="writer" name="b"/>
	
	
	
	
	
	
</body>
</html>
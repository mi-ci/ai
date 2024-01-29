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
	<jsp:include page="../menu.jsp"></jsp:include>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">로그인</h1>		
		</div>
	</div>
	
	<div class="container">

		<form action="processLogin.jsp" name="login" class="form-horizontal" method="post">
		
			<div class="form-group row">
				<label class="col-sm-2 f1">아이디</label>
				<div class="col-sm-5 f1">
					<input type="text" name="id" id="id" class="form-control" placeholder="아이디입력">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 f1">패스워드</label>
				<div class="col-sm-4 f1">
					<input type="password" name="pw" id="pw" class="form-control" placeholder="비밀번호입력">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset col-sm-10 col text-center">
					<input type="submit" class = "btn btn-primary" value="로그인">
					<a href="join.jsp" class = "btn btn-danger">회원가입</a>			
				</div>
			</div>
			
		</form>
	</div>
	<div class="container">
		<p><a href="Products.jsp" class="btn btn-secondary"> &laquo; 상품목록</a>
	</div>
			
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
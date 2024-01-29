<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<nav class ="navbar navbar-expand navbar-dark bg-dark"> 
	 	<div class= "container">
	 		<div class = "navbar-header">
	 			<a class = "navbar-brand" href="/WebMarket/welcome.jsp">Home</a>
	 			<a class = "navbar-brand" href="${pageContext.request.contextPath}/Products.jsp">상품목록</a>
	 			<a class = "navbar-brand" href="${pageContext.request.contextPath}/board/boards.jsp">게시판</a>
	 			<a class = "navbar-brand" href="${pageContext.request.contextPath}/addProduct.jsp">상품등록</a>
	 			<a class = "navbar-brand" href="${pageContext.request.contextPath}/deleteProject2.jsp">상품삭제</a>
	 		</div>
	 		<div class = "navbar-header">
	 			<a class = "navbar-brand" href="${pageContext.request.contextPath}/member/memberInfo.jsp">회원정보</a>
	 			<% 
	 				String login = (String) session.getAttribute("id");
	 				String name = (String) session.getAttribute("name");
	 				String loginok = "로그인";
	 				if(login!=null){
	 					loginok=name+"님";
	 			%>
		 			<a class="text-white"><%=loginok %></a>
		 			<a class = "navbar-brand" href="${pageContext.request.contextPath}/member/logout.jsp">로그아웃</a>
		 			
	 			<%
	 				}
	 				else{
			 	%>
		 			<a class = "navbar-brand" href="${pageContext.request.contextPath}/member/login.jsp"><%=loginok %></a>
			 	<%		
	 				}
	 			%>
	 			<a class = "navbar-brand" href="${pageContext.request.contextPath}/cart.jsp">장바구니</a>
	 		</div>
		</div>
	</nav>
	
</body>
</html>
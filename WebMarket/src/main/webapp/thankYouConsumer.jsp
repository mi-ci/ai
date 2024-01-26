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
	<jsp:include page="menu.jsp"></jsp:include>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">주문완료</h1>		
		</div>
	</div>
	<%	
		String vdate ="";
		String vcartid ="";
		
		Cookie[] c = request.getCookies();
		if(c!=null){
			for(int i=0; i<c.length; i++){
				if(c[i].getName().equals("sShippingDate")){
					vdate = URLDecoder.decode(c[i].getValue(),"utf-8");
				}
				if(c[i].getName().equals("sCartId")){
					vcartid = URLDecoder.decode(c[i].getValue(), "utf-8");
				}
			}
		}
	%>
	<div class="container">
		<h2 class="alert alert-danger">주문해 주셔서 감사합니다.</h2>
		<p> 주문은 <%=vdate %>에 배송될 예정입니다.
		<p> 주문번호는 <%=vcartid %>
	</div>
	<div class="container">
		<p><a href="Products.jsp" class="btn btn-secondary"> &laquo; 상품목록</a>
	</div>
			
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		for(int i=0; i<c.length; i++){
			c[i].setMaxAge(0);
			response.addCookie(c[i]);
		}
	%>
	
</body>
</html>
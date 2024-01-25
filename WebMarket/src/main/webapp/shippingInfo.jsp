<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">배송정보</h1>		
		</div>
	</div>
	
	<%
		String cartId = request.getParameter("cartId");
	%>
	
	<div class="container">
		<form action="processShipping.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId") %>">
			
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-4">
					<input name="name" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">배송일</label>
				<div class="col-sm-4">
					<input name="shippingDate" type="text" class="form-control"> (yyyy/mm/dd)
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">국가명</label>
				<div class="col-sm-4">
					<input name="country" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-4">
					<input name="zipCode" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-7">
					<input name="addressName" type="text" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary">이전</a>
					<input type="submit" value="등록" class="btn btn-primary">
					<a href="checkOutCancelled.jsp" class="btn btn-danger">취소</a>
				</div>
			</div>
			
			
			
		</form>
	</div>




	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
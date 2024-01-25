<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@ page import = "java.util.ArrayList" %>

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
			<h1 class="display-3">장바구니</h1>		
		</div>
	</div>
	<%
		String cartId = session.getId();
	%>
	
	<div class="container">
		<div class="row">
			<table width=100%>
				<tr>
					<td align="left"><a href="delete.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-success">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top:50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
					int sum = 0;
					ArrayList<Product> cartlist = (ArrayList<Product>) session.getAttribute("cartlist");
					
					if(cartlist==null){
						cartlist = new ArrayList<Product>(); 
					}
					
					for(int i=0; i<cartlist.size(); i++){
						Product p = cartlist.get(i);
						int total = p.getUnitPrice()*p.getQuantity();
						sum=sum+total;
				%>
				<tr>
					<td><%=p.getProductId() %></td>
					<td><%=p.getUnitPrice() %></td>
					<td><%=p.getQuantity() %></td>
					<td><%=total %></td>
					<td><a href="removeCart.jsp?id=<%=p.getProductId()%>">삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<td></td>
					<td></td>
					<th>총계</th>
					<th><%=sum %></th>
					<td></td>
				</tr>
			</table>
			<a href="Products.jsp" class="btn btn-secondary">쇼핑계속하기</a>
		</div>
	</div>
	
	


	
	
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository" %>
<%@ page import="dto.Product" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String cartId = session.getId();
		
		String vCartId = "";
		String vName = "";
		String vShippingDate="";
		String vCountry="";
		String vZipCode="";
		String vAddressName="";
		
		Cookie[] c = request.getCookies();
		
		if(c!=null){
			for(int i=0; i<c.length; i++){				
				if (c[i].getName().equals("sCartId")){
					vCartId=URLDecoder.decode(c[i].getValue(),"utf-8");
				}
				if (c[i].getName().equals("sName")){
					vName=URLDecoder.decode(c[i].getValue(),"utf-8");
				}
				if (c[i].getName().equals("sShippingDate")){
					vShippingDate=URLDecoder.decode(c[i].getValue(),"utf-8");
				}
				if (c[i].getName().equals("sCountry")){
					vCountry=URLDecoder.decode(c[i].getValue(),"utf-8");
				}
				if (c[i].getName().equals("sZipCode")){
					vZipCode=URLDecoder.decode(c[i].getValue(),"utf-8");
				}
				if (c[i].getName().equals("sAddressName")){
					vAddressName=URLDecoder.decode(c[i].getValue(),"utf-8");
				}
			}
		}
	%>
	<jsp:include page="menu.jsp"></jsp:include>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">주문정보</h1>		
		</div>
	</div>
	
	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
			<strong>배송주소</strong><br>
			성명 : <%=vName %><br>
			우편번호 : <%=vZipCode%><br>
			주소 : <%=vAddressName %><br>
			(<%=vCountry %>)<br>
			</div>
			<div class="col-4" align="right">
				<p><em>배송일 : <%=vShippingDate %></em>
			</div>
		<div>
			<table class="table-hover text-center">
				<tr>
					<th class="text-center">상품명</th>
					<th class="text">수량</th>
					<th class="text">가격</th>
					<th class="text">소계</th>
				</tr>
				<%	
					int total = 0;
					ArrayList<Product> cartlist = (ArrayList<Product>) session.getAttribute("cartlist");
					if(cartlist==null){
						response.sendRedirect("Products.jsp");
					}
					for(int i = 0; i<cartlist.size(); i++){
						Product p = cartlist.get(i);
						total = total + p.getQuantity()*p.getUnitPrice();
				%>
				<tr>
					<td class="text-center"><%=p.getPname() %></td>
					<td class="text-center"><%=p.getQuantity()%></td>
					<td class="text-center"><%=p.getUnitPrice()%></td>
					<td class="text-center"><%=p.getQuantity()*p.getUnitPrice()%></td>
				</tr>
				
				<%
					}
				%>
				<tr>
					<td></td>
					<td></td>
					<th class="text-primary">총액</th>
					<th class="text-danger"><%=total %></th>
				</tr>
			</table> 
		</div>
		</div>
		<div>
			<a href="shippingInfo.jsp?cartId=<%=cartId%>" class="btn btn-info">배송정보</a>
			<a href="thankYouConsumer.jsp" class="btn btn-success">주문완료</a>
			<a href="checkOutCancelled.jsp" class="btn btn-danger">주문취소</a>
		</div>
	</div>
	
	
	
	
	
	
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processAddProject.jsp 상품등록 페이지</title>
</head>
<body>
	<jsp:useBean id="pr" class="dao.ProductRepository"></jsp:useBean>
	<%
		request.setCharacterEncoding("utf-8");
		String productId = request.getParameter("productId");
		String pname = request.getParameter("pname");
		String unitPrice = request.getParameter("unitPrice");
		String description = request.getParameter("description");
		String manufacturer = request.getParameter("manufacturer");
		String category = request.getParameter("category");
		String unitsInStock = request.getParameter("unitsInStock");
		String condition = request.getParameter("condition");
		
		Integer price;
		Integer stocks;
		if(unitPrice.isEmpty()){
			price=0;
		}
		else{
			price = Integer.valueOf(unitPrice);
		}
		
		if(unitsInStock.isEmpty()){
			stocks=0;
		}
		else{
			stocks = Integer.valueOf(unitsInStock);
		}
	%>
	<%
		
	
	
	
	%>
</body>
</html>
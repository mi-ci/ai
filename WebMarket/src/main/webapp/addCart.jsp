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
</head>
<body>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		String id = request.getParameter("id");
		if(id==null || id.trim().equals("")){
			response.sendRedirect("Products.jsp");
		}		
	    ArrayList<Product> goodsList = dao.getLop();
	     
	    Product goods = new Product();
	     
	    for( int i=0; i< goodsList.size(); i++ ){
	        goods = goodsList.get(i);
	        if( goods.getProductId().equals(id) ) {
	           break; 
	        }
	     }

		ArrayList<Product> list = (ArrayList<Product>) session.getAttribute("cartlist");
		if(list==null){
			list = new ArrayList<Product>();
			session.setAttribute("cartlist", list);
		}
		
		int cnt = 0;
		Product goodsQnt = new Product();
		for( int i=0; i< list.size(); i++){
			goodsQnt = list.get(i);
			if( goodsQnt.getProductId().equals(id)) {
				cnt++;
				int orderQuantity = goods.getQuantity() + 1;//장바구니에 담은 갯수 + 1
				goodsQnt.setQuantity(orderQuantity);
			}
		}
		if (cnt==0) {
			goods.setQuantity(1);
			list.add(goods);
		}
		 
		response.sendRedirect("product.jsp?id=" + id);

	%>	
</body>
</html>
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
		String id = request.getParameter("id");
		ArrayList<Product> cartlist = (ArrayList<Product>) session.getAttribute("cartlist");
		for(int i=0; i<cartlist.size(); i++){
			Product p = cartlist.get(i);
			if(p.getProductId().equals(id)){
				cartlist.remove(i);
			}
		}
		response.sendRedirect("cart.jsp");
	%>
</body>
</html>
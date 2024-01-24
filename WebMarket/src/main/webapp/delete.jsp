<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String cartId = request.getParameter("cartId");
		if(cartId==null || cartId.trim().equals("")){
			response.sendRedirect("cart.jsp");
			return;
		}
		session.invalidate();
		response.sendRedirect("cart.jsp");
	%>
</body>
</html>
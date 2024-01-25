<%@page import="java.net.URLEncoder"%>
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
		request.setCharacterEncoding("utf-8");
		Cookie sCartId = new Cookie("sCartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8"));
		Cookie sName = new Cookie("sName", URLEncoder.encode(request.getParameter("name"), "utf-8"));
		Cookie sShippingDate = new Cookie("sShippingDate", URLEncoder.encode(request.getParameter("shippingDate"), "utf-8"));
		Cookie sCountry = new Cookie("sCountry", URLEncoder.encode(request.getParameter("country"), "utf-8"));
		Cookie sZipCode = new Cookie("sZipCode", URLEncoder.encode(request.getParameter("zipCode"), "utf-8"));
		Cookie sAddressName = new Cookie("sAddressName", URLEncoder.encode(request.getParameter("addressName"), "utf-8"));
		
		sCartId.setMaxAge(24000);
		sName.setMaxAge(24000);
		sShippingDate.setMaxAge(24000);
		sCountry.setMaxAge(24000);
		sZipCode.setMaxAge(24000);
		sAddressName.setMaxAge(24000);

		response.addCookie(sCartId);
		response.addCookie(sName);
		response.addCookie(sShippingDate);
		response.addCookie(sCountry);
		response.addCookie(sZipCode);
		response.addCookie(sAddressName);
		
		response.sendRedirect("orderConfirmation.jsp");
		
	%>
</body>
</html>
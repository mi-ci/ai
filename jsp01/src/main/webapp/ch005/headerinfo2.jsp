<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>header.info2 file</h1>
	<%
		String remote = request.getRemoteAddr();
		int len = request.getContentLength();
		String contentType = request.getContentType();
		String protocol = request.getProtocol();
		String method = request.getMethod();
		String uri = request.getRequestURI();
		int port = request.getServerPort();
		HttpSession se = request.getSession();
	%>
	<h3>remote : <%=remote %></h3>
	<h3> content length : <%=len %></h3>
	<h3>content type : <%=contentType %></h3>
	<h3>protocol : <%=protocol %></h3>
	<h3>method : <%=method %></h3>
	<h3>uri : <%=uri %></h3>
	<h3>port : <%=port %></h3>
	<h3>se : <%=se %></h3>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.oreilly.servlet.*" %>
<%@ page import = "com.oreilly.servlet.multipart.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>process.jsp</h1>
	<%
		MultipartRequest multi = new MultipartRequest(request, "c:\\upload", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	
		String title = multi.getParameter("title");
		String filename = multi.getFilesystemName("fileName");
		
		
	%>
	
	<%= title %>
	<%= filename %>
</body>
</html>
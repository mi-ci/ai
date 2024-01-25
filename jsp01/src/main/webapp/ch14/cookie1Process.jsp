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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("admin") && pw.equals("1234")){
			Cookie cid = new Cookie("cookid", id);
			Cookie cpw = new Cookie("cookid", pw);
			
			response.addCookie(cid);
			response.addCookie(cpw);
			out.println(cid);
			out.println(cpw);
		}
	%>
	
	
</body>
</html>
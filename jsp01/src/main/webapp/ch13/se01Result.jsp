<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>se01Result.jsp</h1>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	<%
		if(id.equals("admin") && pw.equals("1234")){
			session.setAttribute("setId", id);
			out.println("로그인에 성공했습니다. 세션을 만들었습니다.<br>");
			out.println(id + "님 방문 환영합니다.");
		}
		else{
			out.println("로그인을 실패했습니다. 다시 로그인하세요.");
			response.sendRedirect("se01.jsp");
		}
	%>
</body>
</html>
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
		session.invalidate();
	%>
	<script type="text/javascript">
		window.onload=function(){
			alert("로그아웃 성공")
			location.href = "/WebMarket/welcome.jsp"
		}
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date"%>
<%@ page import = "java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String sesid= (String) session.getAttribute("setId");
		String sespw= (String) session.getAttribute("sesPw");
	%>
	<%
Date time = new Date();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
	<%=sesid %>
	<%=sespw %>
	
	        세션 ID: <%= session.getId()%><br>
	                <%
        time.setTime(session.getCreationTime());
        %>
        세션생성시간: <%=formatter.format(time) %><br>
        <%
        time.setTime(session.getLastAccessedTime());
        session.removeAttribute("setId");
        %>
        최근접근시간: <%=formatter.format(time) %>
        

</body>
</html>
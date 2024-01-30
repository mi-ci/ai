<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
		String user="root";
		String password="1234";
		Connection con = DriverManager.getConnection(url, user, password);		
		String selectSql = "select * from boardtbl where title=?";
		PreparedStatement pstmt = con.prepareStatement(selectSql);
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		pstmt.setString(1, title);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		int count = rs.getInt("count");
		String updateSql = "update boardtbl set count = count +1 where title=?";
		PreparedStatement pstmt2 = con.prepareStatement(updateSql);
		pstmt2.setString(1, title);
		pstmt2.executeUpdate();
		
	%>
	<jsp:include page="../menu.jsp"></jsp:include>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">게시글 내용</h1>		
		</div>
	</div>
	
	<div class="container">
		<h1><%=rs.getString("title") %></h1>
		<hr>
		<h3><%=rs.getString("content") %></h3>
	</div>

	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
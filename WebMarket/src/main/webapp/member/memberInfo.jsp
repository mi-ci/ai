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
		String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String user="root";
		String password="1234";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String selectSql = "select * from membertbl";
		PreparedStatement pstmt = con.prepareStatement(selectSql);
		ResultSet rs = pstmt.executeQuery();
	%>



	<jsp:include page="../menu.jsp"></jsp:include>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">회원정보</h1>
		</div>
	</div>
	
	<div class="container">
		<div style="padding-top:50px">
			<table class="table table-hover">
				<tr>
					<th>회원번호</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>이메일</th>
					<th></th>
					<th></th>
				</tr>
					<%
						while(rs.next()){
					%>
				<tr>
					<td><%=rs.getInt("number") %></td>
					<td><%=rs.getString("id") %></td>
					<td><%=rs.getString("pwd") %></td>
					<td><%=rs.getString("name") %></td>
					<td><%=rs.getString("email") %></td>
					<td><a href="modify.jsp" class="btn btn-primary">수정</a></td>
					<td><a href="delete.jsp?number=<%=rs.getInt("number") %>" class="btn btn-danger">삭제</a></td>
				</tr>
					<%
						}
					%>
			</table>
		</div>
	</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>
	
</body>
</html>
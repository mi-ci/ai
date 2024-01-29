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
 	String n1 = request.getParameter("number");
 	Integer n2 = Integer.valueOf(n1);
 	int number = n2.intValue();
 	
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/webmarket?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
	String user="root";
	String password="1234";
	Connection con = DriverManager.getConnection(url, user, password);
	
	String selectSql = "select * from membertbl where number=?";
	PreparedStatement pstmt = con.prepareStatement(selectSql);
	pstmt.setInt(1, number);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	%>
	
	<jsp:include page="../menu.jsp"></jsp:include>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">정보수정</h1>		
		</div>
	</div>
	
	<div class="container">

		<form action="processModify.jsp?number=<%=rs.getInt("number") %>" name="join" class="form-horizontal" method="post">
		
			<div class="form-group row">
				<label class="col-sm-2 f1">아이디</label>
				<div class="col-sm-5 f1">
					<input type="text" name="id" id="id" class="form-control" value="<%=rs.getString("id") %>">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 f1">패스워드</label>
				<div class="col-sm-4 f1">
					<input type="text" name="pw" id="pw" class="form-control" value="<%=rs.getString("pwd") %>">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 f1">이름</label>
				<div class="col-sm-5 f1">
					<input type="text" name="name" id="name" class="form-control" value="<%=rs.getString("name") %>">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 f1">이메일</label>
				<div class="col-sm-5 f1">
					<input type="text" name="email" id="email" class="form-control" value="<%=rs.getString("email") %>">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset col-sm-10 col text-center">
					<input type="submit" class = "btn btn-primary" value="수정">
					<input type="reset" class="btn btn-secondary" value="작성취소">
				</div>
			</div>
			
		</form>
	</div>
</body>
</html>
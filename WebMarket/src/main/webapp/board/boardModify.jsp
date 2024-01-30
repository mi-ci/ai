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
	 	String n1 = request.getParameter("num");
	 	Integer n2 = Integer.valueOf(n1);
	 	int num = n2.intValue();
	 	
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
		String user="root";
		String password="1234";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String selectSql = "select * from boardtbl where num=?";
		PreparedStatement pstmt = con.prepareStatement(selectSql);
		pstmt.setInt(1, num);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
	%>

	<jsp:include page="../menu.jsp"></jsp:include>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">게시글 수정</h1>		
		</div>
	</div>
	
	<div class="container">

		<form action="processBoardModify.jsp?num=<%=rs.getInt("num") %>" name="join" class="form-horizontal" method="post">
		
			<div class="form-group row">
				<label class="col-sm-2 f1">제목</label>
				<div class="col-sm-5 f1">
					<input type="text" name="title" id="title" class="form-control" value="<%=rs.getString("title") %>">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 f1">내용</label>
				<div class="col-sm-4 f1">
					<textarea name="content" id="content" class="form-control" ><%=rs.getString("content") %></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 f1">작성자</label>
				<div class="col-sm-5 f1">
					<input type="text" name="writer" id="writer" class="form-control" value="<%=rs.getString("writer") %>">
				</div>
			</div>
									
			<div class="form-group row">
				<div class="col-sm-offset col-sm-10 col text-center">
					<input type="submit" class = "btn btn-primary" value="수정">
					<input type="reset" class="btn btn-secondary" value="리셋">
				</div>
			</div>
			
		</form>
	</div>

</body>
</html>
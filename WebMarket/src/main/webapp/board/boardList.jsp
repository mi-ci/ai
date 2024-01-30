<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체내용 보이기</title>
<style type="text/css">
th{
	text-align:center;
}

</style>
</head>
<body>
	
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
		String user="root";
		String password="1234";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String selectSql = "select * from boardtbl order by num desc;";
		PreparedStatement pstmt = con.prepareStatement(selectSql);
		ResultSet rs = pstmt.executeQuery();
	%>
	
	
	<jsp:include page="../menu.jsp"></jsp:include>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">게시글 리스트</h1>
		</div>
	</div>
	<div class="container">
		<div style="padding-top:50px">
			<a href="boardInsert.jsp" class="btn btn-info" style="float:right;">글쓰기</a>
			<table class="table table-hover">
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
					<th></th>
					<th></th>
				</tr>
					<%
						while(rs.next()){
					%>
				<tr>
					<td><%=rs.getInt("num") %></td>
					<td><a href="boardDetail.jsp?title=<%=rs.getString("title") %>"><%=rs.getString("title") %></a></td>
					<td><%=rs.getString("writer") %></td>
					<td><%=rs.getDate("reg_date") %></td>
					<td><%=rs.getInt("count") %></td>
					<td><a href="boardModify.jsp?num=<%=rs.getInt("num") %>" class="btn btn-primary">수정</a></td>
					<td><a href="boardDelete.jsp?num=<%=rs.getInt("num") %>" class="btn btn-danger">삭제</a></td>
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
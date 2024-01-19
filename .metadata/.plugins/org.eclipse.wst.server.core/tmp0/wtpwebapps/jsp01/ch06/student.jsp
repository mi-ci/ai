<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>

	body {
		margin-top : 100px;
		background-color : #111111;
	}
	.title{
		width : 100%;
		margin: 0 auto;
		text-align : center;
		margin-bottom : 50px;
		color : white;
	}
</style>
</head>
<body>
	<jsp:useBean id="s" class="jsp01.Student"></jsp:useBean>
	<jsp:useBean id="sr" class=jsp01.StudentRepository></jsp:useBean>
	<%
		s.setName(request.getParameter("name"));
		s.setPhone(request.getParameter("phone"));
		s.setAge(request.getParameter("age"));
	%>
    <%
    	ArrayList
    %>

	
	<div class="title">
		<h1>학생정보조회</h1>
	</div>
	
	<div class = "container">
		<table class="table">
		  <thead>
		    <tr class = "table-dark">
		      <th scope="col">#</th>
		      <th scope="col">이름</th>
		      <th scope="col">전화번호</th>
		      <th scope="col">나이</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr class = "table-dark">
		      <th scope="row">1</th>
		      <td><%=s.getName() %></td>
		      <td><%=s.getPhone() %></td>
		      <td><%=s.getAge() %></td>
		    </tr>
		    <tr class = "table-dark">
		      <th scope="row">2</th>
		      <td></td>
		      <td></td>
		      <td></td>
		    </tr>
		    <tr class = "table-dark">
		      <th scope="row">3</th>
		      <td></td>
		      <td></td>
		      <td></td>
		    </tr>
		  </tbody>
		</table>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
*{
margin:0; padding:0;
}
body{
background-color : #111111;
}
h3, h4, hr{
color : white;
}
p{
color: black;
}
.contain{
margin-bottom:100px;
}
.little_margin_bottom{
margin-bottom:50px;
}
</style>
</head>
<body>
	
	<nav class ="navbar navbar-expand navbar-dark bg-dark"> 
	 	<div class= "container">
	 		<div class = "navbar-header">
	 			<a class = "navbar-brand" href="main.jsp"><img src="images/logo.jpg" style="width:20%"> OLD PLANET</a>
	 		</div>
	 		<div class = "navbar-header">
	 			<a class = "navbar-brand" href="Products.jsp">몬스터</a>
	 			<a class = "navbar-brand" href="addProduct.jsp">아이템</a>
	 			<a class = "navbar-brand" href="deleteProject2.jsp">맵</a>
	 		</div>
		</div>
	</nav>
	<div class="container" style="width:50%">
			<table class="table">
		  <thead  class ="text-center">
		    <tr>
		      <th scope="col" colspan="4">
		      	<img src="images/bluesnail.jpg" style="width:20%">
		      	<p>파란달팽이
		      	<p>레벨:1
		      </th>
		    </tr>
		  </thead>
		  <tbody class ="text-left">
		    <tr>
		      <th scope="row">체력</th>
		      <td>100</td>
		      <th>마나</th>
		      <td>100</td>
		    </tr>
		    <tr>
		      <th scope="row">경험치</th>
		      <td>100</td>
		      <th>메소</th>
		      <td>100</td>
		    </tr>
		    <tr>
		      <th scope="row">기타</th>
		      <td>기타</td>
		      <th rowspan="2">장비</th>
		      <td rowspan="2">장비</td>
		    </tr>
		    <tr>
		      <th scope="row">소비</th>
		      <td>소비</td>
		    </tr>
		    <tr>
		      <th scope="row">스텟</th>
		      <td>100</td>
		      <th>약점</th>
		      <td>100</td>
		    </tr>
		    <tr>
		    <td colspan="4">출몰장소
		    <ul>
		    	<li><a href="map.jsp">헤네시스</a></li>
		    </ul>
		    </td>
		    </tr>
		  </tbody>
		</table>
	</div>
	

</body>
</html>
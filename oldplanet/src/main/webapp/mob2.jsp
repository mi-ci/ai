<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>몬스터</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
*{
margin:0; padding:0;
}
body{

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
@media (max-width: 600px) {
  .container {
    width: 100%;
  }
}
th,td{
	font-size:11px;
border:1px solid #ADAAAB;
}
table{
border:1px solid grey;
}
a{
text-decoration:none;
font-size:20px;}
</style>
</head>
<body>

	<%
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
	String user="root";
	String password="1234";
	Connection con = DriverManager.getConnection(url, user, password);
	
	String selectSql = "select * from mob3 where nameko=?";
	PreparedStatement pstmt = con.prepareStatement(selectSql);
	request.setCharacterEncoding("utf-8");
	String nameko = request.getParameter("nameko");
	nameko = nameko.substring(1);
	pstmt.setString(1, nameko);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	%>
	<br>	
 	<div class= "container" align="center">
 			<a href="10.html"><img src="maple.gif" style="width:15%"></a>
	</div>
	<hr>
	<div class="container" style="width:100%; table-layout: auto; width: 100%; table-layout: fixed;">
	<div>
		<img src="breadcrumb.png"><a href="10.html" style="font-size:12px">홈</a><span style="font-size:12px"> » 몬스터</span>
	</div>
	<div style="background-color:rgb(54,104,133); margin-bottom:4px; margin-top:3px; height:40px;border-radius:12px">
		<span style="color:white; line-height:40px; font-weight:1000;"> &emsp;<%=rs.getString("nameko") %> </span>
	</div>
			<table class="table" style="table-layout: fixed;">
		  <thead  class ="text-center">
		    <tr>
		      <th scope="col" colspan="4">
		      	<img src="<%=rs.getString("image") %>" style="width:20%">
		      	<p>
		      	<p style="line-height:50%;"><%=rs.getString("nameko") %>
		      	<p style="line-height:50%;">레벨 : <%=rs.getInt("level") %>
		      </th>
		    </tr>
		  </thead>
		  <tbody class ="text-left">
		    <tr>
		      <td width="50%" colspan="2"><span style="font-weight:bold;">레벨:</span> <%=rs.getInt("level") %></td>
		      <td width="50%" colspan="2"><span style="font-weight:bold;">경험치:</span> <%=rs.getInt("exp") %></td>
		      
		    </tr>
		    <tr>
		      <td width="50%" colspan="2"><span style="font-weight:bold;">체력:</span> <%=rs.getInt("hp") %></td>
		      <td width="50%" colspan="2"><span style="font-weight:bold;">마나:</span> <%=rs.getInt("mp") %></td>
		    </tr>

		    <tr>
		    <th colspan="1">아이템
		    </th>
		    <td colspan="3"><%=rs.getString("itemslist") %></td>
		    </tr>
		    <!--<tr>
		    <td colspan="4">출몰장소
		    <ul>
		    	<li><a href="map.jsp">헤네시스</a></li>
		    </ul>
		    </td>
		    </tr>  -->
		  </tbody>
		</table>
	</div>
	

</body>
</html>
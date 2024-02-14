<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>몬스터 리스트</title>
<style>
a{
text-decoration:none;
color:black;
}</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="1.css" />
</head>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
	String user="root";
	String password="1234";
	Connection con = DriverManager.getConnection(url, user, password);
	
	String selectSql = "select nameko, level, image from mob3 where level>0 order by level";
	PreparedStatement pstmt = con.prepareStatement(selectSql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs = pstmt.executeQuery();
	rs.last();
	String link;
	int row = rs.getRow();
	rs.beforeFirst();
	%>
	
	<div class="card">
	
 	<div  align="center">
 			<a href="20.html"><img src="logo2.jpg" style="width:100px"></a>
 			
		    <br />
		    <h1 class="text-center"><%=row %>개의 몬스터</h1>
 	</div>
	<div>
		<img src="breadcrumb.png"><a href="20.html" style="font-size:12px">홈</a> »<a href="moblist.jsp" style="font-size:12px"> 몬스터</a>
	</div>
		<details class="warning">
			<summary>레벨 1~20</summary>
		      	<%
				while(rs.next()!=false){
					if(rs.getInt("level")<21){
				%>
					<a href="mob2copy2.jsp?nameko=<%=rs.getString("nameko")%>"><img src="<%=rs.getString("image")%>" height="30" width="30" class="img-thumbnail"/><%=rs.getString("nameko")%> <%=rs.getInt("level") %></a>
				<%
					}
				}
		    	rs.beforeFirst();
				%>

		</details>
		<details class="info">
			<summary>레벨 21~40</summary>
		      	<%
				while(rs.next()!=false){
					if(rs.getInt("level")>20 && rs.getInt("level")<41){
				%>
					<a href="mob2copy2.jsp?nameko=<%=rs.getString("nameko")%>"><img src="<%=rs.getString("image")%>" height="30" width="30" class="img-thumbnail"/><%=rs.getString("nameko")%> <%=rs.getInt("level") %></a>
				<%
					}
				}
		    	rs.beforeFirst();
				%>		        
		</details>
		<details class="alert">
			<summary>레벨 41~60</summary>


		      	<%
				while(rs.next()!=false){
					if(rs.getInt("level")>40 && rs.getInt("level")<61){
				%>
					<a href="mob2copy2.jsp?nameko=<%=rs.getString("nameko")%>"><img src="<%=rs.getString("image")%>" height="30" width="30" class="img-thumbnail"/><%=rs.getString("nameko")%> <%=rs.getInt("level") %></a>
				<%
					}
				}
		    	rs.beforeFirst();
				%>		        		        
        
		</details>
		</div>
	</div>
	<br>
</body>
</html>
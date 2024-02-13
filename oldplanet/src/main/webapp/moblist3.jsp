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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
	String user="root";
	String password="1234";
	Connection con = DriverManager.getConnection(url, user, password);
	
	String selectSql = "select nameko, level from mob3 where level>0 order by level";
	PreparedStatement pstmt = con.prepareStatement(selectSql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs = pstmt.executeQuery();
	rs.last();
	String link;
	int row = rs.getRow();
	rs.beforeFirst();
	%>
	<h2 class="text-center"><%=row %>개의 몬스터</h2>
	
	<div class="container">
		<div class="accordion" id="accordionExample">
		  <div class="accordion-item">
		    <h2 class="accordion-header">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		        레벨 1~20
		      </button>
		    </h2>
		    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		      	<%
				while(rs.next()!=false){
					if(rs.getInt("level")<21){
				%>
					<a href="mob3.jsp?nameko=<%=rs.getString("nameko")%>"><%=rs.getString("nameko")%> <%=rs.getInt("level") %></a>
					<br>
				<%
					}
				}
		    	rs.beforeFirst();
				%>
		      </div>
		    </div>
		  </div>
		  <div class="accordion-item">
		    <h2 class="accordion-header">
		      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
		        레벨 21~40
		      </button>
		    </h2>
		    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		      	<%
				while(rs.next()!=false){
					if(rs.getInt("level")>20 && rs.getInt("level")<41){
				%>
					<a href="mob3.jsp?nameko=<%=rs.getString("nameko")%>"><%=rs.getString("nameko")%> <%=rs.getInt("level") %></a>
					<br>
				<%
					}
				}
		    	rs.beforeFirst();
				%>		        
		      </div>
		    </div>
		  </div>
		  <div class="accordion-item">
		    <h2 class="accordion-header">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
		        레벨 41~60
		      </button>
		    </h2>
		    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		      	<%
				while(rs.next()!=false){
					if(rs.getInt("level")>40 && rs.getInt("level")<61){
				%>
					<a href="mob3.jsp?nameko=<%=rs.getString("nameko")%>"><%=rs.getString("nameko")%> <%=rs.getInt("level") %></a>
					<br>
				<%
					}
				}
		    	rs.beforeFirst();
				%>		        		        
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	<br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하하하하</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<h1>Hello JSP</h1>
	<h2>Scripting Tag</h2>
	<%! int count = 3;
		String makeItLower(String data){
			return data.toLowerCase();
		}
	%>
	
	<%
		for(int i = 1; i <= count; i++){
			out.println(i+"<br>");
		}
	%>
	<%= makeItLower("Hi!")%>
	
	<%! int count1 = 0; %>
	<% out.println(count1++); %>
	<% String name = "홍길동";
		out.println(name);
	%>
	<%= name %>
	<%= count1 %>
	<%!
		int sum(int a, int b){
			return a+b;
		};
	%>
	<%
		int aa = sum(10, 20);
		out.println(aa + " " + "~~");	
	%>
	<%= aa %>
	
	<%
		int a = 2;
		int b = 3;
		int sum = a + b;
		out.println("<br>" + "2 + 3 = " + sum);
	%>
	<br>
	<%
		for(int i = 0; i<=10; i++){
			if (i % 2 == 0)
				out.println(i+"<br>");
		}
	%>
	<br>
	<% out.println(ga); %>
	<%! int ga = 10; %>
	<% out.println(ga); %>
	<br>
	<% int la = 100;
		out.println(ga+la);
	%>
	<br>
	<% out.println(ga+la); %>
	
	
	<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>
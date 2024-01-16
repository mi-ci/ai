<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<nav class ="navbar navbar-expand navbar-dark bg-dark"> 
	 	<div class= "container">
	 		<div class = "navbar-header">
	 			<a class = "navbar-brand" href="welcome.jsp">Home</a>
	 		</div>
		</div>
	</nav>
	<%! String greeting = "Welcome to Web Shopping Mall"; 
		String tagline = "Welcome to Web Market~!";
	%>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3"><%= greeting %></h1>		
		</div>
	</div>
	
	<main role = "main">
		<div class = "container">
			<div class = "text-center">
				<h3><%= tagline %></h3>			
				<img src="images/giphy1.gif" alt="redsnail" class="img-thumbnail">
			</div>
		</div>
		
	</main>
	
	
	<footer class = "container text-right">
		<p>&copy; WebMarket </p>
	</footer>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>
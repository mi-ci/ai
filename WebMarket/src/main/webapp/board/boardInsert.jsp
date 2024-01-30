<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">글쓰기</h1>		
		</div>
	</div>
	
	<div class="container">

		<form action="processBoardInsert.jsp" name="join" class="form-horizontal" method="post">
		
			<div class="form-group row">
				<label class="col-sm-2 f1">제목</label>
				<div class="col-sm-5 f1">
					<input type="text" name="title" id="title" class="form-control" placeholder="제목입력">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 f1">내용</label>
				<div class="col-sm-4 f1">
					<textarea name="content" id="content" class="form-control" placeholder="내용입력"></textarea>
				</div>
			</div>
			<%
				String name = (String) session.getAttribute("name");
				if(name == null){
			%>					
			<div class="form-group row">
				<label class="col-sm-2 f1">작성자</label>
				<div class="col-sm-5 f1">
					<input type="text" name="writer" id="writer" class="form-control" placeholder="작성자">
				</div>
			</div>
			<%
				}
			%>
			
			<div class="form-group row">
				<label class="col-sm-2 f1">날짜</label>
				<div class="col-sm-5 f1">
					<input type="date" name="date" id="date" class="form-control" placeholder="날짜">
				</div>
			</div>
						
			<div class="form-group row">
				<div class="col-sm-offset col-sm-10 col text-center">
					<input type="submit" class = "btn btn-primary" value="작성">
					<input type="reset" class="btn btn-secondary" value="리셋">
				</div>
			</div>
			
		</form>
	</div>
</body>
</html>
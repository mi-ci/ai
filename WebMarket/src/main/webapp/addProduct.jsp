<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap');
  .f1{
  	font-family: 'Nanum Myeongjo', serif;
  }
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3 f1">상품 등록</h1>		
		</div>
	</div>
	
	<div class="text-center">
	<div class="container">
		<form action="processAddProduct.jsp" name="newProduct" enctype="multipart/form-data" class="form-horizontal" method="post">
		<div class="form-group row">
			<label class="col-sm-2 f1">상품코드</label>
			<div class="col-sm-5 f1">
				<input type="text" name="productId" id="productId" class="form-control" placeholder="상품코드는 숫자이되 P로 시작할것">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2 f1">상품명</label>
			<div class="col-sm-4 f1">
				<input type="text" name = "pname" id="pname" class="form-control" placeholder="4~12 영문 숫자">
			</div>
		</div>
				
		<div class="form-group row">
			<label class="col-sm-2 f1">가격</label>
			<div class="col-sm-4 f1">
				<input type="text" name = "unitPrice" id="unitPrice" class="form-control" placeholder="최소 천원이상">
			</div>
		</div>
				
		<div class="form-group row">
			<label class="col-sm-2 f1">상세정보</label>
			<div class="col-sm-4 f1">
				<textarea name = "description" id="description" cols="50" rows="2" class="form-control"></textarea>
			</div>
		</div>
				
		<div class="form-group row">
			<label class="col-sm-2 f1">제조사</label>
			<div class="col-sm-4 f1">
				<input type="text" name = "manufacturer" id="manufacturer" class="form-control">
			</div>
		</div>
				
		<div class="form-group row">
			<label class="col-sm-2 f1">분 류</label>
			<div class="col-sm-4 f1">
				<input type="text" name = "category" id="category" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2 f1">재고수</label>
			<div class="col-sm-4 f1">
				<input type="text" name = "unitsInStock" id="unitsInStock" class="form-control" placeholder="숫자만">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2 f1">상태</label>
			<div class="col-sm-4 f1">
				<input type="radio" name = "condition" value="New"> 신규 제품 
				<input type="radio" name = "condition" value="Old"> 중고 제품 
				<input type="radio" name = "condition" value="Refurbished"> 재생 제품 
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2 f1">이미지</label>
			<div class="col-sm5">
				<input type="file" name = "productImage" id="productImage" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<div class="col-sm-offset col-sm-10 col text-center">
				<input type="button" class = "btn btn-primary" value="등록" onclick="checkAddProd()">				
				<input type="reset" class = "btn btn-danger" value="다시 입력">				
			</div>
		</div>
			
		
		</form>
		
		
	</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<script type="text/javascript" src="js/validation.js">

	
	</script>
	
</body>
</html>
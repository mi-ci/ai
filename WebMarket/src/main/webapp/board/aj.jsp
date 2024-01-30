<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){

		// 버튼 누를 필요 없이 실시간 이벤트
		$("#id").on("keyup", function(){
			var $checkID = $("#id").val();
			var params = "?id="+$checkID;
			
			var $msg = $("#msg");

			//console.log($checkID);

			if($checkID == ""){
				console.log("아이디 없음")
				return;
			}
			
			$.ajax({
				type : "POST",
				url: "./checkid.jsp",
				data : { "id" : $checkID },
				dataType : "html",
				async : true,
				success : function(data){
					console.log("data : "+data)
					if(data.trim() == "true"){
						$msg.html("<h4>아이디가 이미 존재합니다</h4>");
					}else{
						$msg.html("<h4>사용가능한 아이디입니다</h4>")
					}
				}
			})
		})
	})
</script>
<style>
	* {
		margin : auto;
	}
</style>
</head>
<body>
<h1><center>회원 가입</center></h1>
<form action="registerOk.jsp" method="get">
	ID: <input type="text" name="id" id="id">
	<input type="button" id="idcheck" value="중복확인"><span id="msg"></span>
	<br>

	이름: <input type="text" name="name">
	<br>

	비민번호: <input type="password" name="passwd">
	<br>

		<center>
			<input type="submit" value="가입하기">
			<input type="button" value="취소하기">
		</center>
	</form>
	
	
</body>
</html>

출처: https://terianp.tistory.com/95 [Terian의 IT 도전기:티스토리]
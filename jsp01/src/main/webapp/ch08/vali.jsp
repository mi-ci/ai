<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> vali.jsp - 유효성 검사</h1>
	<form name="frm" action="prvali.jsp" method="post">
		<p>이름 : <input type="text" name="name">
		<p>주소 : <input type="text" name="addr">
		<input type="submit" value="send" onclick="checkForm()">
	</form>
	
	
	<script type="text/javascript">
		function checkForm(){
			alert("이름은" + document.frm.name.value + "입니다.")
			alert("주소는" + document.frm.addr.value + "입니다.")
		}
	</script>
</body>
</html>
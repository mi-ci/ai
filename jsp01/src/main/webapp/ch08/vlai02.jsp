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
	<form name="loginForm" action="provali02.jsp" method="post">
		<p>아이디 : <input type="text" name="id">
		<p>비번 : <input type="password" name="pw">
		<p>이름 : <input type="text" name="name">
		<input type="button" value="로그인" onclick="loginCheck()">
	</form>
	
	<script type="text/javascript">
		function loginCheck(){
			var form = document.loginForm;
			if (form.id.value==""){
				alert("아이디를 입력해주세요");
				form.id.focus();
				return false;
			}
			else if (form.id.value.length < 4 || form.id.value.length > 12){
				alert("id의 길이는 4~12사이 이어야 합니다.")
				form.id.focus();
				return false;
			}
			if (form.pw.value==""){
				alert("비번을 입력해주세요");
				form.pw.focus();
				return false;
			}
			else if (form.pw.value.length < 4){
				alert("비밀번호는 4글자 이상이어야 합니다.");
				form.pw.focus();
				return false;
			}
			else {
				for(i=0; i<form.pw.value.length; i++){
					var ch = form.pw.value.charAt(i);
					if(ch != [0,9]){
						alert('비밀번호는 숫자만 작성가능');
						form.pw.focus();
						return false;
					}
				}
			}
			if (form.name.value==""){
				alert("이름을 입력해주세요");
				form.name.focus();
				return false;
			}
			else{
				for (i=0; i<form.name.value.length; i++){
					if (!isNaN(form.name.value.substr(i,i+1))){
						alert("이름에 숫자가 포함되면 안된다");
						form.name.focus();
						return false;
					}
				}				
			}
			
			
			form.submit();
		}
	</script>
</body>
</html>
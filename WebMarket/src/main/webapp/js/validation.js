
function checkAddProd(){
	/*		
	var form = document.newProduct;
			
	if(form.pname.value==""){
		alert("상품아이디가 빈칸입니다");
		form.pname.focus();
		return false;
	}
	*/	
	var productId = document.getElementById("productId");
	var pname = document.getElementById("pname");
	var unitPrice = document.getElementById("unitPrice");
	var manufacturer = document.getElementById("manufacturer");
	var category = document.getElementById("category");
	var unitsInStock = document.getElementById("unitsInStock");
	var productImage = document.getElementById("productImage");
	
	if(!check(/^P[0-9]{4,11}$/, productId, "상품코드와 숫자를 조합하여 5~12자까지 입력 반드시 첫글자는 P로 시작하기")){
		return false;
	}
	
	if(!check(/^[a-zA-Z0-9]{4,12}$/, pname, "4~12자리 상품명 입력")){
		return false;
	}
	
	if(!check(/^[1-9][0-9]{3,11}$/, unitPrice, "천원부터 입력하세요")){
		return false;
	}
	
	if(!check(/^[0-9]*$/, unitsInStock, "숫자를 입력하세요")){
		return false;
	}
	
	
	function check(regExp, e, msg){
		if(regExp.test(e.value)){
			return true;
		}
		else{
			alert(msg);
			e.focus();
			return false;
		}
	}
	
	
	document.newProduct.submit();

		
	
}
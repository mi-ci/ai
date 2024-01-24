<%@page import ="java.util.ArrayList" %>
<%@page import ="dto.Product" %>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="display-3">상품 목록</h1>		
		</div>
	</div>
	<jsp:useBean id="pr" class="dao.ProductRepository"></jsp:useBean>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> op = dao.getLop();
	%>
	<div class="container">
		<div class = "row" align="center">
			<%
				for(int i=0; i<op.size(); i++){
					Product p = op.get(i);
			%>
			<div class="col-md-4">
				<img src="${pageContext.request.contextPath}/images/<%= p.getFilename() %>" style="width:100%">
				<h3><%=p.getFilename()%></h3>
				<h3><%=p.getPname()%></h3>
				<h3><%=p.getDescription()%></h3>
				<h3><%=p.getUnitPrice()%></h3>
				<p><a href="product.jsp?id=<%=p.getProductId()%>" class="btn btn-secondary">상세정보 &raquo; </a>	
			</div>
			<%
				}		
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container" style="height:100%;width:100%">
  <div class="tradingview-widget-container__widget" style="height:500px;width:100%"></div>
  <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-advanced-chart.js" async>
  {
  "autosize": true,
  "symbol": "BINANCE:BTCUSDT",
  "interval": "1",
  "timezone": "Asia/Seoul",
  "theme": "dark",
  "style": "1",
  "locale": "kr",
  "enable_publishing": false,
  "allow_symbol_change": true,
  "support_host": "https://www.tradingview.com"
}
  </script>
</div>
<!-- TradingView Widget END -->	
</body>
</html>
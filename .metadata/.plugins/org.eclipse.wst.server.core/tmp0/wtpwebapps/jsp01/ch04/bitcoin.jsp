<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Bitcoin Price</title>
</head>s
<body>
    <h1>Bitcoin Price</h1>
    <p>The current price of Bitcoin is: <c:out value='${bitcoinPrice}' /></p>
</body>
</html>
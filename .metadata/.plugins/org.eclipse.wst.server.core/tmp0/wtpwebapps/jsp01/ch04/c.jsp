<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h3>
	<%= URLDecoder.decode(request.getParameter("kor2")) %>
	<%= URLDecoder.decode(request.getParameter("score2")) %>
</h3>
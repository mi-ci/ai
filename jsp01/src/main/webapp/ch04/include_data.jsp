<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<h3>포함되는 jsp</h3>
	<h5>
	<%= URLDecoder.decode(request.getParameter("kor")) %>
	<%= URLDecoder.decode(request.getParameter("score")) %>
	</h5>
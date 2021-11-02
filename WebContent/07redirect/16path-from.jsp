<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
//response.sendRedirect("16path-to.jsp");	// 상대경로
response.sendRedirect(request.getContextPath() + "/07redirect/16path-to.jsp");	//절대경로
%>
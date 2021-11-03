<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
<h1>request headers</h1>
<%
Enumeration<String> enumaeration = request.getHeaderNames();

while (enumaeration.hasMoreElements()){
	String name = enumaeration.nextElement();
%>
	<p><%= name %> : <%= request.getHeader(name) %></p>

<%
}
%>

<hr>
<h1>request cookies</h1>
<%
Cookie[] cookies = request.getCookies();

for(Cookie cookie : cookies){
%>
	<p><%= cookie.getName() %> : <%= cookie.getValue() %></p>
	
<%
}
%>



</body>
</html>
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

<h1>page a (food)</h1>

<%
String[] foodList = (String[]) request.getAttribute("food");
%>

<%-- foodList를 출력 --%>
<ul>
<%
	for(String item : foodList){
%>
		<li><%= item %></li>
<%
	}
%>
</ul>

</body>
</html>
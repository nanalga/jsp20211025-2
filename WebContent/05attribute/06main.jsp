<%@page import="sample01.MyBook"%>
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

<%
MyBook book = new MyBook("Springbook", 2000);
request.setAttribute("book", book);
%>

<h1>main contents</h1>

<jsp:include page="06sub.jsp"></jsp:include>

</body>
</html>
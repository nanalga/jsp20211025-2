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

<h1>06to.jsp</h1>

<p>name : ${name }</p>	<%-- donald --%>
<p>name : ${age }</p><%-- 30 --%>
<p>height : ${height }</p><%-- 190.5 --%>
<p>width : ${width }</p><%-- 300.333 --%>

</body>
</html>
<%@page import="sample03javabean.Bean06"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
Bean06 book = new Bean06("java", "son", 300, "apup", 10);
pageContext.setAttribute("attr", book);
%>

수량 : ${attr.stock } <br>

<c:set target="${attr }" property="stock" value="11"/>
수량 : ${attr.stock }

</body>
</html>
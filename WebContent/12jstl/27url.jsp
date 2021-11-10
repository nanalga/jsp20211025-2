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
<h1>jstl url tag</h1>
<hr>
<a href="https://www.naver.com">네이버1</a>

<br>

<a href="https://www.naver.com">네이버2</a> <br>

<c:url value="https://www.naver.com" var="naverUrl" />

<a href="${naverUrl }">네이버3</a> <br>

<a href="${naverUrl }">네이버4</a>

</body>
</html>
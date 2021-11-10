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

<c:url value="25process.jsp" var="DatabaseUrl" scope="page">
	<c:param name="title" value="DataBase" />
	<c:param name="writer" value="kim" />
	<c:param name="price" value="30000" />
	<c:param name="publisher" value="bpup" />
	<c:param name="stock" value="400" />
</c:url>

<a href="${DatabaseUrl }">데이터 베이스 책 추가</a>

</body>
</html>
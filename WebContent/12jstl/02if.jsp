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
<h1>jstl core if</h1>

<c:if test="">
	<p>출력됨1</p>
</c:if>

<c:if test="true">
	<p>출력됨2 true 키워드</p>
</c:if>

<c:if test="<%= 3 == 3 %>">
	<p>출려됨3 expression</p>
</c:if>

<c:if test="${3 == 3 }">
	<p>출력됨4 expression language(el)</p>
</c:if>

</body>
</html>
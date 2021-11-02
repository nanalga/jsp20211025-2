<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입</h1>
<!-- <form action="/myjsp/02request/36login-process.jsp" method="post"> -->
<form action="<%= request.getContextPath() %>/02request/36login-process.jsp" method="post">
	id : <input type="text" name="id" placehold="아이디 입력">
	<br>
	pw : <input type="password" name="password" placehold="패스워드 입력">
	<br>
	<input type="submit" value="로그인">
</form>

</body>
</html>
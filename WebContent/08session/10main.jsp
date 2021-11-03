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

<h1>메인 페이지</h1>

<%
String user = (String)session.getAttribute("user");

if(user == null){
	// 로그인 하지 않은 상태
%>
	
	<p>손님 반갑습니다.</p>
	<a href="10login-form.jsp">로그인</a>
<%
} else {
	//로그인한 상태
	
%>
	<p><%= user %>님 반갑습니다.</p>
	<a href="#">로그아웃</a>

<%
}

%>


</body>
</html>
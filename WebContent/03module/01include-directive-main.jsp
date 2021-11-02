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

<h1>멋진 제목</h1>

<%-- sub 콘텐트 삽입 --%>
<%@ include file="/03module/01include-directive-sub.jsp" %>

<h1>훌륭한 푸터</h1>
</body>
</html>
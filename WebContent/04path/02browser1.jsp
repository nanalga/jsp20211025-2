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

<h1>컨텐츠1</h1>

<hr>
<h3>절대 경로 링크</h3>
<a href="/jsp1025/04path/02browser2.jsp">2번 파일로 이동</a>
<p><%= request.getContextPath() %></p>
<h3>상대경로 링크</h3>
<a href="02browser2.jsp">2번 파일로 이동</a>

</body>
</html>
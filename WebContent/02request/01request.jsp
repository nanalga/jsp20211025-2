<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Request 기본 객체(implicit object)</h1>
<h2>HttpServletRequest 타입</h2>

<%= request %>

<hr>
content length : <%= request.getContentLength() %> <br>
remote address : <%= request.getRemoteAddr() %> <br>
request uri : <%= request.getRequestURI() %> <br>
context path : <%= request.getContextPath() %> <br>
method : <%= request.getMethod() %> <br>
parameter : <%= request.getParameter("name") %> <br>

</body>
</html>
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

<%
	List<String> list = new ArrayList(Arrays.asList("520d", "XC60", "E300", "A6"));
	request.setAttribute("menuItems", list);
%>
<jsp:include page="05sub.jsp"></jsp:include>

<h1>main2 contents2</h1>

</body>
</html>
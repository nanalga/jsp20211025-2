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
List<String> datas = new ArrayList<>();
datas.add("korea");
datas.add("china");
datas.add("us");
datas.add("uk");
datas.add("france");

pageContext.setAttribute("country", datas);
%>
<ul>
	<c:forEach items="${country }" var="item">
		<li>${item }</li>
	</c:forEach>
</ul>

<hr>

<ul>
	<c:forEach items="${country }" begin="1" end="3" var="item">
		<li>${item }</li>
	</c:forEach>

</ul>

</body>
</html>
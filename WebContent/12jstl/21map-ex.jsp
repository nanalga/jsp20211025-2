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
Map<String, String> map = new HashMap<>();
map.put("song", "aspa");
map.put("food", "choco");
map.put("city", "seoul");

pageContext.setAttribute("datas", map);
%>
<ul>
	<c:forEach items="${datas }" var="data">
		<li>${data.key }</li>
	</c:forEach>
</ul>

<ul>
	<c:forEach items="${datas }" var="data">
		<li>${data.value }</li>
	</c:forEach>
</ul>


</body>
</html>
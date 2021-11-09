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
pageContext.setAttribute("array", new String[] {"mvc", "izy", "aspa", "mafia", "spring"});
%>
<%-- foreach 사용해서
<ol>
	<li>itzy</li>
	<li>aspa</li>
	<li>mafia</li>
</ol>
 --%>
 
 <ol>
 	<c:forEach begin="1" end="3" items="${array }" var="item">
 		<li>${item }</li>
	</c:forEach>
</ol>
</body>
</html>
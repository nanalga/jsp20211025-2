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

<h1>page b (song)</h1>

<%
List<String> songList = (List<String>)request.getAttribute("song");
%>

<%-- songList 아이템 출력 --%>
<ul>
	<%
		for(String songs : songList){
	%>
			<li><%= songs %></li>
	<%
		}
	%>
</ul>

</body>
</html>
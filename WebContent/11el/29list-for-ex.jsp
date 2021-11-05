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
List<String> list = new ArrayList<>();
list.add("java");
list.add("spring");
list.add("mvc");
list.add("controller");

pageContext.setAttribute("data", list);
%>

<%
for(int i = 0; i < list.size(); i++) {
	pageContext.setAttribute("idx", i);
%>
	<p><%= i %> : ${data[idx] }</p>

<%
}
%>



</body>
</html>
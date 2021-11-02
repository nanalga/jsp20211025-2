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
<h1>request parameter</h1>
<p><%= request.getParameter("q")%></p><br>

<hr>
<%
String param = request.getParameter("q");

if(param.equals("java")){
%>
 <p>hello java</p>
<%
} else {
%>
	 <p>hello</p>
<%
}
%>


</body>
</html>
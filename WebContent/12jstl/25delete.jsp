<%@page import="sample03javabean.Bean06"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
List<Bean06> list = (List<Bean06>) application.getAttribute("books");
String indexStr = request.getParameter("index");
int index = Integer.parseInt(indexStr);

list.remove(index);

response.sendRedirect("25list-book-tag.jsp");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>

</body>
</html>
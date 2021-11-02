<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String queryString = "?abc=def";
String location = "10to.jsp" + queryString;
response.sendRedirect(location);
%>
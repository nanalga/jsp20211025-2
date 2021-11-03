<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
// 로그인 관련 작업
String userid = request.getParameter("userid");
session.setAttribute("user", userid);

// main.jsp로 리디렉션
response.sendRedirect("10main.jsp");

%>
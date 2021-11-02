<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

num1 : <%= request.getParameter("num1") %> <br>
num2 : <%= request.getParameter("num2") %> <br>

<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");

int iNum1 = Integer.parseInt(num1);
int iNum2 = Integer.parseInt(num2);

// int n1 = Integer.parseInt(request.getParameter("num1"));
// int n2 = Integer.parseInt(request.getParameter("num2"));

int result = iNum1 + iNum2;
%>

<%=num1%> + <%=num2 %> = <%= result %>


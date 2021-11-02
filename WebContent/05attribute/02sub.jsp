<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<div>

<%
Integer n1 = (Integer)request.getAttribute("num1");
Integer n2 = (Integer)request.getAttribute("num2");
%>

<%= n1 %> + <%= n2 %> = <%= n1 + n2 %> <br>

</div>

<div>
<%-- el로 attribute를 편리하게 이용 --%>
${num1 } + ${num2 } = ${num1 + num2}
</div>

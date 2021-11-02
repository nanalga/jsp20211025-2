<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인 확인</h1>
<%
String userid = request.getParameter("id");
String password = request.getParameter("password");

if (userid != null && password != null) {
	if(userid.equals("myid") && password.equals("mypassword")){
%>
		<h1>로그인 성공</h1>
<%
	} else {
%>
		<h1>아이디 또는 패스워드가 일치하지 않습니다.</h1>
<%
	}
}
%>

<hr>

<a href="<%= request.getContextPath() %>>/02request/35login-form.jsp">로그인 화면으로 돌아가기</a>

</body>
</html>
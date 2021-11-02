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
<form action="" method="post">
	<input type="text" name="city" id="" value="jeju">
	<br>
	<input type="text" name="song" id="" value="mafia">
	<br>
	<input type="submit" value="전송">

</form>


<jsp:include page="10post-param-sub.jsp">
	<jsp:param value="trump" name="person"/>
</jsp:include>

</body>
</html>
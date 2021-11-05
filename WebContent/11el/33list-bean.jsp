<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
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
//List<Bean04> list = new ArrayList<>();
Bean04 b1 = new Bean04();
b1.setNickName("ironman");
b1.setAge(44);

Bean04 b2 = new Bean04();
b2.setNickName("둘리");
b2.setAge(80);

Bean04[] list = {b1, b2};


//list.add(b1);
//list.add(b2);

pageContext.setAttribute("list", list);
%>

<p>${list[0].nickName } : ${list[0].age }</p>
<p>${list[1].nickName } : ${list[1].age }</p>

</body>
</html>
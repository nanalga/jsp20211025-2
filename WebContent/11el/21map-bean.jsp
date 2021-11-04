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
// 코드작성
// page 영역 attribute로 map 객체를 data라는 이름을 넣고 
// map에 key, value 쌍을 (key1, bean04객체)로 추가

Map<String, Bean04> map = new HashMap<>();

Bean04 obj1 = new Bean04();
obj1.setNickName("pororo");
obj1.setAge(30);

map.put("key1", obj1);

pageContext.setAttribute("data", map);
%>

<p>nickName : ${data.key1.nickName }</p>
<p>age : ${data.key1.age }</p>
<p>vip : ${data.key1.vip }</p>

<hr>

<p>nickName : ${data["key1"]["nickName"] }</p>
<p>age : ${data["key1"]["age"] }</p>
<p>vip : ${data{"key1"]["vip"] }</p>


</body>
</html>
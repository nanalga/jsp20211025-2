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
<h1>Java Bean</h1>
<ul>
	<li>기본 생성자</li>
	<li>get, set 메소드</li>
</ul>

<hr>

<h1>Java Bean Properties (속성)</h1>
<p>get, set 메소드에 의해 결정됨</p>
<p>property의 이름은 get, set 메소드의 get/set을 지우고 앞글자를 소문자로 함</p>


<%--
Bean02 클래스 java bean 규칙으로 만들기

아래 두개의 프로퍼티를 갖도록 만드세요.
프로퍼티 name (read/write)
프로퍼티 age (read/write)

 --%>

</body>
</html>
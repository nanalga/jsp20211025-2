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
<h1>map</h1>

<%
Map<String, String> map = new HashMap<>();
map.put("lang", "java");
map.put("pre", "html");
map.put("pattern", "mvc");
// 2개 key, value 쌍(entry) 넣고
map.put("movie", "popcorn");
map.put("volvo", "XC90");

pageContext.setAttribute("bean1", map);
%>

<hr>

<p>map : ${bean1 }</p>
<p>lang : ${bean1.lang }</p>
<p>pre : ${bean1.pre }</p>
<p>pattern : ${bean1.pattern }</p>
<%-- 위에 추가한 value를 출력 el사용 --%>
<p>movie : ${bean1.movie }</p>
<p>volvo : ${bean1.volvo }</p>
</body>
</html>
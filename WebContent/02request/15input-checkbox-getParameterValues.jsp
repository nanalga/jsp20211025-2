<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
code 작성
<!-- form>()input:c)*5+br+input:s -->
<form action="">
	<img alt="" src="pororo.jpg" width="50px" height="50px"><br>
	<input type="checkbox" name="movie" value="아이언맨" id=""> 아이언맨
	<img alt="" src="pororo.jpg" width="50px" height="50px"><br>
	<input type="checkbox" name="movie" value="스파이더맨" id=""> 스파이더맨
	<img alt="" src="pororo.jpg" width="50px" height="50px"><br>
	<input type="checkbox" name="movie" value="토르" id=""> 토르
	<img alt="" src="pororo.jpg" width="50px" height="50px"><br>
	<input type="checkbox" name="movie" value="캡틴아메리카" id=""> 캡틴아메리카
	<img alt="" src="pororo.jpg" width="50px" height="50px"><br>
	<input type="checkbox" name="movie" value="어벤져스"id=""> 어벤져스
	<br>
	<input type="submit" value="전송">
</form>

<hr>
<ul>
<%
String[] movies = request.getParameterValues("movie");
if (movies != null) {
	for (String movie : movies) {
		out.print("<li>");
		out.print(movie);
		out.print("</li>");
	}
}
%>
</ul>
</body>
</html>
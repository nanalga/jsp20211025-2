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
<h1>login</h1>
<!-- form[method:post]>inpput[name:id]+input[name:password]+input:s -->

<form action="" method="post">
	ID : <input type="text" name="id" placeholder="아이디 입력"> <br>
	PW : <input type="password" name="password" placeholder="패스워드 입력"> <br>
	<input type="submit" value="전송">
</form>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	
	if(id != null && pw != null && id.equals("myid") && pw.equals("mypassword")) {
		out.print("로그인 성공");
	} else {
		out.print("<script>");
		out.print("alert('아이디나 패스워드가 일치하지 않습니다.')");
		out.print("</script>");
	}
%>

</body>
</html>
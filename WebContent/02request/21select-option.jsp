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

<!-- form>input:number+select>(opt)*4^input:number+input:s -->
<form action="">
	<input type="number" name="num1" id="">
	<select name="operator" id="">
		<option value="plus">+</option>
		<option value="minus">-</option>
		<option value="times">X</option>
		<option value="divide">/</option>
	</select>
	<input type="number" name="num2" id="">
	<input type="submit" value="계산">
</form>

<hr>

<%-- 계산결과가 출려되도록 작성 --%>
<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");

String oper = request.getParameter("operator");

int res = 0;
String opStr = "";
if (num1 == null || num1.isEmpty()){
	out.print("숫자1를 입력해주세요");
	out.print("<br>");
} else if (num1 == null || num1.isEmpty()){
	out.print("숫자2를 입력해주세요");
} else {
	int iNum1 = Integer.parseInt(num1);
	int iNum2 = Integer.parseInt(num2);
	
	switch(oper){
	case "plus":
		res = iNum1 + iNum2;
		opStr = "+";
		//out.print(iNum1 + " + " + iNum2 + " = " + (iNum1+iNum2));
	break;
	case "minus":
		res = iNum1 - iNum2;
		opStr = "-";
		//out.print(iNum1 + " - " + iNum2 + " = " + (iNum1-iNum2));
	break;
	case "times":
		res = iNum1 * iNum2;
		opStr = "X";
		//out.print(iNum1 + " X " + iNum2 + " = " + (iNum1*iNum2));
	break;
	case "divide":
		res = iNum1 / iNum2;
		opStr = "/";
		//out.print(iNum1 + " / " + iNum2 + " = " + (iNum1/iNum2));
	break;
	}
}

%>
<div><%= num1 %> <%= opStr %> <%= num2 %> <%= "=" %> <%= res %></div>
<br>
num1 : <%= num1 %> <br>
num2 : <%= num2 %> <br>
oper : <%= oper %>

</body>
</html>
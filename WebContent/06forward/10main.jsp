<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>



<%
String code = request.getParameter("code");
%>

<%
if ("food".equals(code)){
	String[] foodList = {"apple", "bannan", "mellon"};
	request.setAttribute("food", foodList);
%>
	<jsp:forward page="10pagea.jsp"></jsp:forward>
<%
} else if ("song".equals(code)){
	List<String> songList = new ArrayList<>();
	songList.add("nextLevel");
	songList.add("butter");
	songList.add("A-chu");
	request.setAttribute("song", songList);
	
%>
	<jsp:forward page="10pageb.jsp"></jsp:forward>
<%
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.MyBook"%>

<%
	Object attr = request.getAttribute("books");
	List<MyBook> list = (List<MyBook>) attr;
%>

<ul>
	<%
		for(MyBook book : list){
	%>
		<li><%= book.getTitle() %> : <%= book.getPrice() %></li>
	<%
		}
	%>
</ul>

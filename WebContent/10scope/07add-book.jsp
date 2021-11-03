<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@page import="sample01.MyBook"%>

<%
List<MyBook> books = (List<MyBook>) application.getAttribute("books");

if(books == null) {
	books = new ArrayList<>();
	application.setAttribute("books", books);
}

String title = request.getParameter("title");
//String price1 = request.getParameter("price");
int price2 = Integer.parseInt(request.getParameter("price"));

if(title != null && price2 != 0){
	books.add(new MyBook(title, price2));
}

response.sendRedirect("07book-list.jsp");
%>
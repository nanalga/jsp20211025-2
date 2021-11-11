<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample03javabean.Bean06"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
// 1. 파라미터로 받은 정보 값을 bean06객체로 만들어서
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String priceStr = request.getParameter("price");
int price = Integer.parseInt(priceStr);
String publisher = request.getParameter("publisher");
String stockStr = request.getParameter("stock");
int stock = Integer.parseInt(stockStr);

Bean06 book = new Bean06(title, writer, price, publisher, stock);

// 2. application영역에 저장(db저장)
List<Bean06> list = (List<Bean06>) application.getAttribute("books");
if(list == null) {
	list = new ArrayList<>();
	application.setAttribute("books", list);
}
list.add(book);


// 3. 25list-book.jsp로 redirect
response.sendRedirect("25list-book-tag.jsp");
%>
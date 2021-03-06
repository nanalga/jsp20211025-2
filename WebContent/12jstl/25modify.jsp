<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>

	<c:set value="${applicationScope.books[param.index] }" var="book" />

	<h1>책 수정</h1>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<form action="25modify-process.jsp" method="post">
					<div class="form-group">
						<input type="hidden" name="index" class="form-control" id="index" value="${param.index }">
					</div>
					<div class="form-group">
						<label for="title">책제목</label>
						<input type="text" name="title" class="form-control" id="title" value="${book.title }">
					</div>
					<div class="form-group">
						<label for="writer">저자</label>
						<input type="text" name="writer" class="form-control" id="writer" value="${book.writer }">
					</div>
					<div class="form-group">
						<label for="price">가격</label>
						<input type="text" name="price" class="form-control" id="price" value="${book.price }">
					</div>
					<div class="form-group">
						<label for="publisher">출판사</label>
						<input type="text" name="publisher" class="form-control" id="publisher" value="${book.publisher }">
					</div>
					<div class="form-group">
						<label for="publisher">재고</label>
						<input type="text" name="stock" class="form-control" id="stock" value="${book.stock }">
					</div>
					<button type="submit" class="btn btn-primary" value="등록">등록</button>
				</form>
			</div>
		</div>
	</div>

	<br>

	<a href="25list-book-tag.jsp">책 목록 보기</a>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
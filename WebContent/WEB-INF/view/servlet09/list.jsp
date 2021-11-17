<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
	<div class="container">
		<div class="row">
			<div class="col-2">
				<%-- sub contents --%>
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/servlet09/main">MAIN</a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/servlet09/add">ADD</a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/servlet09/list">LIST</a></li>
				</ul>
			</div>
			<div class="col-8">
				<%-- main contents --%>
				<h1>책 목록</h1>
				<!-- table.table>thead>tr>th*6^^tbody -->
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>제목</th>
							<th>저자</th>
							<th>가격</th>
							<th>출판사</th>
							<th>재고</th>
							<th>삭제</th>
							<th>수정</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${books }" var="book" varStatus="status">
							<tr>
								<th>${status.count }</th>
								<th>${book.title }</th>
								<th>${book.writer }</th>
								<th>${book.price }</th>
								<th>${book.publisher }</th>
								<th>${book.stock }</th>
								<th>
									<c:url value="/servlet09/remove" var="removeUrl">
										<c:param name="id" value="${status.index }"  />
									</c:url>
									<button type="button" class="btn btn-primary removeBtn" data-toggle="modal" data-target="#deleteModal1" data-link="${removeUrl }">
										<i class="fas fa-trash"></i>
									</button>
								</th>
								<th>
									<c:url value="/servlet09/modify" var="modifyUrl">
										<c:param name="id" value="${status.index }" />
									</c:url>
									<!-- a.btn.btn-warning>i.fas.fa-edit -->
									<a href="${modifyUrl }" class="btn btn-warning">
										<i class="fas fa-edit"></i>
									</a>
								</th>
							</tr>
						</c:forEach>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="deleteModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deleteModal1">삭제 확인</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">삭제 하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
					<a href="" id="removeModalBtn" type="button" class="btn btn-primary">삭제</a>
				</div>
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
	
	<script>
		$(document).ready(function(){
			$(".removeBtn").click(function(){
				let link = $(this).attr("data-link");
				$("#removeModalBtn").attr("href", link);
			});
		});
	
	</script>
	
</body>
</html>
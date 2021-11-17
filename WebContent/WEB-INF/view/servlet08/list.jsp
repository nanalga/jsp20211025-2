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
	<!-- .container>.row>.col-2+.col-10 -->
	<div class="container">
		<div class="row">
			<div class="col-2">
				<%-- side menu --%>
				<!-- ul.nav.flex-colum>li.nav-item*3>a.nav-link -->
				<ul class="nav flex-colum">
					<li class="nav-item"><a href="${pageContext.request.contextPath }/servlet08/main" class="nav-link">MAIN</a></li>
					<li class="nav-item"><a href="${pageContext.request.contextPath }/servlet08/add" class="nav-link">ADD</a></li>
					<li class="nav-item"><a href="${pageContext.request.contextPath }/servlet08/list" class="nav-link">LIST</a></li>
				</ul>
			</div>
			<div class="col-10">
				<%-- 메인 컨텐츠  책 목록 --%>
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
								<td>
									<c:url value="/servlet08/remove" var = "removeUrl">
										<c:param name="id" value="${status.index }" />
									</c:url>
									<!-- button.btn.btn-danger>i.fas.fa-trash -->
									<button class="btn btn-danger removeBtn" data-toggle="modal" data-target="#confirmModal1" data-link="${removeUrl }">
										<i class="fas fa-trash"></i>
									</button>
								</td>
								<td>
									<c:url value="/servlet08/modify" var="modifyUrl">
										<c:param name="id" value="${status.index }" />
									</c:url>
									<!-- a.btn.btn-warning>i.fas.fa-edit -->
									<a href="${modifyUrl }" class="btn btn-warning">
										<i class="fas fa-edit"></i>
									</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="confirmModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">삭제 확인</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">삭제 하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<a id="removeModalBtn1" href="" type="button" class="btn btn-primary">확인</a>
				</div>
			</div>
		</div>
	</div>


	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
	
	<script>
		$(document).ready(function(){
			$(".removeBtn").click(function(){
				let link =$(this).attr("data-link");
				$("#removeModalBtn1").attr("href", link);
			});
		});
	</script>
	
</body>
</html>
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
	<!-- .container>.row>.col>form -->
	<div class="container">
		<div class="row">
			<div class="col">
				<form action="">
					<!-- .input-group.mb-3>input.form-control+.input-group-append>input:s.btn.btn-outline-secondary -->
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="country" value="${param.coutry }">
						<div class="input-group-append">
							<input type="submit" value="검색" class="btn btn-outline-secondary">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- .container>.row>.col>h1{Suppliers} -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Suppliers</h1>

				<!-- table.table>.table>thread>tr>td*8^^tbody -->
				<table div class="table">
					<thread>
					<tr>
						<th>ID</th>
						<th>SupplierName</th>
						<th>ContactName</th>
						<th>Address</th>
						<th>City</th>
						<th>PostalCode</th>
						<th>Country</th>
						<th>Phone</th>
					</tr>
					</thread>
					<tbody>
						<c:forEach items="${supplier }" var="sup">
							<tr>
								<td>${sup.supplierId }</td>
								<td>${sup.supplierName }</td>
								<td>${sup.contactName }</td>
								<td>${sup.address }</td>
								<td>${sup.city }</td>
								<td>${sup.postalCode }</td>
								<td>${sup.country }</td>
								<td>${sup.phone }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
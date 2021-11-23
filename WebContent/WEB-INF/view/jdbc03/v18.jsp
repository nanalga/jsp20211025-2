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
					<!-- .form-group>label+select.form-control#select1>option*3 -->
					<div class="form-group">
						<label for="select1">국가 선택</label>
						<select name="country" id="select1" class="form-control">
						<%-- <option value="UK">UK</option> --%>
						<c:forEach items="${countryList }" var="country">
							<option value="${country }" ${country eq param.country ? 'selected' : '' }>${country }</option>
						</c:forEach>
						</select>
					</div>
					
					<input class="btn btn-primary" type="submit" value="검색">
				</form>
			</div>
		</div>
	</div>
	
	<!-- .container>.row>.col>h1{Suppliers} -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Customers</h1>

				<!-- table.table>.table>thread>tr>td*8^^tbody -->
				<table div class="table">
					<thread>
					<tr>
						<th>ID</th>
						<th>CustomerName</th>
						<th>ContactName</th>
						<th>Address</th>
						<th>City</th>
						<th>PostalCode</th>
						<th>Country</th>
					</tr>
					</thread>
					<tbody>
						<c:forEach items="${customers }" var="cus">
							<tr>
								<td>${cus.customerID }</td>
								<td>${cus.customerName }</td>
								<td>${cus.contactName }</td>
								<td>${cus.address }</td>
								<td>${cus.city }</td>
								<td>${cus.postalCode }</td>
								<td>${cus.country }</td>
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
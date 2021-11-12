<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">

<style>
	#addbeno {
		height: 135px;
		border: 5px;
		padding: 2px solid orange;
		background-color: purple;
		color: white;
	}
	#login {
		height: 135px;
		background-color: MediumSeaGreen;
		text-align: center;
	}
	#news-frmae {
		height:72px;
		text-align: center;
	}

	
</style>


<title>Insert title here</title>
</head>
<body>
	<!-- .container>.row>.col-8+.col -->
	<div class="container">
		<div class="row">
			<div class="col-8">
				<div class="row" id="addbeno">
					<h1>Addidas 광고중</h1>
				</div>
				<div class="row" id="news-frame">
					<div class="col" id="news">
						<p>lorem1</p>
					</div>
					<div class="col" >
						<p>lorem2</p>
					</div>
					<div class="col" id="news">
						<p>lorem3</p>
					</div>
					<div class="col">
						<p>lorem4</p>
					</div>
					<div class="col" id="news">
						<p>lorem5</p>
					</div>
					<div class="col">
						<p>lorem6</p>
					</div>
				</div>
				<div class="row"  >
					<div class="col" >
						<p>lorem1</p>
					</div>
					<div class="col" id="news">
						<p>lorem2</p>
					</div>
					<div class="col" >
						<p>lorem3</p>
					</div>
					<div class="col" id="news">
						<p>lorem4</p>
					</div>
					<div class="col">
						<p>lorem5</p>
					</div>
					<div class="col" id="news">
						<p>lorem6</p>
					</div>
				</div>
				<div class="row"  >
					<div class="col" id="news">
						<p>lorem1</p>
					</div>
					<div class="col" >
						<p>lorem2</p>
					</div>
					<div class="col" id="news">
						<p>lorem3</p>
					</div>
					<div class="col">
						<p>lorem4</p>
					</div>
					<div class="col" id="news">
						<p>lorem5</p>
					</div>
					<div class="col">
						<p>lorem6</p>
					</div>
				</div>
				<div class="row"  >
					<div class="col" >
						<p>lorem1</p>
					</div>
					<div class="col" id="news">
						<p>lorem2</p>
					</div>
					<div class="col" >
						<p>lorem3</p>
					</div>
					<div class="col" id="news">
						<p>lorem4</p>
					</div>
					<div class="col">
						<p>lorem5</p>
					</div>
					<div class="col" id="news">
						<p>lorem6</p>
					</div>
				</div>

			</div>
			<div class="col">
			<div class="row">
				<div class="col" id="login">
					<h1>naver 로그인</h1>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<h1>광고 자리</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque nostrum saepe non magnam eligendi odio officiis consequuntur similique eveniet consequatur enim corrupti tempore commodi eaque veritatis facilis placeat cumque explicabo.</p>
				</div>
			</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>
</body>
</html>
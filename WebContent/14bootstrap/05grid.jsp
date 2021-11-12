<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<style>
.row {
	background-color: silver;
}
.row :nth-child(even) {
	background-color: seaGreen;
}

.row : nth-child(odd) {
	background-color: springGreen;
}
</style>


<title>Insert title here</title>
</head>
<body>

<!-- .container>h1>lorem5^p>lorem -->
<div class="container">
	<h1>Lorem ipsum dolor sit amet.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia perferendis reprehenderit iure voluptas porro aliquam minima sint nam molestiae libero iste ducimus corporis praesentium quisquam incidunt. Iure quisquam molestias ullam.</p>
</div>

<hr>

<!-- .container>.row -->
<div class="container">
	<div class="row">
		<div class="col">
			<!-- h1>lorem5^p>lorem -->
			<h1>Lorem ipsum dolor sit amet.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt quasi saepe quidem hic eius obcaecati dolorem aperiam quam natus vel facere iste quas autem illum fugiat similique necessitatibus cupiditate eos.</p>
		</div>		
	</div>
</div>

<hr>

<!-- .container>.row>.col*12>lorem1 -->
<div class="container">
	<div class="row">
		<div class="col">Lorem.</div>
		<div class="col">Corrupti.</div>
		<div class="col">Ipsam.</div>
		<div class="col">Odit.</div>
		<div class="col">Ad.</div>
		<div class="col">Quas.</div>
		<div class="col">Necessitatibus.</div>
		<div class="col">Commodi.</div>
		<div class="col">Sint.</div>
		<div class="col">Perferendis.</div>
		<div class="col">Omnis?</div>
		<div class="col">Quibusdam!</div>
	</div>
</div>

<hr>

<!-- .container>.row>.col*4>lorem1 -->
<div class="container">
	<div class="row">
		<div class="col">Lorem.</div>
		<div class="col">Voluptatum.</div>
		<div class="col">Adipisci!</div>
		<div class="col">Quae.</div>
	</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
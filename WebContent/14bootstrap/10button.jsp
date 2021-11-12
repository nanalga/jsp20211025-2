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

<title>Insert title here</title>
</head>
<body>

<!-- button.btn.btn-info*10>lorem1 -->
<button class="btn">Lorem.</button>
<button class="btn btn-primary">Quas.</button>
<button class="btn btn-secondary">Labore?</button>
<button class="btn btn-success">Incidunt?</button>
<button class="btn btn-info">Necessitatibus?</button>
<button class="btn btn-warning">Ipsum.</button>
<button class="btn btn-danger">Id.</button>
<button class="btn btn-dark">Beatae.</button>
<button class="btn btn-light">Officiis!</button>
<button class="btn btn-link">Soluta.</button>

<hr>

<button class="btn btn-lg">Lorem.</button>
<button class="btn btn-primary btn-lg">Quas.</button>
<button class="btn btn-secondary btn-sm">Labore?</button>
<button class="btn btn-success btn-sm">Incidunt?</button>
<button class="btn btn-info btn-xs">Necessitatibus?</button>
<button class="btn btn-warning btn-xs">Ipsum.</button>
<button class="btn btn-danger">Id.</button>
<button class="btn btn-dark">Beatae.</button>
<button class="btn btn-light">Officiis!</button>
<button class="btn btn-link">Soluta.</button>

<hr>

<!-- outline buttons -->

<!-- button.btn.btn-outline*10>lorem1 -->
<button class="btn btn-outline-primary">Lorem.</button>
<button class="btn btn-outline-secondary">Magnam!</button>
<button class="btn btn-outline-success">Ab.</button>
<button class="btn btn-outline-info">Dignissimos.</button>
<button class="btn btn-outline-warning">Eveniet!</button>
<button class="btn btn-outline-danger">Sapiente.</button>
<button class="btn btn-outline-dark">Quos.</button>
<button class="btn btn-outline-light">Ipsam!</button>
<button class="btn btn-outline-link">Blanditiis.</button>
<button class="btn btn-outline">Voluptatum!</button>

<hr>
<!-- button.btn.btn-primary>lorm -->
<button class="btn btn-primary">Lorem.</button>

<input type="button" value="lorem" class="btn btn-primary">

<input type="submit" value="submit" class="btn btn-primary">

<a href="#" class="btn btn-primary">lorem</a>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
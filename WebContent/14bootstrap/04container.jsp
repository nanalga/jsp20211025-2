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
.container {
	background-color: skyblue;
}
div {
	background-color: silver;
}

.container-fluid {
	background-color: springGreen;
}

</style>
<title>Insert title here</title>
</head>
<body>

<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui possimus commodi enim aperiam nulla voluptatem earum iste harum laboriosam dolores repellat quia molestiae amet tempora sunt hic rerum? Possimus molestias.</div>

<div class="container">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima voluptate illum soluta officia aliquid exercitationem placeat quidem laboriosam consequuntur rerum perspiciatis nulla repudiandae veniam rem odit. Laudantium aliquid placeat corporis.</div>

<div class="container-fluid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta animi reiciendis id tempore voluptatem officia vero ut placeat sequi dolorum repellat quisquam libero at neque assumenda totam vitae. Harum veniam.</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
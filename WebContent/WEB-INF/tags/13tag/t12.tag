<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<%@ attribute name="a" type="java.lang.String[]"%>
<%@ attribute name="b" type="java.lang.Integer[]" %>

<c:forEach items="${a }" var="item">
	${item } <br>
</c:forEach>

<hr>

<c:forEach items="${b }" var="item">
	${item } <br>
</c:forEach>
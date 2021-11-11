<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<%@ tag dynamic-attributes="others" %>

<ul>
	<c:forEach items="${others }" var="item">
		<li>${item.key } : ${item.value }</li>
	</c:forEach>
</ul>

<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag"%>
<%@ attribute name="dan" type="java.lang.Integer"%>

<div>
	<c:forEach begin="1" end="9" var="i">
		<p>${dan } x ${i } = ${dan * i } </p>
	</c:forEach>
</div>
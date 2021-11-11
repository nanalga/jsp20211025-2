<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag"%>
<%@ attribute name="datas" type="java.lang.Object"%>
<%-- <%@ attribute name="datas" type="java.util.List"%> --%>

<ul>
	<c:forEach items="${datas }"  var="item">
		<li>${item }</li>
	</c:forEach>
</ul>
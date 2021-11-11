<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag"%>
<%@ attribute name="datas" type="java.lang.Object"%>
<%-- <%@ attribute name="datas" type="java.util.Map"%> --%>


<table class="table">
	<c:forEach items="${datas }" var="item" >
		<tr>
			<td>${item.key }</td>
			<td>${item.value }</td>
		</tr>
	</c:forEach>
</table>
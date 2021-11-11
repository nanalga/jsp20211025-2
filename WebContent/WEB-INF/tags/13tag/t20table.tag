<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag"%>

<table class="table table-hover">
	<thead>
		<tr>
			<th>#</th>
			<th>삭제</th>
			<th>#</th>
			<th>제목</th>
			<th>저자</th>
			<th>가격</th>
			<th>출판사</th>
			<th>재고</th>
		</tr>
	</thead>

	<tbody>
		<c:forEach items="${books }" var="item" varStatus="status">
			<tr>
				<c:url value="25delete.jsp" var="deleteUrl">
					<c:param name="index" value="${status.index }"></c:param>
				</c:url>
				<c:url value="25modify.jsp" var="modifyUrl">
					<c:param name="index" value="${status.index }"></c:param>
				</c:url>

				<td><a class="btn btn-danger" href="${deleteUrl }"> <i
						class="fas fa-trash-alt"></i>
				</a> <a href="${modifyUrl }" class="btn-secondary"> <i
						class="fas fa-edit"></i>
				</a></td>
				<td><c:out value="${status.count }" /></td>
				<td><c:out value="${item.title }" /></td>
				<td><c:out value="${item.writer }" /></td>
				<td><c:out value="${item.price }" /></td>
				<td><c:out value="${item.publisher }" /></td>
				<td><c:out value="${item.stock }" /></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

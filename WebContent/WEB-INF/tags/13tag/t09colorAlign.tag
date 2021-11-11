<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<%@ attribute name="color" %>
<%@ attribute name="align" %>

<div style="color: ${color }; text-align: ${align };">
	<jsp:doBody />
</div>

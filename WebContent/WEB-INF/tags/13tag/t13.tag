<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<%@ attribute name="a" type="sample03javabean.Bean06" %>

<p>${a.title }</p>
<p>${a.writer }</p>
<p>${a.price }</p>
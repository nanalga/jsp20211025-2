<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%-- userid parameter가 iamnomal이면
	07viewnomal.jsp로 포워딩
	
	userid parameter가 iamvip면
	07viervip.jsp로 포워딩
 --%>
 
 <%
 	String id = request.getParameter("userid");
 	
 	if(id.equals("iamnomal")){
 %>
 		<jsp:forward page="/WEB-INF/view/06forward/08view1normal.jsp"/>
 <%
 	} else if(id.equals("iamvip")) {
%> 		
 		<jsp:forward page="/WEB-INF/view/06forward/08view2vip.jsp"/>
<%
 	} else {
 		
 %>
 		<li>잘못 입력하셨습니다.</li>
 		<a href="08form.jsp">login 이동</a>
 <%
 	}
 %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl - catch</title>
</head>
<body>
<h2>Recieve</h2>
<p>lon : ${param.x }, lat : ${param.y }</p>
<!-- 만약, 배달사고가 있을 경우 대비하여 예외처리할 수 있음 -->
<c:catch var="error">
	<%
		int x = Integer.parseInt(request.getParameter("x"));
		int y = Integer.parseInt(request.getParameter("y"));
	%>
	<br>
	lon : <%=x %>, lat : <%=y %>
</c:catch>
<c:if test="${!empty error }">
	<p>에러 : ${error }</p>
</c:if>
</body>
</html>
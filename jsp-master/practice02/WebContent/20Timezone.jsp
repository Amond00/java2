<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt - timeZone</title>
</head>
<body>
<h2>Timezone - 지역시간대</h2>
<c:set var="today" value="<%=new Date() %>" />
<p>${today }</p>
<h3>서울</h3>
<p>
	<fmt:timeZone value="Asia/Seoul">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</fmt:timeZone>
</p>
<h3>토쿄</h3>
<p>
	<fmt:timeZone value="Asia/Tokyo">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</fmt:timeZone>
</p>
<h3>뉴욕</h3>
<p>
	<fmt:timeZone value="America/New_York">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</fmt:timeZone>
</p>
<h3>런던</h3>
<p>
	<fmt:timeZone value="Europe/London">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</fmt:timeZone>
</p>
<h3>파리</h3>
<p>
	<fmt:timeZone value="Europe/Paris">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</fmt:timeZone>
</p>
<h3>세계표준시</h3>
<p>
	<fmt:timeZone value="UTC">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</fmt:timeZone>
</p>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt - formatDate</title>
</head>
<body>
<h2>formatDate</h2>
<c:set var="today" value="<%=new Date() %>" />
<p>${today }</p>
<h3>type 속성</h3>
<p>type : both - <fmt:formatDate value="${today }" type="both"/></p>
<p>type : date - <fmt:formatDate value="${today }" type="date"/></p>
<p>type : time - <fmt:formatDate value="${today }" type="time"/></p>
<h3>dateStyle/timeStyle 속성</h3>
<h4>date의 경우</h4>
<p>dateStyle : full - <fmt:formatDate value="${today }" type="date" dateStyle="full"/></p>
<p>dateStyle : long - <fmt:formatDate value="${today }" type="date" dateStyle="long"/></p>
<p>dateStyle : medium - <fmt:formatDate value="${today }" type="date" dateStyle="medium"/></p>
<p>dateStyle : short - <fmt:formatDate value="${today }" type="date" dateStyle="short"/></p>
<h4>time의 경우</h4>
<p>dateStyle : full - <fmt:formatDate value="${today }" type="time" dateStyle="full"/></p>
<p>dateStyle : long - <fmt:formatDate value="${today }" type="time" dateStyle="long"/></p>
<p>dateStyle : medium - <fmt:formatDate value="${today }" type="time" dateStyle="medium"/></p>
<p>dateStyle : short - <fmt:formatDate value="${today }" type="time" dateStyle="short"/></p>
<h4>both의 경우</h4>
<p>timeStyle : full - <fmt:formatDate value="${today }" type="both" timeStyle="full"/></p>
<p>timeStyle : long - <fmt:formatDate value="${today }" type="both" timeStyle="long"/></p>
<p>timeStyle : medium - <fmt:formatDate value="${today }" type="both" timeStyle="medium"/></p>
<p>timeStyle : short - <fmt:formatDate value="${today }" type="both" timeStyle="short"/></p>
<br>
<p>dateStyle : full - <fmt:formatDate value="${today }" type="both" dateStyle="full"/></p>
<p>dateStyle : long - <fmt:formatDate value="${today }" type="both" dateStyle="long"/></p>
<p>dateStyle : medium - <fmt:formatDate value="${today }" type="both" dateStyle="medium"/></p>
<p>dateStyle : short - <fmt:formatDate value="${today }" type="both" dateStyle="short"/></p>
<h3>pattern 속성</h3>
<!--
y:년도, M:월, d:일, D:1월1일부터 몇 번째 날인지, E:요일
a:오전/오후 h:12시간제, H:24시간제, m:분, s:초, S:밀리초  
 -->
<p><fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
<p><fmt:formatDate value="${today }" pattern="yy/M/d E H:m:s" /></p>
</body>
</html>
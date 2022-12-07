<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "콩쥐");
	pageContext.setAttribute("age", "29");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>pageContext</h2>
	<!-- include 디렉티브로 포함된 파일인 includeFile.jsp 이 자체 컴파일되어 가져옴 -->
	<%@ include file="includeFile.jsp" %>
	<!-- include 액션태그로 포함된 파일인 includeFile.jsp 가져와서 현재 파일과 같이 컴파일됨 -->
	<jsp:include page="includeFile.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//application.setInitParameter("kbs", "방송국입니다.");
	out.println("user id : "+application.getInitParameter("userId"));
	out.println("<h3>메시지</h3>"+request.getParameter("msg"));
	out.println("<h3>페이지</h3>"+pageContext.getAttribute("pageData"));
	out.println("<h3>리퀘스트</h3>"+request.getAttribute("requestData"));
	out.println("<h3>세션</h3>"+session.getAttribute("sessionData"));
	out.println("<h3>어플리케이션</h3>"+application.getAttribute("applicationData"));
	out.println("<h3>어플리케이션 메시지</h3>"+application.getAttribute("msg"));
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<%
	//session.removeAttribute("m_id");
	//session.removeAttribute("m_pw");
	session.invalidate();
	response.sendRedirect("index.jsp");
%>
</body>
</html>
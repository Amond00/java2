<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	response.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
%>
	<p> 보내온 메시지 : <%=msg %></p>
	<p> 콘텐츠 유형 : <%=response.getContentType() %>
	<p> 문자 인코딩 : <%=response.getCharacterEncoding() %>
	<p> 추가된 헤더 : <%=request.getHeader("Site") %>
	<p> 설정된 헤더 : <%=request.getHeader("Url") %>
	<p> 저장된 상태코드 : <%=response.getStatus() %></p>
	<p> 저장된 세션정보 : <%=session.getAttribute("id") %></p>
</body>
</html>
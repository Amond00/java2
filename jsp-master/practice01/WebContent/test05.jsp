<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp - response 객체</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	response.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Cookie cookie = null;
	response.addHeader("Site","https://okgunyang.github.io");
	response.setHeader("Url","https://github.com/okgunyang");

	if(id.equals("admin") && pw.equals("1234")){
		//만약, 아이디와 비밀번호가 맞으면, 로그인 처리하고, login_ok.jsp 로 이동
		session.setAttribute("id", id);
		//쿠키 추가
		//response.addCookie(cookie);
		out.println("<a href='login_ok.jsp?msg=로그인성공'>로그인 성공</a>");
		//response.sendRedirect("login_ok.jsp");
	} else {
		//일치하지 않으면, 원래 페이지인 loginForm.html 로 이동
		response.sendRedirect("loginForm.html");
		//현재 처리된 내용의 상태코드를 설정
		response.setStatus(404);
		//해당 상태코드의 메시지 보내기
		response.sendError(404, "해당 하는 페이지가 존재하지 않습니다.");
	}
%>
	<p> 콘텐츠 유형 : <%=response.getContentType() %>
	<p> 문자 인코딩 : <%=response.getCharacterEncoding() %>
	<p> 추가된 헤더 : <%=response.getHeader("Site") %>
	<p> 설정된 헤더 : <%=response.getHeader("Url") %>
	<p> 추가된 헤더 존재 유무 확인 : <%=response.containsHeader("Site") %></p>
	<p> 설정된 헤더 존재 유무 확인 : <%=response.containsHeader("Url") %></p>
	<p> 저장된 상태코드 : <%=response.getStatus() %></p>
	<p> 저장된 세션정보 : <%=session.getAttribute("id") %></p>
</body>
</html>
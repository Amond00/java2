<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 받기</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String msg = "id : "+id+", pw : "+pw+", name : "+name;
	//response.sendRedirect("index.jsp?msg="+msg);
%>
	<ul>
		<li>id : <%=id %></li>
		<li>pw : <%=pw %></li>
		<li>name : <%=name %></li>
	</ul>
</body>
</html>
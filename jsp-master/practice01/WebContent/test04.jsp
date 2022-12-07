<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp - request 객체 : 전송 받은 데이터를 처리하여 출력</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	int age = Integer.parseInt(request.getParameter("age"));
	String[] pet = request.getParameterValues("pet");
	ArrayList<String> lst = new ArrayList<>();
	for(int i=0;i<pet.length;i++){
		lst.add(pet[i]);
	}
	String male = request.getParameter("male");
	String area = request.getParameter("area");
%>
이름 : <%=name %><br>
주소 : <%=addr %><br>
나이 : <%=age %><br>
좋아하는 동물<br>
<%
	for(int i=0;i<pet.length;i++){
		out.println(pet[i]+"<br>");
	}
%>
좋아하는 동물2<br>
<%
	for(int i=0;i<pet.length;i++){
		out.println(lst.get(i)+"<br>");
	}
%>
성별 : <%=male %><br>
선택지역 : <%=area %><br>
<br><hr><br>
프로토콜 : <%=request.getProtocol() %><br>
요청된 서버이름 : <%=request.getServerName() %><br>
요청방식 : <%=request.getMethod() %><br>
파라미터열 : <%=request.getQueryString() %><br>
요청주소 : <%=request.getRequestURL() %><br>
요청URI : <%=request.getRequestURI() %><br>
서버이름 : <%=request.getRemoteHost() %><br>
서버주소 : <%=request.getRemoteAddr() %><br>
서버포트 : <%=request.getRemotePort() %><br>
서버포트2 : <%=request.getServerPort() %><br>
현재 문서의 경로 : <%=request.getContextPath() %><br>
어셉트(Accept) : <%=request.getHeader("Accept") %><br>
호스트(host) : <%=request.getHeader("host") %><br>
<br>
<h3>헤더정보 예제</h3>
<table>
	<tr><td>헤더이름</td><td>헤더값</td></tr>
	<%
	Enumeration e = request.getHeaderNames();
	while(e.hasMoreElements()) {
		String headerName = (String)e.nextElement();
	%>
	<tr>
		<td><%=headerName %></td>
		<td><%=request.getHeader(headerName) %></td>
	</tr>
	<%
	} 
	%>
</table>
</body>
</html>
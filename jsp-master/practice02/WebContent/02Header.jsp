<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header 정보 출력</title>
</head>
<body>
<%
	Enumeration e = request.getHeaderNames();	//열거형
	while(e.hasMoreElements()){
		String name = (String) e.nextElement();
		String value = (String) request.getHeader(name);
		out.println("<h3>name : "+name+", value : "+value+"</h3>");
	}
	out.println("<h3>접속 ip 주소 : "+request.getLocalAddr()+"</h3>");
	InetAddress ipaddr = InetAddress.getLocalHost();
	out.println("<h3>접속 서버 ip 주소 : "+ipaddr+"</h3>");
	
%>
</body>
</html>
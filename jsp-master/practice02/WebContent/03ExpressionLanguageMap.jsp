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
<title>03ExpressionLanguageMap - jsp에서 EL 사용하기</title>
</head>
<body>
<%
	String title = "I Love Kimkitae Map + EL TEST";	//문자열
	String[] color = {"gold", "deeppink", "deepskyblue"}; //배열
	
	Map map = new HashMap();		//맵(해시맵)
	map.put("name1", color[0]);
	map.put("name2", color[1]);
	map.put("name3", color[2]);
	
	request.setAttribute("title", title);	//문자열
	request.setAttribute("color", color);	//배열
	request.setAttribute("map", map);	//맵
	//Controller에서 위와 같이 해당 값을 request의 Attribute로 담고, forward로 보냄
%>
<h3>${title}</h3>
<%
	for(int i=0;i<color.length;i++){
%>
	<h3>color : <%=color[i] %></h3>
<%
	}
%>
<h3>${map}</h3>
</body>
</html>
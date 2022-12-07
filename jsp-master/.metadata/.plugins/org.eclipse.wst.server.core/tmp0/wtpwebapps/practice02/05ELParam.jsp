<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%@ page import="com.example.*" %>
<%@ include file="common.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UFT-8");
	response.setContentType("text/html; charset=UTF-8");
	
	//pageContext는 set되는 페이지에서만 인식 가능
	String pageName = (String) pageContext.getAttribute("pname");
	//forward를 해야 인식이 가능
	String reqName = (String) request.getAttribute("rname");
	String sesName = (String) session.getAttribute("sname");
	String appName = (String) application.getAttribute("aname");
	
	String id1 = request.getParameter("id");
	String[] hobby = {"선택안함","선택안함","선택안함","선택안함","선택안함"};
	hobby = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05ELParam - EL로 데이터 받기</title>
</head>
<body>
<h2>scope 데이터의 표현식 대 표현언어</h2>
<p><%=pageName %> : ${pname }</p>
<p><%=reqName %> : ${rname }</p>
<p><%=sesName %> : ${sname }</p>
<p><%=appName %> : ${aname }</p>
<p><%=id1 %> : ${param.id }</p>
<h4>좋아하는 스포츠</h4>
<ul>
	<li>첫 번째 - <%=hobby[0] %> : ${paramValues.hobby[0] }</li>
	<li>두 번째 - <%=hobby[1] %> : ${paramValues.hobby[1] }</li>
	<li>세 번째 - <%=hobby[2] %> : ${paramValues.hobby[2] }</li>
	<li>네 번째 - <%=hobby[3] %> : ${paramValues.hobby[3] }</li>
	<%-- <li>다섯 번째 - <%=hobby[4] %> : ${ paramValues.hobby[4] }</li> --%>
</ul>
</body>
</html>
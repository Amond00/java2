<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%@ page import="com.example.*" %>
<%@ include file="common.jsp" %>
<%
	pageContext.setAttribute("pname", "김기태");
	request.setAttribute("rname", "김태엽");
	session.setAttribute("sname", "강병수");
	application.setAttribute("aname", "김연정");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05ELDataForm</title>
</head>
<body>
	<h2>EL FormData Transmission</h2>
	<form action="05ELParam.jsp" method="post">
		<label for="id">아이디</label> :
		<input type="text" name="id" id="id"><br><br>
		당신이 좋아하는 스포츠는 무엇입니까?<br>
		<input type="checkbox" id="hobby1" name="hobby" value="축구">
		<label for="hobby1">축구</label><br>
		<input type="checkbox" id="hobby2" name="hobby" value="야구">
		<label for="hobby2">야구</label><br>
		<input type="checkbox" id="hobby3" name="hobby" value="배구">
		<label for="hobby3">배구</label><br>
		<input type="checkbox" id="hobby4" name="hobby" value="농구">
		<label for="hobby4">농구</label><br>
		<input type="checkbox" id="hobby5" name="hobby" value="피구">
		<label for="hobby5">피구</label><br><br>
		<input type="submit" value="전송">&nbsp;&nbsp;&nbsp;
		<input type="reset" value=" 취소">
	</form>
</body>
</html>
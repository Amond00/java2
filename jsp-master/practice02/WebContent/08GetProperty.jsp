<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="b" class="com.example.Human"/>
<!-- 폼으로 온 데이터를 접목시킬 인스턴스 설정, 모든 필드를 한 꺼번에 바인딩 -->
<jsp:setProperty property="*" name="b"/>
<%-- <jsp:setProperty property="country" name="b" value="<%=b.getCountry() %>" />
<jsp:setProperty property="name" name="b" value="<%=b.getName() %>" />
<jsp:setProperty property="age" name="b" value="<%=b.getAge() %>" />
<jsp:setProperty property="hobby" name="b" value="<%=b.getHobby() %>" /> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08GetProperty - setProperty, getProperty 액션태그</title>
</head>
<body>
<h2>Expression을 활용한 데이터 가져오기</h2>
<table class="table" border="1" cellpadding="10" cellspacing="0">
	<tr>
		<th>소속국가</th>
		<td><%=b.getCountry() %></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><%=b.getName() %></td>
	</tr>
	<tr>
		<th>나이</th>
		<td><%=b.getAge() %></td>
	</tr>
	<tr>
		<th>취미</th>
		<td><%=b.getHobby() %></td>
	</tr>
</table>
<hr>
<h2>getProperty 액션태그를 활용한 데이터 가져오기</h2>
<table class="table" border="1" cellpadding="10" cellspacing="0">
	<tr>
		<th>소속국가</th>
		<td><jsp:getProperty name="b" property="country" /></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><jsp:getProperty name="b" property="name" /></td>
	</tr>
	<tr>
		<th>나이</th>
		<td><jsp:getProperty name="b" property="age" /></td>
	</tr>
	<tr>
		<th>취미</th>
		<td><jsp:getProperty name="b" property="hobby" /></td>
	</tr>
</table>
<hr>
<h2>Expression Language를 활용한 데이터 가져오기</h2>
<table class="table" border="1" cellpadding="10" cellspacing="0">
	<tr>
		<th>소속국가</th>
		<td>${b.country }</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${b.name }</td>
	</tr>
	<tr>
		<th>나이</th>
		<td>${b.age }</td>
	</tr>
	<tr>
		<th>취미</th>
		<td>${b.hobby }</td>
	</tr>
</table>
</body>
</html>
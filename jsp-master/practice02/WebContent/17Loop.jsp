<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.example.Human" %>
<%
	/* 다른 곳에서 해당 자료를 forward 해야 현재 문서에서 받을 수 없음 */
	/* 스크립트릿으로 선언된 내용은 jstl로 자동 바운딩이 되지 않음 */
	String[] names = {"신길호", "이규진", "김동협", "김태균"};
	ArrayList<String> namelist = new ArrayList<String>();
	namelist.add("여승원");
	namelist.add("이민환");
	namelist.add("임소희");
	namelist.add("김효민");
	
	ArrayList<Human> humanList = new ArrayList<Human>();
	Human h1 = new Human();
	h1.setCountry("네덜란드");
	h1.setName("조재영");
	h1.setAge(22);
	h1.setHobby("때리기");
	humanList.add(h1);
	
	Human h2 = new Human();
	h2.setCountry("잉글랜드");
	h2.setName("정우희");
	h2.setAge(20);
	h2.setHobby("잡기");
	humanList.add(h2);
	
	Human h3 = new Human();
	h3.setCountry("덴마크");
	h3.setName("길정훈");
	h3.setAge(42);
	h3.setHobby("밀기");
	humanList.add(h3);
	
	Human h4 = new Human();
	h4.setCountry("핀란드");
	h4.setName("장성필");
	h4.setAge(36);
	h4.setHobby("꼬집기");
	humanList.add(h4);
	
	String irum = "이민환-여승원-임소희-정우희";
	
	//request.setAttribute("names", names);
	//request.setAttribute("namelist", namelist);
	//request.setAttribute("humanList", humanList);
	//dispatcher("13Loop.jsp");
	//view.forward(request, response);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach, forToken을 활용한 반복문</title>
</head>
<body>
<h2>forEach</h2>
<h3>일반 for문 처럼 활용</h3>
<c:set var="result" value="0"/>
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="result" value="${result+i }" />
</c:forEach>
<p> 결과 : ${result }</p>
<hr>
<h3>배열의 for문 활용</h3>
<c:forEach items="${names }" var="item" varStatus="status">
	<p>${status.count}번 학생 : ${item }</p>
</c:forEach>
<hr>
<h3>리스트의 for문 활용</h3>
<c:forEach items="${namelist }" var="name" varStatus="status">
	<p>${status.count}번 학생 : ${name }</p>
</c:forEach>
<hr>
<h3>리스트 제네릭의 for문 활용</h3>
<c:forEach items="${humanList }" var="human" varStatus="status">
	<p>${status.count}번 학생</p>
	<p>이름 : ${human.name }</p>
	<p>국가 : ${human.country }</p>
	<p>나이 : ${human.age }</p>
	<p>취미 : ${human.hobby }</p>
</c:forEach>
<hr>
<h3>맵의 for문 활용</h3>
<%-- <c:forEach items="${map }" var="item">
	<p>${item.key} : ${item.value }</p>
</c:forEach> --%>
<hr>
<h3>맵 제네릭 for문 활용</h3>
<%-- <c:forEach items="${humanMap }" var="human">
	<p>${human.key }</p>
	<p>${human.value }</p>
</c:forEach> --%>
<hr><hr>
<h2>forToken</h2>
<h3>구분기호가 하나인 경우</h3>
<table>
<thead>
	<tr><th>이름</th></tr>
</thead>
<tbody>
<c:forTokens items="김성민-이규호-김예은-조수민" delims="-" var="name">
	<tr><td>${name }</td></tr>
</c:forTokens>
</tbody>
</table>
<hr>
<h3>구분기호가 여러개 인 경우</h3>
<table>
<thead>
	<tr><th>이름</th></tr>
</thead>
<tbody>
<c:forTokens items="김성민/이규호*김예은 조수민" delims="/* " var="name">
	<tr><td>${name }</td></tr>
</c:forTokens>
</tbody>
</table>

</body>
</html>
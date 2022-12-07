<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl의 변수 선언(c:set)과 제거(c:remove) 그리고, 조건분기문(c:if)과 선택문(c:choose)</title>
</head>
<body>
<h2>set</h2>
<!-- jstl을 활용하여 현재 페이지에서 사용할 변수 num1로 값은 10을 지정하라 -->
<%-- <% pageContext.setAttribute("num1", 10); %> --%>
<c:set var="num1" scope="page" value="10" />
<!-- jstl을 활용하여 애플리케이션내에서 사용할 변수 num2로 값은 20을 지정하라 -->
<%-- <% application.setAttribute("num2", 20); %> --%>
<c:set var="num2" scope="application" value="20" />
<!-- num1과 num2를 합산한 결과를 num3로 변수를 지정하여 저장하고, num1+num2=num3 형식으로 출력 -->
<c:set var="num3" value="${num1+num2 }" />
<p>결과 : ${num1 } + ${num2 } = ${num3 }</p>

<hr><hr>
<h2>객체 활용</h2>
<h3>액션 태그를 활용한 객체 활용</h3>
<!-- Human 클래스를 활용하여 객체명은 vo로 하고, 국가는 대한민국, 이름은 김동엽, 나이는 98, 
취미는 등산을 지정하고, 출력하라 -->
<jsp:useBean id="vo" class="com.example.Human" />
<jsp:setProperty property="country" value="대한민국" name="vo" />
<jsp:setProperty property="name" value="김동협" name="vo" />
<jsp:setProperty property="age" value="98" name="vo" />
<jsp:setProperty property="hobby" value="등산" name="vo" />
<p>국가 : ${vo.country }<br>이름 : ${vo.name }<br>나이 : ${vo.age }세<br>취미 : ${vo.hobby }</p>
<h3>jstl을 활용한 객체 활용</h3>
<c:set target="${vo }" property="country" value="인도네시아" />
<c:set target="${vo }" property="name" value="김태균" />
<c:set target="${vo }" property="country" value="7" />
<c:set target="${vo }" property="country" value="참치낚시" />
<p>국가 : ${vo.country }<br>이름 : ${vo.name }<br>나이 : ${vo.age }세<br>취미 : ${vo.hobby }</p>
<hr><hr>
<h2>remove</h2>
<h3>일반 변수(Primitive type) 제거</h3>
<c:set var="irum" value="장성필" />
<p>이름 : ${irum }</p>
<!-- irum 변수를 제거하라 -->
<c:remove var="irum" />
<h3>객체(Reference type) 제거</h3>
<!-- vo 객체를 제거하라 -->
<c:remove var="vo" />
<hr><hr>
<h2>if</h2>
<!-- num1이 num2보다 크면, 10이 20보다 크다  -->
<c:if test="${num1 > num2 }">
	<p>${num1 }이 ${num2 }보다 크다</p>
</c:if>
<!-- num1이 num2보다 작으면, 10이 20보다 작다  -->
<c:if test="${num1 < num2 }">
	<p>${num1 }이 ${num2 }보다 작다</p>
</c:if>
<!-- num1과 num2가 같으면, 10과 20이 같다  -->
<c:if test="${num1==num2 }">
	<p>${num1 }과 ${num2 }이 같다</p>
</c:if>

<hr><hr>
<h2>choose, when, otherwise</h2>
<c:choose>
<!-- num1이 num2보다 크면, 10이 20보다 크다  -->
	<c:when test="${num1>num2 }">
		<p>${num1 }이 ${num2 }보다 크다</p>
	</c:when>
<!-- num1이 num2보다 작으면, 10이 20보다 작다  -->
	<c:when test="${num1<num2 }">
		<p>${num1 }이 ${num2 }보다 작다</p>
	</c:when>
<!-- num1과 num2가 같으면, 10과 20이 같다  -->
	<c:otherwise>
		<p>${num1 }과 ${num2 }이 같다</p>
	</c:otherwise>
</c:choose>
</body>
</html>
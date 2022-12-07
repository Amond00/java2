<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %><!-- 페이지 디렉티브 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹 문서 테스트</title>
</head>
<body>
<%!
	//선언문 - 객체, 변수, 메소드 선언시
	int[] jumsu = {50, 60, 80};
	String[] names = {"김","이","박"};
	int a = 20;
	int b = 30;
	Date now = new Date();
%>
<hr>
<%
	//처리 구문 -> 스크립트릿(scriptlet) : 자바코드
	int c;
	String name = "김기태";
	if(a>b){
		c = a;
	} else {
		c = b;
	}
 	for(int d=0;d<10;d++){
		out.println(name+d);
	} 
 	out.println("c 출력은 표현식");
 	out.println(now);
%>
<div id="result"><!-- 각주 --> 
<%=c %>
<hr>
<%=now %>
<ul>
<%
	for(int e=0;e<3;e++){
%>
<li><%=names[e] %> : <%=jumsu[e] %></li>
<%
	}
%>
</ul>
<a href="test01.jsp?id=kkt&pw=1234&name=김기태">회원 데이터 - get</a>
<br><br>
<form action="test02.jsp" method="post" name="login_form">
	<input name="id" id="id" placeholder="아이디 입력"><br><br>
	<input type="password" name="pw" id="id" placeholder="비밀번호 입력"><br><br>
	<input name="name" id="name" placeholder="이름 입력"><br><br>
	<input type="submit" value="값 전송"> &nbsp; &nbsp; &nbsp;
	<input type="reset" value="취소">
</form>
<div id="msg">
<%
request.setCharacterEncoding("UTF-8");
String msg = request.getParameter("msg");
	if(msg!=null){
%>
	<strong><%=msg %></strong>
<%
	}
%>
</div>
<%
	String id = (String) session.getAttribute("m_id");
	if(id!=null){
%>
	<p><%=id %>님이 로그인 하셨습니다.</p>
	<a href="logout.jsp">로그아웃</a>
<%
	} else {
%>
	<p>아직 로그인 전 입니다.</p>
<%
	}
%>
</div>
</body>
</html>
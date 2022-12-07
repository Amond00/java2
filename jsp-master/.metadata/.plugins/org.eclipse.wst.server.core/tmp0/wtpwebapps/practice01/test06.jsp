<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp - java 객체 제어</title>
</head>
<body>
<%
	ArrayList<String> lst = new ArrayList<>();
	lst.add("김기태");
	lst.add("김도연");
	lst.add("김태엽");
	lst.add("박평화");
	lst.add("한태헌");
	request.setAttribute("lst", lst);
	//request.setAttribute("lst0", lst.get(0));
	
	HashSet<String> set = new HashSet<>();
	set.add("강병수");
	set.add("남송연");
	set.add("안효준");
	set.add("고유진");
	request.setAttribute("set", set);
	
	HashMap map = new HashMap();
	map.put("test1", "김지훈");
	map.put("test2", "김연정");
	map.put("test3", "이하영");
	map.put("test4", "조민재");
	request.setAttribute("map", map);
	request.setAttribute("map0", "test1");
	
	//전송 받을 목적 페이지 지정
	RequestDispatcher rd = request.getRequestDispatcher("test07.jsp");
	//해당 목적 페이지에 request.setAttribute()한 데이터를 포워딩(전달)
	rd.forward(request, response);
	//response.sendRedirect("test07.jsp");
%>
</body>
</html>
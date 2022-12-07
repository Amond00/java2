<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 객체</title>
</head>
<body>
<%
	//pageContext 객체 : 현재 페이지에 있는 객체에 대한 값을 저장하고 관리하는 객체
	
	JspWriter pageOut = pageContext.getOut();
	System.out.println(pageOut == out);
	
	ServletRequest pageRequest = pageContext.getRequest();
	System.out.println(pageRequest == request);
	
	ServletResponse pageResponse = pageContext.getResponse();
	System.out.println(pageResponse == response);
	
	HttpSession pageSession = pageContext.getSession();
	System.out.println(pageSession == session);
	
	ServletContext pageServlet = pageContext.getServletContext();
	System.out.println(pageServlet == application);
	
	ServletConfig pageConfig = pageContext.getServletConfig();
	System.out.println(pageConfig == config);
	
	Exception pageException = pageContext.getException();
	//System.out.println(pageException == exception);
	
	Object pageObject = pageContext.getPage();
	System.out.println(pageObject == page);
%>
</body>
</html>
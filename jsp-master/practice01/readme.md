# jsp

## jsp의 원리

## jsp 언어의 구성
디렉티브, 스크립트, jsp 내장 객체, 액션 태그, 태그 라이브러리, EL(표현언어) 등으로 구성된다.

### 디렉티브
"<%@" 로 시작하고 "%>" 으로 끝나며, 주로 웹 환경 설정시나 라이브러리를 로딩할 때 활용한다.

#### 페이지 디렉티브(page directive)
```java
<%!-- jsp page 환경 설정 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!-- 패키지 임포트 --%>    
<%@ page import="java.util.*" %>
``` 

#### 태그 라이브러리 디렉티브(tag library directive)
```java
<%!-- jstl taglib 로딩 --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
``` 

#### 인클루드 디렉티브(include directive)
```java
<%!-- 디렉티브를 활용한 외부 jsp 인클루드 --%>
<%@ include file="header.jsp" %>

<%!-- 액션태그를 활용한 외부 jsp 인클루드 --%>
<jsp:include page="header.jsp"></jsp:include>
``` 

### 스크립트
자바 코드의 문법에 따라 처리 코드를 작성할 때 활용

#### 선언문
변수나 객체, 메소드를 정의할 때 활용
```java
<%!
	Student st1;
%>
```

#### 스크립트릿(scriptlet)
자바 처리 코드를 입력시에 활용
```java
<%
	for(int i=0;i<10;i++){
		out.println("<p>"+i"</p>");	
	}
%>
```

#### 표현식(expression)
표현식으로서 변수의 값을 출력하거나 계산문에 활용
```java
<%=name %>
<%=request.getParameter("irum") %>
```

### jsp 내장 객체(9가지)
| 객체명 | 객체의 역할 |
|------------|------------------------------------|
| request | 클라이언트 브라우저에서 전송되어진 정보를 보관하는 객체 |
| response | 서버 측에서 처리한 정보를 보관하고 처리하기 위한 객체 |
| out | 웹 언어나 텍스트, 변수값, 객체의 값 등을 브라우저로 출력하기 위한 객체 |
| session | 클라이언트가 서버에 접속하였을 경우 그 정보를 저장하고 있는 객체 |
| pageContext | 응답(현재) 페이지 실행에 필요한 정보를 저장하고 있는 객체 |
| application | 현재의 실행되고 있는 웹 애플리케이션에 관한 정보를 저장하고 있는 객체 |
| config | 웹 환경 설정에 관한 정보를 저장하고 있는 객체 |
| page | 특정 웹 페이지에 관한 정보를 저장하고 있는 객체 |
| exception | jsp 상에서의 예외처리를 할 경우 활용하는 객체 |

#### request 객체
클라이언트 브라우저에서 전송되어진 정보를 보관하는 객체

##### request 관련 메소드
| 메소드 | 반환타입 | 설명 |
|-------------|------------|------------------------------|
| getParameter(name) | String | 파라미터 변수 name에 저장된 값을 얻어내는 메소드.<br> 해당 변수명이 없으면 null 리턴.<br> 단독값을 입력하는 text, select, radio 등에 사용 |
| getParameterValues(name) | String[] | 파라미터 변수 name에 저장된 모든 값을 얻어내는 메소드.<br> 변수값은 String 배열로 리턴.<br> 다중값을 입력하는 checkbox 등에 사용 | 
| getPrameterNames() | Enumeration | 요청에 의해 넘어오는 모든 파라미터 변수를 java.util.Enumeration 타입으로 리턴.<br> 변수가 가진 객체들을 저장하기 위해 Enumeration 컬렉션 사용 |
| getProtocol() | String | 웹 서버로 요청 시 사용 중인 프로토콜 리턴 |
| getServerName() | String | 서버의 도메인 이름 리턴 |
| getMethod() | String | 요청에 사용된 요청 방식(GET, POST 등) 리턴 |
| getQueryString() | String | 요청에 사용된 QueryString 리턴 |
| getRequestURL() | String | 요청에 사용된 URL 주소 리턴 |
| getRequestURI() | String | 요청에 사용된 URL로부터 URI값 리턴 |
| getRemoteHost() | String | 웹 서버로 정보를 요청한 웹 브라우저의 host 이름 리턴 |
| getRemoteAddr() | String | 웹 서버로 정보를 요청한 웹 브라우저의 ip 주소 리턴 |
| getServerPort() | String | 웹 서버로 요청시 서버의 port 번호 리턴 |
| getContextPath() | String | 해당 JSP페이지가 속한 웹 애플리케이션의 콘텍스트 경로 리턴.<br> 콘텍스트 경로는 웹 애플리케이션의 루트 경로 |
| getHeader(name) | String | 웹 서버로 요청 시 HTTP 요청 header 이름인 name에 해당하는 속성값 리턴 |
| getHeaderNames() | Enumeration | HTTP 요청 header에 있는 모든 헤더 이름 리턴 |
| setCharacterEncoding() | - | 현재 JSP 로 전달되는 내용을 지정한 캐릭터셋으로 변환해줌<br> HTML 폼에서 한글 입력을 정상적으로 처리해주려면 반드시 필요함 |


#### response 객체
서버 측에서 처리한 정보를 보관하고 반환하기 위한 객체

##### response 관련 메소드
| 메소드 | 반환타입 | 설명 |
|-------------|------------|------------------------------|
| setHeader(String name, String value) | void | 이름이 name인 헤더의 값을 String 타입의 value로 지정 |
| setIntHeader(String name, int value) | void | 이름이 name인 헤더의 값을 int 타입의 value로 지정 |
| setDataHeader(String name, long date) | void | 이름이 name인 헤더의 값을 long타입의 date로 지정(실제 지정되는 값은 날짜를 표현하는 밀리초 단위를 의미) |
| addHeader(String name, String value) | void | 이름이 name인 헤더에 String 타입의 value값을 추가 |
| addintHeader(String name, int value) | void | 이름이 name인 헤더에 int 타입의 value를 추가 |
| addDateHeader(String name, long date) | void | 이름이 name인 헤더에 long 타입의 date 값을 추가(실제 지정되는 값을 날짜를 표현하는 밀리초 단위를 의미) |
| containsHeader(String name) | void | 이름이 name인 헤더가 존재하면 true, 그렇지 않다면 false를 리턴 |
| getHeaderNames() | Collection | 현재 response객체의 헤더의 이름 집합을 String 타입으로 지정된 Collection 객체로 리턴 |
| getHeaders(String name) | Collection | 이름이 name인 헤더의 값 집합을 String 타입으로 저장된 Collection 객체로 리턴 |
| setContentType(String type) | void | 응답 결과 페이지의 contentType을 설정 |
| addCookie(Cookie cookie) | void | 쿠리를 HTTP 응답 메시지 헤더에 추가 |
| sendError(int status, String msg) | void | 페이지의 오류 코드를 세팅하고 메시지를 전송 |
| getStatus() | int | 현재 response 객체의 최근 상태 코드 값을 int 타입으로 리턴 |
| setStatus() | void | 현재 response 객체의 상태 코드를 지정 |


#### out 객체
java.io.Writer 클래스를 상속받은 javax.servlet.jsp.JspWriter 타입으로 선언되는 객체

#### out 관련 메소드
| 메소드 | 반환타입 | 설명 |
|-------------|------------|------------------------------|
| newLine() | void | 현재 위치에서 라인 구분자를 삽입 |
| print(inputParameter) | void | boolean, char, char[], double, float, int, long ,Object , String 타입 데이터를 입력받아 출력 |
| println(intputParemter) | void | boolean, char, char[], double, float, int, long ,Object , String 타입 데이터를 입력받아 출력 후 현재 라인 종료, 입력 파라미터를 사용하지 않을 경우 현재 라인을 종료 |
| getBufferSize() | int | 출력버퍼에 설정된 크기를 리턴 |
| getRemaining() | int | 현재 출력 버퍼에 남은 크기를 리턴 |
| flush() | void | 출력 버퍼의 내용을 출력 스트림을 통해 웹브라우저로 전송 |
| isAutoFlush() | boolean | 출력 버퍼가 다 찼을 경우 자동 플러시 가능 여부를 boolean 타입으로 리턴 |
| clear() | void | 출력 버퍼의 내용을 비움, 출력 버퍼가 플러시된 상태라면 IOException 발생 |
| clearBuffer() | void | 출력 버퍼의 내용을 비움, 출력 버퍼가 플러시된 상태라도 IOException 발생시키지 않음 |
| close() | void | 출력 버퍼의 내용을 플러시 후 스트림을 닫음 |

#### session 객체
HttpSession 인스턴스를 사용하여 웹 클라이언트와 웹 서버의 연결 및 세션 관리를 위해 사용되는 객체

#### session 관련 메소드
| 메소드 | 반환타입 | 설명 |
|-------------|------------|------------------------------|
| getAttribute(String name) | Object | session 객체에 저장된 속성을 반환 |
| setAttribute(String name, Object value) | void | session 객체에 속성을 저장 |
| removeAttribute(String name) | void | session 객체에 저장된 속성을 제거 |
| getId() | String | 세션 ID 값을 반환 |
| getMaxInactiveInterval() | int | 세션의 유효 시간을 반환 |
| setMaxInactiveInterval(int interval) | void | 세션의 유효 시간을 설정 |
| invalidate() | void | 현재 세션 정보를 제거 |

#### pageContext 객체
현재 페이지에 있는 객체에 대한 값을 저장하고 관리하는 객체

##### pageContext 관련 메소드
| 메소드 | 반환타입 | 설명
|-------------|------------|------------------------------|
| getRequest() | ServletRequest | request 기본 객체를 반환 |
| getResponse() | ServletResponse | response 기본 객체를 반환 |
| getSession() | HttpSession | session 기본 객체를 반환 |
| getServletContext() | ServletContext | application 기본 객체를 반환 |
| getServletConfig() | ServletConfig | config 기본 객체를 반환
| getOut() | JspWriter | out 기본 객체를 반환 |
| getException() | Exception | exception 기본 객체를 반환 |
| getPage() | Object | page 기본 객체를 반환 | 
| forward(String relativeUrlPath) | void | 지정한 상대경로 페이지로 이동 |
| include(String relativeUrlPath) | void | 지정한 상대경로 페이지를 현재 JSP 페이지에 포함 |


#### application 객체
application 내장 객체는 javax.servlet.ServletContext 인터페이스의 인스턴스로 웹 컨테이너가 이 인터페이스를 구현하여 객체를 제공

##### application 관련 메소드
| 메소드 | 반환타입 | 설명 |
|-------------|------------|------------------------------|
| getServerInfo() | String | 현재 사용중인 웹 컨테이너의 이름과 버전을 리턴 |
| getMinorVersion() | int | 현재 웹 컨테이너가 지원 가능한 서블릿 API 마이너 버전을 리턴 |
| getMajorVersion() | int | 현재 웹 컨테이너가 지원 가능한 서블릿 API 메이저 버전을 리턴 |
| getResource(String path) | URL | path로 지정된 자원을 URL 타입으로 리턴 |
| getResourceAsStream(String path) | InputStream : path로 지정된 자원을 InputStream 타입으로 리턴 |
| getRealPath(String path) | String | path로 지정된 자원을 시스템 내 실제 경로로 리턴 |
| getContext(String uripath) | ServletContext | uripath로 지정된 자원의 콘텍스트 정보를 Servelt Context 타입으로 리턴 |
| getRequestDispatcher(String path) | RequestDispatcher | path로 지정된 자원의 RequestDispatcher 타입을 리턴 |
| getInitParameter(String name) | String | name으로 지정한 콘텍스트 초기 파라미터 값을 String 타입으로 리턴 |
| getInitParameterNames() | Enumeration | 콘텍스트 초기 파라미터의 이름 집합을 Enumeration 타입으로 리턴 |
| log(String msg) | void | 서블릿 로그 파일에 msg의 내용을 기록 |
| log(String message, Throwable throwable | void | message의 내용과 Throwable 예외 stacktrace를 서블릿 로그 파일에 기록 |


#### config 객체
config 내장 객체는 javax.servlet.ServletConfig 인터페이스의 인스턴스로 JSP 페이지를 포함한 서블릿 클래스의 인스턴스가 생성될 때 필요한 초기 파라미터 정보들을 저장해두어 읽어올 수 있는 객체

##### config 관련 메소드
| 메소드 | 반환타입 | 설명 |
|-------------|------------|------------------------------|
| getInitParameter(String name) | String | name으로 지정된 초기 파라미터의 값을 String 타입으로 리턴 |
| getInitParameterNames() | Enumeration | 초기 파라미터의 이름 집합을 Enumeration 타입으로 리턴 |
| getServletContext() | ServletContext | 현재 사용중인 ServletContext의 참조변수, 즉 application 내장 객체를 리턴 |
| getServletName() | String | 현재 서블릿의 이름을 String 타입으로 리턴 |


#### page 객체
page 내장 객체는 JSP 페이지를 포함한 현재 서블릿의 인스턴스를 참조하는 객체


#### exception 객체
exception 내장객체는 java.lang.Throwable 클래스 타입의 참조변수로 JSP 페이지에서 예외 발생 시 page 지시자를 통해 지정된 오류 처리 페이지에서 해당 예외 이벤트 처리하기 위해 전달되는 객체

##### exception 관련 메소드
| 메소드 | 반환타입 | 설명 |
|-------------|------------|------------------------------|
| getMessage() | String | 현재 오류에 대한 상세 메시지를 String 타입으로 리턴 |
| printStackTrace() | void | 현재 오류의 StackTrace 정보 출력 |
| printStackTrace(PrintWriter s) | void | 현재 오류의 StackTrace 정보를 PrintWriter 객체 s로 출력 |
| printStackTrace(PrintStream s) | void | 현재 오류의 StackTrace 정보를 PrintStream 객체 s로 출력 |
| toString() | String | 현재 오류에 대한 간략한 메시지를 String 타입으로 리턴 |



 





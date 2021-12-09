<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어(EL)- 객체 매개변수</title>
</head>
<body>
	<%
	//세가지 객체를 rquest 영역에 저장한다.
	request.setAttribute("personObj", new Person("홍길동", 33));
	request.setAttribute("stringObj", "나는 문자열");
	request.setAttribute("integerObj", new Integer(99));
	%>
	<!-- 포워드 하는 페이지로 두개의 정수를 파라미터로 전달한다. 
		파라미터는 무조건 문자열로 전달된다.
	 -->
	<jsp:forward page="ObjectResult.jsp">
		<jsp:param value="10" name="firstNum"/>
		<jsp:param value="20" name="secondNum"/>
	</jsp:forward>
	<!-- 액션태그 사이에는 주석을 사용할 수 없다. -->
</body>
</html>
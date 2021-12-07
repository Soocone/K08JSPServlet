<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그- UseBean</title>
</head>
<body>
	<h3>액션 태그로 폼 값 한 번에 받기</h3>
	<!-- 
	폼 값을 전송하는 페이지에서 input 태그의 name 속성과 이를 저장할
	DTO 객체의 멤버변수명이 반드시 일치해야 하고, 또한 값 설정을 위한
	getter/setter 메서드가 있어야 한다.
	 -->
	<!-- person 객체를 생성한다. -->
	<jsp:useBean id="person" class="common.Person"/>
	<!-- DTO의 setter를 통해 폼값을 한꺼번에 설정한다. -->
	<jsp:setProperty property="*" name="person"/>
	<ul>
		<!-- getter를 통해 값을 출력한다. -->
		<li>이름: <jsp:getProperty name="person" property="name"/></li>
		<li>나이: <jsp:getProperty name="person" property="age"/></li>
	</ul>
</body>
</html>
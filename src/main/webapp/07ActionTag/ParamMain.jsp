<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String pValue = "방랑시인";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그- param</title>
</head>
<body>
<!-- 객체생성: request 영역에 저장 -->
	<jsp:useBean id="person" class="common.Person" scope="request"/>
	<!-- 값설정 -->
	<jsp:setProperty property="name" name="person" value="김삿갓"/>
	<jsp:setProperty property="age" name="person" value="56"/>
	<!-- paramForward.jsp 페이지로 포워드 -->
	<jsp:forward page="ParamForward.jsp?param1=김병연">
		<jsp:param value="경기도 양주" name="param2"/>
		<jsp:param value="<%=pValue %>" name="param3"/>
	</jsp:forward>
	<!-- 
		forward 태그의 경우 param 태그를 하위 태그 형식으로 사용하므로 
		시작태그와 종료태그를 나눠서 작성하게 된다. 이때 태그 사이에 
		HTML주석을 작성하면 에러가 발생한다.
	 -->
</body>
</html>
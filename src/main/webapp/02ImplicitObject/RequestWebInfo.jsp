<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체- request</title>
</head>
<body>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<ul>
		<li>데이터 전송 방식: <%= request.getMethod() %></li>
		<!-- URL은 현재 접속한 전체 경로를 반환한다. -->
		<li>URL: <%= request.getRequestURL() %></li>
		<!-- URL에서 HOST 부분을 제외한 경로를 반환한다. -->
		<li>URI: <%= request.getRequestURI() %></li>
		<li>프로토콜: <%= request.getProtocol() %></li>
		<li>서버명: <%= request.getServerName() %></li>
		<li>서버 포트: <%= request.getServerPort() %></li>
		<li>클라이언트 IP 주소: <%= request.getRemoteAddr() %></li>
		<li>쿼리스트링: <%= request.getQueryString() %></li>
		<!-- 클라이언트가 get 혹은 post 방식으로 전송한 값을 받을때 사용한다.
			단, 전송방식에 따라 한글이 깨지는 경우가 있어 별도의 처리가 필요하다. -->
		<li>전송된 값 1: <%= request.getParameter("eng") %></li>
		<li>전송된 값2: <%= request.getParameter("han") %></li>
	</ul>
</body>
</html>
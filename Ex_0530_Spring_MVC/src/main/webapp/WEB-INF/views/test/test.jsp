<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>Test 페이지에 오신것을 환영합니다.</p>
	<ul>
		<c:forEach var="greeting" items="${msg}">
			<li>${greeting}</li>
		</c:forEach>
	</ul>
	<p>${ip}에서 접속하셨습니다.</p>
	
	<a href="test2.do">test2.do</a>
	<a href="/mvc">Home</a>
</body>
</html>
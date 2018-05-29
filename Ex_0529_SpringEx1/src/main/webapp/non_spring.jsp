<%@page import="vo.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 기존 방식 1. Setters 2. Constructor
	PersonVO p1 = new PersonVO("홍길동", 30, "010-111-1111");
	
	request.setAttribute("p1", p1);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>${p1.name} | ${p1.age} | ${p1.tel}</p>

</body>
</html>
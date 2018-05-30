<%@page import="java.util.Set"%>
<%@page import="ex.MySet"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(application);
	MySet mySet = (MySet)wac.getBean("mySetBean");
	Set set = mySet.getSet();
	request.setAttribute("set", set);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<c:forEach var="sido" items="${set}">
			<li>${sido}</li>
		</c:forEach>
	</ul>
</body>
</html>
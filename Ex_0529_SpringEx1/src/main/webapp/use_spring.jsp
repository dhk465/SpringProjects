<%@page import="vo.PersonVO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* applicationScope은 서블릿의 영역이므로, 스프링에서 바로 접근할 수는 없고,
	아래와 같이 WebApplicationContext를 통해 applicationScope영역으로 접근 설정 */
	WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(application);
	PersonVO p1 = (PersonVO)wac.getBean("p1");
	PersonVO p2 = (PersonVO)wac.getBean("p2");
	PersonVO p3 = (PersonVO)wac.getBean("p3");
	PersonVO p4 = (PersonVO)wac.getBean("p4");
	request.setAttribute("p1", p1);
	request.setAttribute("p2", p2);
	request.setAttribute("p3", p3);
	request.setAttribute("p4", p4);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${p1.name} | ${p1.age} | ${p1.tel}</p>
	<p>${p2.name} | ${p2.age} | ${p2.tel}</p>
	<p>${p3.name} | ${p3.age} | ${p3.tel}</p>
	<p>${p4.name} | ${p4.age} | ${p4.tel}</p>
</body>
</html>
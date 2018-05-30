<%@page import="java.util.Map"%>
<%@page import="ex.MyMap"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(application);
	MyMap myMap = (MyMap)wac.getBean("myMapBean");
	Map map = myMap.getMap();
	request.setAttribute("map", map);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>Hong: ${map.hong}</li>
		<li>Kim: ${map.kim}</li>
		<li>Park: ${map.park}</li>
	</ul>
</body>
</html>
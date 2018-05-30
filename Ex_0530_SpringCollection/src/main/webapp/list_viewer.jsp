<%@page import="java.util.List"%>
<%@page import="ex.MyList"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(application);
	MyList myList = (MyList)wac.getBean("myListBean");
	List list = myList.getList();
	request.setAttribute("list", list);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<ul>
		<c:forEach var="fruit" items="${list}">
			<li>${fruit}</li>
		</c:forEach>
	</ul>

</body>
</html>
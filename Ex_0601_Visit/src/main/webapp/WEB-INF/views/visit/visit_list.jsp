<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록 리스트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/visit.css">
</head>
<body>
	<div id="main_box">
		<h1>:::방명록 리스트:::</h1>
		<div align="center">
			<input type="button" value="글쓰기" onclick="location.href='insert_form.do'">
		</div>
		<c:forEach var="vo" items="${list}">
			<div class="visit_box">
				<div class="type_content">${vo.content}</div>
				<div class="type_name">작성자: ${vo.name}: ${vo.ip}</div>
				<div class="type_regdate">작성일: ${vo.regdate}</div>
				<div>
					<form>
						<input type="hidden" name="idx" value="${vo.idx}">
						<input type="hidden" name="pwd" value="${vo.pwd}">
						 비밀번호( ${vo.pwd} ): <input type="password" name="c_pwd">
						 <input type="button" value="수정" onclick="modify(this.form);">
						 <input type="button" value="삭제" onclick="del(this.form);">
					</form>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>
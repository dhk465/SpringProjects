<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function send1(f) {
		let name = f.name.value;
		let age = f.age.value;
		let tel = f.age.value;
		
		// TODO validation methods
		
		f.action = "insert1.do"
		f.submit();
	}
	function send2(f) {
		let name = f.name.value;
		let age = f.age.value;
		let tel = f.age.value;
		
		// TODO validation methods
		
		f.action = "insert2.do"
		f.submit();
	}
</script>
</head>
<body>
	<form>
		<table border="1">
			<caption>:::개인정보 입력:::</caption>
			<tr>
				<th>이름</th>
				<td>
					<input name="name">
				</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>
					<input name="age">
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>
					<input name="tel">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="낱개로 받기" onclick="send1(this.form);">
					<input type="button" value="객체로 받기" onclick="send2(this.form);">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
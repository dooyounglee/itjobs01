<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/views/include/header.jsp" %>
<h1>지원자 관리</h1>
<button onclick="history.back()">뒤로</button>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>이름</th>
		<th>언어</th>
		<th>신입/경력</th>
		<th>생년월일</th>
		<th>학력</th>
		<th>이력서 보기</th>
	</tr>
	<tr>
		<td><input type=checkbox></td>
		<td>삼두영</td>
		<td>java,C</td>
		<td>신입</td>
		<td>8.8</td>
		<td>대졸</td>
		<td><button>이력서 보기</button></td>
	</tr>
</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
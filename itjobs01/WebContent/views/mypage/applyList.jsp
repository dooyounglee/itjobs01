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
<%@ include file="/views/mypage/menu.jsp" %>
<h1>내가 지원한 공고</h1>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>공고제목</th>
		<th>기업명</th>
		<th>지원일</th>
		<th>마감일</th>
		<th>상태</th>
	</tr>
	<tr>
		<td><input type=checkbox></td>
		<td><a href="#">제목1</a></td>
		<td>기업1</td>
		<td>지원일1</td>
		<td>마감일1</td>
		<td>서류심사</td>
	</tr>
</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
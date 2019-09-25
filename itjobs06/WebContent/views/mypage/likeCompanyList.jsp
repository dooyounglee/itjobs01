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
<h1>기업 좋아요</h1>
<button>삭제</button>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>기업명</th>
		<th>모집중인 공고수</th>
		<th>삭제</th>
	</tr>
	<tr>
		<td><input type=checkbox></td>
		<td><a href="get.jsp?bno=1">기업1</a></td>
		<td>공고수1</td>
		<td><button>삭제</button></td>
	</tr>
</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
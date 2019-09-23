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
<h1>공고 등록</h1>
제목:<input><br>
마감일:<input><br>
모집인원:<input><br>
직군:<input><br>
언어:
<input type=checkbox />java
<input type=checkbox />javascript
<input type=checkbox />C
<input type=checkbox />C++
<input type=checkbox />C#
<input type=checkbox />VBA
<input type=checkbox />python
<input type=checkbox />php
<input type=checkbox />asp
<br>
연봉:<input><br>
내용:<textarea></textarea><br>
우대사항:<input><br>
<button onclick="history.back()">뒤로</button>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
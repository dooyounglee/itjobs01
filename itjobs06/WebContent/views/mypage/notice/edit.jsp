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
<h1>공고 등록</h1>
제목:<input value="title1"><br>
마감일:<input value="end1"><br>
모집인원:<input value="3"><br>
직군:<input value="backend"><br>
언어:
<input type=checkbox checked>java
<input type=checkbox checked>javascript
<input type=checkbox />C
<input type=checkbox />C++
<input type=checkbox />C#
<input type=checkbox />VBA
<input type=checkbox />python
<input type=checkbox />php
<input type=checkbox />asp
<br>
연봉:<input value="3894"><br>
내용:<textarea>수정해야지</textarea><br>
우대사항:<input value="정처기, 운전면허"><br>
<button>수정</button>
<button onclick="history.back()">취소</button>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
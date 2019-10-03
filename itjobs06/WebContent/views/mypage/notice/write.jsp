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
<form action="write.no" method="post" autocomplete=off>
제목:<input name="title"><br>
마감일:<input type=date name="end_date"><input type=time name="end_time"><br>
모집인원:<input><br>
직군:<input name="jobs"><br>
언어:
<input type=checkbox name="language" value="java">java
<input type=checkbox name="language" value="javascript">javascript
<input type=checkbox name="language" value="C">C
<input type=checkbox name="language" value="C++">C++
<input type=checkbox name="language" value="C#">C#
<input type=checkbox name="language" value="VBA">VBA
<input type=checkbox name="language" value="python">python
<input type=checkbox name="language" value="php">php
<input type=checkbox name="language" value="asp">asp
<br>
연봉:<input name="salary"><br>
내용:<textarea name="contents"></textarea><br>
우대사항:<input name="hope"><br>
<button>임시등록</button>
</form>
<button>공개</button>
<button onclick="history.back()">뒤로</button>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
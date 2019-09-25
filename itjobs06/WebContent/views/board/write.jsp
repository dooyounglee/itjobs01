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

<h1>글쓰기</h1>
<form action=insert.bo method=post autocomplete=off>
머리말:
<select name=head>
	<option value=free>자유</option>
	<option value=study>스터디</option>
	<option value=project>프로젝트</option>
	<option value=notice>공지</option>
</select><br>
제목:<input name=title><br>
내용:<input name=contents><br>
모집기간:<input type=date name=time1>~<input type=date name=time2><br>
<!-- 첨부된파일: abc.txt<br>
파일첨부:<input type=file><br> 수업하고 나면 추가-->
<button>등록</button>
</form>
<button onclick="history.back()">취소</button>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
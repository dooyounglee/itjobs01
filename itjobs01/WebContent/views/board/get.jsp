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
<%@ include file="/views/board/menu.jsp" %>
<h1>글보기</h1>
머리말:자유<br>
제목:제목1<br>
내용:내용1<br>
모집기간:언제~언제<br>
첨부된파일: abc.txt<button>x</button><br>
<button onclick="location.href='edit.jsp?bno=1'">수정</button>
<button onclick="history.back()">목록</button>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
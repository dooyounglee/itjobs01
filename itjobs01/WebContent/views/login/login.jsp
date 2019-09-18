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
email:<input><br>
pw:<input><button onclick="location.href='../mypage/myinfo.jsp'">로그인</button><br>
<a href="join_law.jsp">회원가입</a>
<a href="find.jsp">비번찾기</a>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
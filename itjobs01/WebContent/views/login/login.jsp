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
<form action="<%=contextPath%>/login.me" method=post autocomplete=off>
<input type=radio value="일반" name=type checked>일반
<input type=radio value="기업" name=type>기업<br>
email:<input name=email><br>
pw:<input name=pw><button>로그인</button>
</form>
<a href="join_law.jsp">회원가입</a>
<a href="find.jsp">비번찾기</a>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
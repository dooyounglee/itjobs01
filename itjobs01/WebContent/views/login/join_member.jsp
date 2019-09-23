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
이메일:<input><br>
비번:<input><br>
비번확인:<input><br>
닉네임:<input><br>
<a href="<%=contextPath %>/views/login/join_ok.jsp">회원가입</a>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
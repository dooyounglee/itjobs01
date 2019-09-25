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
<h1>${nickname }님~ 가입을 환영합니다~ 이제 로그인해주세요.</h1>
<a href="<%=contextPath%>/views/login/login.jsp">login</a>
<a href="<%=contextPath%>">main</a>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
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
	<h1>join</h1>
	일반회원 이용약관<br>
	<a href="<%=contextPath %>/views/login/join_member.jsp">다음</a>
	<hr>
	기업회원 이용약관<br>
	<a href="<%=contextPath %>/views/login/join_company.jsp">다음</a>

	<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
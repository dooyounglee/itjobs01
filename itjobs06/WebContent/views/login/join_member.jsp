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
<form action="<%=request.getContextPath() %>/join.me" method="post" autocomplete=off>
<input value=1 name=type readonly><br>
이메일:<input name=email><br>
비번:<input name=pw><br>
비번확인:<input name=pw1><br>
닉네임:<input name=nickname><br>
<button>회원가입</button>
</form>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
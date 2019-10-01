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


<form action="<%=contextPath%>/findpwd.me" method="post">



email:<input name="email">

<button type="submit">비밀번호 발송</button>




</form>





<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
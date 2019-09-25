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
<h1>문의하기</h1>
<form action="<%=request.getContextPath()%>/insert.qu" method="post" autocomplete=off>
내용:<input name=contents><br>
<button>등록</button>
</form>
<button onclick="history.back()">취소</button>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
<h1><a href="<%=contextPath %>">ITJobs</a></h1>
<a href="<%=contextPath %>/views/login/join_law.jsp">회원가입</a>
<a href="<%=contextPath %>/views/login/login.jsp">로그인</a>
<a href="<%=contextPath %>">로그아웃</a><br>
<a href="<%=contextPath %>/views/board/free/list.jsp">게시판</a>
<hr>
</body>
</html>
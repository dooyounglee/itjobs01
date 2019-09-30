<%@page import="com.kh.notification.model.vo.Notification"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/views/include/header.jsp" %>
<h1>공고 검색창</h1>

<div id="resultArea">
	<div id="result">
<%	ArrayList<Notification> list=(ArrayList<Notification>)request.getAttribute("list");
	for(Notification n:list){%>
	<%=n %><br>
<%	} %>
	</div>
</div>
</body>
</html>
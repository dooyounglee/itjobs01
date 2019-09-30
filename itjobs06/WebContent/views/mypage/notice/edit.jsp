<%@page import="com.kh.notification.model.vo.Notification"%>
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
<h1>공고 등록</h1>
<%	Notification noti=(Notification)request.getAttribute("noti"); %>
제목:<input value="<%=noti.getTitle()%>"><br>
마감일:<input value="<%=noti.getEnd_date()%>"><br>
모집인원:<input value="모집인원이 없다고?"><br>
직군:<input value="<%=noti.getJobs()%>"><br>
언어:<%=noti.getP_language() %>
<input type=checkbox checked>java
<input type=checkbox checked>javascript
<input type=checkbox />C
<input type=checkbox />C++
<input type=checkbox />C#
<input type=checkbox />VBA
<input type=checkbox />python
<input type=checkbox />php
<input type=checkbox />asp
<br>
연봉:<input value="<%=noti.getSalary()%>"><br>
내용:<textarea><%=noti.getContents() %></textarea><br>
우대사항:<input value="<%=noti.getHope()%>"><br>
<button>수정</button>
<button onclick="history.back()">취소</button>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
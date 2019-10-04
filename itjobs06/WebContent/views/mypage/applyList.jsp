<%@page import="com.kh.notification.model.vo.Notification"%>
<%@page import="com.kh.volunteer.model.vo.Volunteer"%>
<%@page import="java.util.ArrayList"%>
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
<h1>내가 지원한 공고</h1>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>공고제목</th>
		<th>기업명</th>
		<th>지원일</th>
		<th>마감일</th>
		<th>상태</th>
		<th>지원한 내 이력서</th>
	</tr>
	<%	ArrayList<Volunteer> list=(ArrayList<Volunteer>)request.getAttribute("list");
		for(Volunteer n:list){%>
	<tr>
		<td><input type=checkbox></td>
		<td><a href="<%=request.getContextPath()%>/get.no?noti_no=<%=n.getNoti_no()%>"><%=n.getTitle() %></a></td>
		<td><%=n.getNickname() %></td>
		<td><%=n.getV_date() %></td>
		<td><%=n.getEnd_date() %></td>
		<td><%=n.getStatus() %></td>
		<td><%=n.getResume_no() %></td>
	</tr>
	<%	} %>
</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
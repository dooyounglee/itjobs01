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

<table border=1>
	<tr>
		<th>제목</th>
		<th>마감일</th>
		<th>등록일</th>
		<th>언어</th>
		<th>연봉</th>
		<th>직군</th>
		<th>상태</th>
		<th>신고수</th>
	</tr>

	<%	ArrayList<Notification> list=(ArrayList<Notification>)request.getAttribute("list");
		for(Notification n:list){%>
	<tr>
		<td><%=n.getTitle() %></td>
		<td><%=n.getEnd_date() %></td>
		<td><%=n.getEnroll_date() %></td>
		<td><%=n.getP_language() %></td>
		<td><%=n.getSalary() %></td>
		<td><%=n.getJobs() %></td>
		<td><%=n.getStatus() %></td>
		<td><%=n.getD_count() %></td>
	</tr>
	<%	} %>

</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
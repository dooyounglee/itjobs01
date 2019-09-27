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
<h1>공고 관리</h1>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>제목</th>
		<th>마감일</th>
		<th>등록일</th>
		<th>언어</th>
		<th>연봉</th>
		<th>직군</th>
		<th>상태</th>
		<th>신고수</t
		<th>삭제</th>
		<th>삭제취소</th>h>
	</tr>

	<%	ArrayList<Notification> list=(ArrayList<Notification>)request.getAttribute("list");
		for(Notification n:list){%>
	<tr>
		<td><input type=checkbox></td>
		<td><%=n.getTitle() %></td>
		<td><%=n.getEnd_date() %></td>
		<td><%=n.getEnroll_date() %></td>
		<td><%=n.getP_language() %></td>
		<td><%=n.getSalary() %></td>
		<td><%=n.getJobs() %></td>
		<td><%=n.getStatus() %></td>
		<td><%=n.getD_count() %></td>
		<td><button onclick="del(<%=n.getNoti_no()%>)">삭제</button></td>
		<td><button onclick="delCancle(<%=n.getNoti_no()%>)">삭제취소</button></td>
	</tr>
	<%	} %>
</table>
<script>
	function del(noti_no){
		location.href="<%=contextPath%>/del.no.ad?noti_no="+noti_no
	}
	function delCancle(noti_no){
		location.href="<%=contextPath%>/delCancle.no.ad?noti_no="+noti_no
	}
</script>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
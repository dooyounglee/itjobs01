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
<%-- <%@ include file="/views/include/header.jsp" %> --%>
<h1>지원자 관리</h1>

<button onclick="history.back()">뒤로</button>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>v_no</th>
		<th>noti_no</th>
		<th>resume_no</th>
		<th>지원날짜</th>
		<th>상태</th>
		<th>이력서 보기</th>
	</tr>
	<%	ArrayList<Volunteer> list=(ArrayList<Volunteer>)request.getAttribute("list");
		for(Volunteer v:list){%>
	<tr>
		<td><input type=checkbox></td>
		<td><%=v.getV_no() %></td>
		<td><%=v.getNoti_no() %></td>
		<td><%=v.getResume_no() %></td>
		<td><%=v.getV_date() %></td>
		<td><%=v.getStatus() %></td>
		<td><button onclick="showResume(<%=v.getResume_no()%>)">이력서 보기</button></td>
	</tr>
	<%	} %>
</table>
<script>
	function showResume(resume_no){
		location.href="detail.re?resume_no="+resume_no
	}
</script>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
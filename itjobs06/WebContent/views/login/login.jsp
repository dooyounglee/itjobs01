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
<form action="<%=contextPath%>/login.me" method=post autocomplete=off>
<!-- <input type=radio value="일반" name=type checked>일반
<input type=radio value="기업" name=type>기업<br> -->
email:<input name=email><br>
pw:<input name=pw><button>로그인</button>
</form>
<a href="<%=contextPath%>/views/login/join_law.jsp">회원가입</a>
<a href="find.jsp">비번찾기</a>
<script>
$('input[name=email]').focus();
</script>
인증은 나중에 하기로.
<table border=1>
	<tr>
		<th>m_no</th>
		<th>type</th>
		<th>email</th>
		<th>pw</th>
		<th>nickname</th>
		<th>enrolldate</th>
		<th>updatedate</th>
		<th>status</th>
		<th>d_count</th>
	</tr>
<%	ArrayList<Member> list=(ArrayList<Member>)request.getAttribute("list");
	for(Member m:list){ %>
	<tr>
		<td><%=m.getM_no() %></td>
		<td><%=m.getType() %></td>
		<td><%=m.getEmail() %></td>
		<td><%=m.getPw() %></td>
		<td><%=m.getNickname() %></td>
		<td><%=m.getEnroll_date() %></td>
		<td><%=m.getUpdate_date() %></td>
		<td><%=m.getStatus() %></td>
		<td><%=m.getD_count() %></td>
	</tr>
<%	} %>
</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
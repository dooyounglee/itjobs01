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
<h1>기업 좋아요</h1>
<table border=1>
	<thead>
		<tr>
			<th><input type=checkbox></th>
			<th>type</th>
			<th>email</th>
			<th>pw</th>
			<th>nickname</th>
			<th>status</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
		<%	ArrayList<Member> list=(ArrayList<Member>)request.getAttribute("list");
			for(Member m:list){%>
		<tr>
			<td><input type=checkbox data-mno="<%=m.getM_no()%>"></td>
			<td><%=m.getType() %></td>
			<td><%=m.getEmail() %></td>
			<td><%=m.getPw() %></td>
			<td><%=m.getNickname() %></td>
			<td><%=m.getStatus() %></td>
			<td><button>삭제</button></td>
		</tr>
		<%	} %>
	</tbody>
</table>

<button>삭제</button>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>기업명</th>
		<th>모집중인 공고수</th>
		<th>삭제</th>
	</tr>
	<tr>
		<td><input type=checkbox></td>
		<td><a href="get.jsp?bno=1">기업1</a></td>
		<td>공고수1</td>
		<td><button>삭제</button></td>
	</tr>
</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
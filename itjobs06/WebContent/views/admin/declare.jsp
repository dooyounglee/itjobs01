<%@page import="com.kh.declare.model.vo.Declare"%>
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
<h1>게시글 신고</h1>
<table border=1>
	<thead>
		<tr>
			<th><input type=checkbox></th>
			<th>no</th>
			<th>b</th>
			<th>re</th>
			<th>noti</th>
			<th>m</th>
			<th>content</th>
			<th>등록일</th>
			<th>처리일</th>
			<th>상태</th>
		</tr>
	</thead>
	<tbody>
		<%	ArrayList<Declare> blist=(ArrayList<Declare>)request.getAttribute("blist");
			for(Declare m:blist){%>
		<tr>
			<td><input type=checkbox data-mno="<%=m.getM_no()%>"></td>
			<td><%=m.getDe_no() %></td>
			<td><%=m.getB_no() %></td>
			<td><%=m.getRe_no() %></td>
			<td><%=m.getNoti_no() %></td>
			<td><%=m.getM_no() %></td>
			<td><%=m.getContents() %></td>
			<td><%=m.getEnroll_date() %></td>
			<td><%=m.getComp_date() %></td>
			<td><%=m.getStatus() %></td>
		</tr>
		<%	} %>
	</tbody>
</table>
<hr>
<h1>게시판 신고</h1>
<table border=1>
	<thead>
		<tr>
			<th><input type=checkbox></th>
			<th>no</th>
			<th>b</th>
			<th>re</th>
			<th>noti</th>
			<th>m</th>
			<th>content</th>
			<th>등록일</th>
			<th>처리일</th>
			<th>상태</th>
		</tr>
	</thead>
	<tbody>
		<%	ArrayList<Declare> rlist=(ArrayList<Declare>)request.getAttribute("rlist");
			for(Declare m:rlist){%>
		<tr>
			<td><input type=checkbox data-mno="<%=m.getM_no()%>"></td>
			<td><%=m.getDe_no() %></td>
			<td><%=m.getB_no() %></td>
			<td><%=m.getRe_no() %></td>
			<td><%=m.getNoti_no() %></td>
			<td><%=m.getM_no() %></td>
			<td><%=m.getContents() %></td>
			<td><%=m.getEnroll_date() %></td>
			<td><%=m.getComp_date() %></td>
			<td><%=m.getStatus() %></td>
		</tr>
		<%	} %>
	</tbody>
</table>
<hr>
<h1>공고 신고</h1>
<table border=1>
	<thead>
		<tr>
			<th><input type=checkbox></th>
			<th>no</th>
			<th>b</th>
			<th>re</th>
			<th>noti</th>
			<th>m</th>
			<th>content</th>
			<th>등록일</th>
			<th>처리일</th>
			<th>상태</th>
		</tr>
	</thead>
	<tbody>
		<%	ArrayList<Declare> nlist=(ArrayList<Declare>)request.getAttribute("nlist");
			for(Declare m:nlist){%>
		<tr>
			<td><input type=checkbox data-mno="<%=m.getM_no()%>"></td>
			<td><%=m.getDe_no() %></td>
			<td><%=m.getB_no() %></td>
			<td><%=m.getRe_no() %></td>
			<td><%=m.getNoti_no() %></td>
			<td><%=m.getM_no() %></td>
			<td><%=m.getContents() %></td>
			<td><%=m.getEnroll_date() %></td>
			<td><%=m.getComp_date() %></td>
			<td><%=m.getStatus() %></td>
		</tr>
		<%	} %>
	</tbody>
</table>
	
</body>
</html>
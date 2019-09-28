<%@page import="com.kh.declare.model.vo.Declare"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#listArea,#viewArea{
		display:inline-block;
		vertical-align:top;
	}
	#listArea{
		width:60%;
	}
	#viewArea{
		width:30%;
	}
</style>
</head>
<body>
<%@ include file="/views/include/header.jsp" %>
<h1>게시글 신고 관리</h1>
<div id="manageBoard">
	<div id="listArea">
		<table border=1>
			<thead>
				<tr>
					<th><input type=checkbox></th>
					<th>no</th>
					<th>b</th>
					<th>m</th>
					<th>content</th>
					<th>등록일</th>
					<th>처리일</th>
					<th>상태</th>
					<th>보기</th>
					<th>처리</th>
				</tr>
			</thead>
			<tbody>
				<%	ArrayList<Declare> blist=(ArrayList<Declare>)request.getAttribute("blist");
					for(Declare m:blist){%>
				<tr>
					<td><input type=checkbox data-mno="<%=m.getM_no()%>"></td>
					<td><%=m.getDe_no() %></td>
					<td><%=m.getB_no() %></td>
					<td><%=m.getM_no() %></td>
					<td><%=m.getContents() %></td>
					<td><%=m.getEnroll_date() %></td>
					<td><%=m.getComp_date() %></td>
					<td><%=m.getStatus() %></td>
					<td><button onclick="view(<%=m.getB_no()%>)">보기</button></td>
					<td><button>처리완료</button></td>
				</tr>
				<%	} %>
			</tbody>
		</table>
	</div>
	<div id="viewArea">
		내용이 보여질꺼야
	</div>
</div>
<script>
	function view(b_no){
		$('#viewArea').load("<%=request.getContextPath()%>/get.bo.ad?bno="+b_no+" #content")
	}
</script>
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
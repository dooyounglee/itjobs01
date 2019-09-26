<%@page import="com.kh.board.model.vo.Board"%>
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
<h1>게시판 관리</h1>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>머리말</th>
		<th>제목</th>
		<th>작성자</th>
		<th>등록일</th>
		<th>수정일</th>
		<th>모집날짜</th>
		<th>조회수</th>
		<th>상태</th>
		<th>삭제</th>
		<th>삭제취소</th>
	</tr>
	<%	ArrayList<Board> list=(ArrayList<Board>)request.getAttribute("list");
		for(Board b:list){%>
	<tr>
		<td><input type=checkbox></td>
		<td><%=b.getHead() %></td>
		<td>
			<a href="<%=request.getContextPath() %>/get.bo?bno=<%=b.getB_no()%>"><%=b.getTitle() %></a>
		</td>
		<td><%=b.getM_no() %></td>
		<td><%=b.getEnroll_date() %></td>
		<td><%=b.getUpdate_date() %></td>
		<td><%=b.getTime() %></td>
		<td><%=b.getCount() %></td>
		<td><%=b.getStatus() %></td>
		<td><button onclick="del(<%=b.getB_no()%>)">삭제</button></td>
		<td><button onclick="delCancle(<%=b.getB_no()%>)">삭제취소</button></td>
	</tr>
	<%	} %>
</table>
<script>
	function del(bno){
		location.href="<%=contextPath%>/del.bo.ad?bno="+bno
	}
	function delCancle(bno){
		location.href="<%=contextPath%>/delCancle.bo.ad?bno="+bno
	}
</script>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
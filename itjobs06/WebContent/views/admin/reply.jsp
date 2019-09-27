<%@page import="com.kh.reply.model.vo.Reply"%>
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
<h1>리플 관리</h1>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>본문번호</th>
		<th>작성자</th>
		<th>등록일</th>
		<th>수정일</th>
		<th>내용</th>
		<th>상태</th>
		<th>신고수</th>
		<th>삭제</th>
		<th>삭제취소</th>
	</tr>
	<%	ArrayList<Reply> rlist=(ArrayList<Reply>)request.getAttribute("rlist");
		for(Reply b:rlist){%>
	<tr>
		<td><input type=checkbox></td>
		<td><%=b.getB_no() %></td>
		<td><%=b.getM_no() %></td>
		<td><%=b.getEnroll_date() %></td>
		<td><%=b.getUpdate_date() %></td>
		<td><%=b.getContents() %>
		<td><%=b.getStatus() %></td>
		<td><%=b.getD_count() %></td>
		<td><button onclick="del(<%=b.getRe_no()%>)">삭제</button></td>
		<td><button onclick="delCancle(<%=b.getRe_no()%>)">삭제취소</button></td>
	</tr>
	<%	} %>
</table>
<script>
	function del(rno){
		location.href="<%=contextPath%>/del.re.ad?rno="+rno
	}
	function delCancle(rno){
		location.href="<%=contextPath%>/delCancle.re.ad?rno="+rno
	}
</script>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
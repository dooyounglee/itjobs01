<%@page import="com.kh.question.model.vo.Question"%>
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
<h1>문의 게시판</h1>
<select>
	<option>제목</option>
	<option>작성자</option>
	<option>내용</option>
</select>
<input>
<button>검색</button>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>내용</th>
		<th>작성자</th>
		<th>등록일</th>
		<th>처리일</th>
		<th>상태</th>
	</tr>
	<%	ArrayList<Question> list=(ArrayList<Question>)request.getAttribute("list");
		for(Question q:list){%>
	<tr>
		<td><input type=checkbox></td>
		<td><a href="get.qu.ad?qno=<%=q.getQ_no()%>"><%=q.getContents() %></a></td>
		<td><%=q.getM_no() %></td>
		<td><%=q.getEnroll_date() %></td>
		<td><%=q.getEnd_date() %></td>
		<td><%=q.getStatus() %></td>
	</tr>
	<%	} %>
</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
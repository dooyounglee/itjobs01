<%@page import="com.kh.board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/views/include/header.jsp" %>

<h1><%=head %> 게시판</h1>
<button onclick="location.href='write.jsp'">글쓰기</button>
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
		<th>제목</th>
		<th>작성자</th>
		<th>등록일</th>
		<th>수정일</th>
		<%if(head.equals("project") || head.equals("study")){ %>
		<th>모집날짜</th>
		<%} %>
		<th>조회수</th>
		<%if(head.equals("form")){ %>
		<th>다운수</th>
		<th>다운</th>
		<%} %>
	</tr>
	<%	ArrayList<Board> list=(ArrayList<Board>)request.getAttribute("list");
		for(Board b:list){%>
	<tr>
		<td><input type=checkbox></td>
		<td>
			<%if(!head.equals("form")){ %>
			<a href="<%=request.getContextPath() %>/get.bo?bno=<%=b.getB_no()%>"><%=b.getTitle() %></a>
			<%}else{ %>
			<%=b.getTitle() %>
			<%} %>
		</td>
		<td><%=b.getM_no() %></td>
		<td><%=b.getEnroll_date() %></td>
		<td><%=b.getUpdate_date() %></td>
		<%if(head.equals("project") || head.equals("study")){ %>
		<td><%=b.getTime() %></td>
		<%} %>
		<td><%=b.getCount() %></td>
		<%if(head.equals("form")){ %>
		<td>다운수1????</td>
		<td><a href="#">다운</a></td>
		<%} %>
	</tr>
	<%	} %>
</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
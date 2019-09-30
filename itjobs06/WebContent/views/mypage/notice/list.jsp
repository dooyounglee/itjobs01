<%@page import="com.kh.notification.model.vo.Notification"%>
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
<h1>공고 관리</h1>
<button onclick="location.href='<%=request.getContextPath()%>/write.no'">공고 만들기</button>
<select>
	<option>제목</option>
	<option>작성자</option>
	<option>내용</option>
</select>
<input>
<button>검색</button><button>삭제</button>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>제목</th>
		<th>등록일</th>
		<th>수정일</th>
		<th>상태</th>
		<th>지원자 확인</th>
	</tr>
	<%	ArrayList<Notification> list=(ArrayList<Notification>)request.getAttribute("list");
		for(Notification n:list){%>
	<tr>
		<td><input type=checkbox></td>
		<td><a href="get.no?noti_no=<%=n.getNoti_no()%>"><%=n.getTitle() %></a></td>
		<td><%=n.getEnroll_date() %></td>
		<td><%=n.getEnd_date() %></td>
		<td><%=n.getStatus() %></td>
		<td><button onclick="location.href='applierList.jsp'">지원자 확인</button></td>
	</tr>
	<%	} %>
</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
<%@page import="com.kh.board.model.vo.Board"%>
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

<h1>글쓰기</h1>
<%	Board b=(Board)request.getAttribute("b");
	String[] time=b.getTime().split("~");%>
<form action="edit.bo" method=post autocomplete=off>
머리말:
<select name=head>
	<option value=free>자유</option>
	<option value=study>스터디</option>
	<option value=project>프로젝트</option>
	<option value=notice>공지</option>
</select><br>
제목:<input name=title value="<%=b.getTitle()%>"><br>
내용:<input name=contents value="<%=b.getTitle()%>"><br>
모집기간:<input name=time1 value="<%=time[0]%>">~<input name=time2 value="<%=time[1]%>"><br>
<!-- 첨부된파일: abc.txt<br>
파일첨부:<input type=file><br> -->
<button>등록</button>
</form>
<button onclick="history.back()">취소</button>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
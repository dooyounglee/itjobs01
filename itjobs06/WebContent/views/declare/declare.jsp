<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String bId = (String)request.getAttribute("bId");
	String title = (String)request.getAttribute("title");
	String boardNick = (String)request.getAttribute("boardNick");
	String head = (String)request.getAttribute("head");

	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/insert.de" method="post">
신고창
<input type="hidden" name="bId" value="<%=bId%>">
<input type="hidden" name="head" value="<%=head%>">

제목:<div name="bId"><%=title %></div><br>
작성자:<div name="boardNick"><%=boardNick %></div><br>
신고내용:<br>
<textarea rows="10" cols="40" name="declare_content"></textarea><br>
<button>신고</button>
</form>
</body>
</html>
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
<%if(mem.getType().equals("일반")){ %>
비번수정:<input value="<%=mem.getPw()%>"><br>
닉네임수정:<input value="<%=mem.getNickname()%>"><br>
<%}else if(mem.getType().equals("기업")){ %>
업종:<input><br>
대표자명:<input><br>
사업내용:<input><br>
대표번호:<input><br>
설립일:<input><br>
사원수:<input><br>
매출액:<input><br>
위치:<input><br>
연혁:<input><br>
복지:<input><br>
<%} %>
<button>입력완료</button>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
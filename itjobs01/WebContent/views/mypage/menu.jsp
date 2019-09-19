<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String type=(String)session.getAttribute("type");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(type.equals("일반")){ %>
<a href="<%=contextPath%>/views/mypage/myinfo.jsp">내 정보 수정</a>
<a href="<%=contextPath%>/views/mypage/applyList.jsp">지원리스트</a>
<a href="<%=contextPath%>/views/mypage/likeCompanyList.jsp">관심기업</a>
<a href="<%=contextPath%>/views/mypage/likeNoticeList.jsp">관심공고</a>
<a href="<%=contextPath%>/views/mypage/resume/list.jsp">이력서 관리</a>
<%}else if(type.equals("기업")){ %>
<a href="<%=contextPath%>/views/mypage/myinfo.jsp">내 정보 수정</a>
<a href="<%=contextPath%>/views/mypage/notice/list.jsp">공고리스트</a>
<a href="<%=contextPath%>/views/mypage/likePersonList.jsp">관심인재</a>
<%} %>
<hr>
</body>
</html>
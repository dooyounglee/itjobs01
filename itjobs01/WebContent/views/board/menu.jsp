<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String head=request.getParameter("head");
	if(head!=null){
		session.setAttribute("head", head);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="<%=contextPath%>/views/board/list.jsp?head=free">자유게시판</a>
<a href="<%=contextPath%>/views/board/list.jsp?head=study">스터디</a>
<a href="<%=contextPath%>/views/board/list.jsp?head=project">프로젝트</a>
<a href="<%=contextPath%>/views/board/list.jsp?head=qna">문의</a>
<a href="<%=contextPath%>/views/board/list.jsp?head=form">서식</a>
<hr>
</body>
</html>
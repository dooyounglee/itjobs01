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

<%
	head=(String)session.getAttribute("head");
%>
<h1>글보기</h1>
<%	Board b=(Board)request.getAttribute("b"); %>
머리말:<%=b.getHead() %><br>
제목:<%=b.getTitle() %><br>
내용:<%=b.getContents() %><br>
<%if(head.equals("project") || head.equals("study")){ %>
모집기간:<%=b.getTime() %><br>
<%} %>
첨부된파일: abc.txt<button>x</button><br>
<button onclick="edit(<%=b.getB_no()%>)">수정(작성자만 보이게)</button>
<button onclick="del(<%=b.getB_no()%>)">삭제(작성자만 보이게)</button>
<button onclick="declare(<%=b.getB_no()%>)">신고</button>
<button onclick="history.back()">목록</button>
<%@ include file="/views/include/footer.jsp" %>
<script>
	function edit(bno){
		location.href="edit.bo?bno="+bno;
	}
	function del(bno){
		location.href="del.bo?bno="+bno;
	}
	function declare(){
		window.open("../declare/declare.jsp","신고창","width=500px,height=300px;")
	}
</script>
</body>
</html>
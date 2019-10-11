<%@page import="com.kh.declare.model.vo.Declare"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="detail">
<%	Declare de=(Declare)request.getAttribute("de");%>
	신고 번호 : <%=de.getDe_no() %><br>
<%	String head=request.getParameter("head");
	if(de.getNoti_no()!=0){ %>
	신고 공고번호 : <%=de.getNoti_no() %>
<%	}else if(de.getB_no()!=0){ %>
	신고 게시글번호 : <%=de.getB_no() %>
<%	}else if(de.getRe_no()!=0){ %>
	신고 댓글번호 : <%=de.getRe_no() %>
<%	} %>
	<br>
	신고자 : <%=de.getM_no() %><br>
	신고내용 : <%=de.getContents() %><br>
	신고날짜 : <%=de.getEnroll_date() %><br>
</div>
</body>
</html>
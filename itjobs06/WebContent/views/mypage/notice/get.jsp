<%@page import="com.kh.notification.model.vo.Notification"%>
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
${noti }<br>
<%	Notification noti=(Notification)request.getAttribute("noti");%>

<button onclick="edit(<%=noti.getNoti_no() %>)">수정</button>
<button onclick="del(<%=noti.getNoti_no() %>)">삭제</button>
<button onclick="open_(<%=noti.getNoti_no() %>)">공개</button>
<button onclick="openCancle(<%=noti.getNoti_no() %>)">비공개</button>
<button onclick="location.href='<%=request.getContextPath()%>/myNotification.me'">나의 공고목록으로</button>
<button>지원자 확인</button>

<script>
	function edit(noti_no){
		location.href="edit.no?noti_no="+noti_no;
	}
	function del(noti_no){
		location.href="del.no?noti_no="+noti_no;
	}
	function open_(noti_no){
		location.href="open.no?noti_no="+noti_no;
	}
	function openCancle(noti_no){
		location.href="openCancle.no?noti_no="+noti_no;
	}
</script>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
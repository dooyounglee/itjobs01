<%@page import="com.kh.notification.model.vo.Notification"%>
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
<h1>공고 등록</h1>
<%	Notification noti=(Notification)request.getAttribute("noti");
	String[] arr_language=noti.getP_language().split(",");
	String[] lan_selected=new String[9];
	for(int i=0;i<arr_language.length;i++){
		System.out.println(arr_language[i]);
		switch(arr_language[i]){
		case "java": 		lan_selected[0]="checked";break;
		case "javascript": 	lan_selected[1]="checked";break;
		case "C": 			lan_selected[2]="checked";break;
		case "C++": 		lan_selected[3]="checked";break;
		case "C#": 			lan_selected[4]="checked";break;
		case "VBA": 		lan_selected[5]="checked";break;
		case "python": 		lan_selected[6]="checked";break;
		case "php": 		lan_selected[7]="checked";break;
		case "asp": 		lan_selected[8]="checked";break;
		}
	}%>
<form action="edit.no" method="post" autocomplete=off>
제목:<input name="title" value="<%=noti.getTitle()%>"><br>
마감일:<input type=date name="end_date" value="<%=noti.getEnd_date().split(" ")[0]%>"><br>
모집인원:<input value="모집인원이 없다고?"><br>
직군:<input name="jobs" value="<%=noti.getJobs()%>"><br>
언어:
<input type=checkbox name="language" <%=lan_selected[0] %>>java
<input type=checkbox name="language" <%=lan_selected[1] %>>javascript
<input type=checkbox name="language" <%=lan_selected[2] %>>C
<input type=checkbox name="language" <%=lan_selected[3] %>>C++
<input type=checkbox name="language" <%=lan_selected[4] %>>C#
<input type=checkbox name="language" <%=lan_selected[5] %>>VBA
<input type=checkbox name="language" <%=lan_selected[6] %>>python
<input type=checkbox name="language" <%=lan_selected[7] %>>php
<input type=checkbox name="language" <%=lan_selected[8] %>>asp
<br>
연봉:<input name="salary" value="<%=noti.getSalary()%>"><br>
내용:<textarea name="contents"><%=noti.getContents() %></textarea><br>
우대사항:<input name="hope" value="<%=noti.getHope()%>"><br>
<input type=hidden name="noti_no" value="<%=noti.getNoti_no()%>">
<button>수정</button>
</form>
<button onclick="back(<%=noti.getNoti_no()%>)">취소</button>
<script>
	function back(noti_no){
		location.href="<%=request.getContextPath()%>/get.no?noti_no="+noti_no
	}
</script>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
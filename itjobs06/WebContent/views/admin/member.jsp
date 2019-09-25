<%@page import="java.util.ArrayList"%>
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
<h1>회원관리</h1>
<table border=1>
	<thead>
		<tr>
			<th><input type=checkbox></th>
			<th>type</th>
			<th>email</th>
			<th>pw</th>
			<th>nickname</th>
			<th>status</th>
			<th>강퇴</th>
		</tr>
	</thead>
	<tbody>
		<%	ArrayList<Member> list=(ArrayList<Member>)request.getAttribute("list");
			for(Member m:list){%>
		<tr>
			<td><input type=checkbox data-mno="<%=m.getM_no()%>"></td>
			<td><%=m.getType() %></td>
			<td><%=m.getEmail() %></td>
			<td><%=m.getPw() %></td>
			<td><%=m.getNickname() %></td>
			<td><%=m.getStatus() %></td>
			<%	if(m.getStatus().equals("Y")){ %>
			<td><button class="vanish">강퇴</button></td>
			<%	}else if(m.getStatus().equals("N")){ %>
			<td><button class="vanishCancle">강퇴취소</button></td>
			<%	} %>
		</tr>
		<%	} %>
	</tbody>
</table>
<script>
	$(".vanish").on("click",function(){
		var mno=$(this).parent().parent().children().eq(0).children('input').eq(0).data('mno')
		location.href="<%=request.getContextPath()%>/vanish.ad?mno="+mno
	})
	$(".vanishCancle").on("click",function(){
		var mno=$(this).parent().parent().children().eq(0).children('input').eq(0).data('mno')
		location.href="<%=request.getContextPath()%>/vanishCancle.ad?mno="+mno
	})
</script>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
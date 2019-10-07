<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.board.model.vo.*, java.util.ArrayList"%>
<%
	Board b = (Board)request.getAttribute("b");
	PageInfo pi = (PageInfo)request.getAttribute("pi");  
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		width:900px;
		height:600px;
		/*background:lightpink;*/
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	.tableArea{
		width:700px;
		height:500x;
		margin-left:auto;
		margin-right:auto;
	}
	table{
		border:1px solid white;
		text-align:center;
		margin-left:auto;
		margin-right:auto;
	}
	
	th{
		background:lightgray;
	}
	#writeBtn{
		border-radius:8px;
		background:lightblue;
		width:60px;
		height:25px;
		text-align:center;
		float:right;
	
		
	}
	#writeBtn:hover{
		cursor:pointer;
	}
	#writeBtnArea{
		width:700px;
		height:30px;
		margin-left:auto;
		margin-right:auto;
		/*border:1px solid black;*/
	}
	#headArea{
		width:700px;
		margin-left:auto;
		margin-right:auto;
	}
	.pagingArea>div{
		width:30px;
		height:30px;
		display:inline-block;
	}
</style>
</head>
<body>
	<%@ include file="/views/include/header.jsp" %>
	
	<div class="outer">
		<br>
		<div id="headArea"><h1 align="left"><%= head %>게시판</h1></div>
		<div id="writeBtnArea">
		<div id="writeBtn" onclick="writeBtn()">글쓰기</div>
		<%-- <button id="writeBtn" onclick="writeBtn1()">글쓰기</button>--%>
	
		
		</div>

		<div class="tableArea">
			<table id="listArea">
				<tr>
					<th width="50">No.</th>
					<th width="100">작성자</th>
					<th width="400">제목</th>
					<% if(head.equals("study") || head.equals("project")){ %>
					<th width="300">모집기간</th>
					<% } %>
					<th width="150">등록일자</th>
					<th width="150">조회수/댓글수</th>
				</tr>
				<% if(list.isEmpty()) { %>
					<tr>
						<td colspan="6">등록된 게시글이 없습니다.</td>
					</tr>
				<% }else { %>
					<% for(Board i : list) { %>
					<tr>
						<td><%= i.getB_no() %></td>				
						<td><%= i.getNickname() %></td>	
						<%if(head.equals("main")){%>			
						<td><%= "["+i.getHead()+"]"+i.getTitle() %></td>
						<% }else{ %>
						<td><%= i.getTitle() %></td>
						<% } %>	
						
						<% if(head.equals("study") || head.equals("project")){ %>
						<td><%= i.getTime() %></td>				
						<% } %>		
						<td><%= i.getUpdate_date() %></td>				
						<td><%= i.getCount() %></td>				
					</tr>
					<% } %>
				<% } %>
			</table>
		</div>
			
		<script>
			$(function(){
				$("#listArea td").mouseenter(function(){
					$(this).parent().css({"background":"lightgray", "cursor":"pointer"})
				}).mouseout(function(){
					$(this).parent().css("background", "white");
				}).click(function(){
					var bId = $(this).parent().children().eq(0).text();
					<%if(mem != null){%>
						location.href="<%= contextPath %>/detail.bo?head=<%=head%>&m_no=<%=mem.getM_no()%>&bId=" + bId;
					<%}else{%>
						location.href="<%= contextPath %>/detail.bo?head=<%=head%>&bId=" + bId;
					<%}%>
				});
				
			});
		
		</script>
	
	
		<br><br>
		<!-- 페이징 바  -->
		<div id=pageArea>
		<button onclick="location.href='<%=contextPath%>/list.bo?head=<%=head%>&currentPage=1';"><<</button>
		
		<% if(pi.getCurrentPage() == 1) {%>
			<button disabled><</button>
		<%}else{ %>
			<button onclick="location.href='<%=contextPath%>/list.bo?head=<%=head%>&currentPage=<%=pi.getCurrentPage()-1%>';"><</button>
		<%} %>
		
		<%	for(int i=pi.getStartPage(); i<=pi.getEndPage(); i++){%>
		
				<%if(i == pi.getCurrentPage()){%>
					<button disabled><%= i %></button>
				<%}else{ %>
					<button onclick="location.href='<%=contextPath%>/list.bo?head=<%=head%>&currentPage=<%=i%>';"><%=i %></button>
				<%} %>
		<%	} %>
		
		<% if(pi.getCurrentPage() == pi.getMaxPage()){ %>
			<button disabled>></button>
		<%}else{ %>
			<button onclick="location.href='<%=contextPath%>/list.bo?head=<%=head%>&currentPage=<%=pi.getCurrentPage()+1%>';">></button>
		<%} %>
		<button onclick="location.href='<%=contextPath %>/list.bo?head=<%=head%>&currentPage=<%=pi.getMaxPage() %>';">>></button>
		</div>
		
		
		<script>
		$(function(){
			$(".pagingArea").children().css("background","lightgray");
		});
		
		function writeBtn(){
			<%if(mem != null) {%>
				location.href='<%= contextPath %>/insertForm.bo?head=<%=head%>';
			<%}else{%>
				alert('로그인을 해야 글쓰기가 가능합니다.');
			<%}%>
		}  
				
		</script>
		
	
	</div>
	
	<%@ include file="/views/include/footer.jsp" %>
</body>
</html>

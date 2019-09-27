<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.board.model.vo.*, java.util.ArrayList"%>
<%
	Board b = (Board)request.getAttribute("b");
	
	PageInfo pi = (PageInfo)request.getAttribute("pi");  
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");

	
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
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
	}.tableArea{
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
		width:640px;
		height:30px;
		margin-left:auto;
		margin-right:auto;
		/*border:1px solid black;*/
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
		<h1 align="left"><%= head %>게시판</h1>	
		<div id="writeBtnArea">
		<div id="writeBtn" onclick="<%= contextPath %>/write.bo">글쓰기</div>
		</div>
		<div class="tableArea">
			<table>
				<tr>
					<th width="50">No.</th>
					<th width="150">작성자</th>
					<th width="400">제목</th>
					<% if(head.equals("study") || head.equals("project")){ %>
					<th width="300">모집기간</th>
					<% } %>
					<th width="100">등록일자</th>
					<th width="70">조회수</th>
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
						<td><%= i.getEnroll_date() %></td>				
						<td><%= i.getCount() %></td>				
					</tr>
					<% } %>
				<% } %>
			</table>
		</div>
	
		<br>
		<!-- 페이징 바  -->
		<div class="pagingArea" align="center">
			<div id="맨처음으로"> &lt;&lt; </div>
			<div id="이전으로"> &lt; </div>
			<% for(int i=startPage; i<=endPage; i++){ %>
				<% if(i == currentPage){ %>
				<div id="현재페이지"> <%= i %> </div>
				<% }else{ %>
					<div id="페이지"> <%= i %> </div>
				<% } %>
			<% } %>
			
			<div id="다음으로"> &gt; </div>
			<div id="맨끝으로"> &gt;&gt; </div>
		</div>
	
	
		<script>
		$(function(){
			$(".pagingArea").children().css("background","lightgray");
		});
		$(function(){
			$("#맨처음으로").mouseenter(function(){
				$(this).css({"background":"lightblue", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).css("background", "lightgray");
			}).click(function(){
				location.href="<%=contextPath%>/list.bo?currentPage=1";
			});
		});
		$(function(){
			if(<%=currentPage%> != 1) {
				$("#이전으로").mouseenter(function(){
					$(this).css({"background":"lightblue", "cursor":"pointer"});
				}).mouseout(function(){
					$(this).css("background", "lightgray");
				}).click(function(){
					location.href="<%=contextPath%>/list.bo?currentPage=<%=currentPage-1%>";
				});
			} 
		});
		$(function(){
			for(var i=<%=startPage%>; i<=<%=endPage%>; i++){
				if(i == <%=currentPage%>){
					$("#현재페이지").css("background","lightblue");
				}else{
					$("#페이지").mouseenter(function(){
						$(this).css({"background":"lightblue", "cursor":"pointer"});
					}).mouseout(function(){
						$(this).css("background", "lightgray");
					}).click(function(){
						location.href='<%=contextPath%>/list.bo?currentPage='+ i;
					});
				}
			}
		});
		$(function(){
			if(<%=currentPage%> != <%=maxPage%>) {
				$("#다음으로").mouseenter(function(){
					$(this).css({"background":"lightblue", "cursor":"pointer"});
				}).mouseout(function(){
					$(this).css("background", "lightgray");
				}).click(function(){
					location.href="<%=contextPath%>/list.bo?currentPage=<%=currentPage+1%>";
				});
			}
			
		});
		</script>
		
	
	</div>
	
	<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
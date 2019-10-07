<%@page import="com.kh.resume.model.vo.Resume"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.board.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% 
	/* Resume re = (Resume)request.getAttribute("re"); */ 
	//String contextPath = request.getContextPath();
	Member m = (Member)session.getAttribute("loginUser"); 
	/* PageInfo pi = (PageInfo)request.getAttribute("pi"); */
	
	ArrayList<Resume> list = (ArrayList<Resume>)request.getAttribute("list");
	/* 
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage(); */
	
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이력서 리스트</title>
<style>
	table{
		border:1px solid black;
		text-align:center;
	}
	.tableArea{
		width:650px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
	}
	tabel td:hover{
		background-color:lightgray;
	}
</style>
</head>
<body>
<%@ include file="/views/include/header.jsp" %>
<h3>나의 이력서</h3>
<div id="tableArea">
<input type="button" id="addRe" value="+ 새이력서 작성하기" onclick="location.href='<%=contextPath%>/add.re';">
	<table align="center" id="listArea" border="1px">
		<tr>
	
		<th>No</th>
		<th>제목</th>
		<th>최근수정일자</th>
		
		</tr>
			<% if(list.isEmpty()){ %>
				<tr>
					<td colspan="5">조회된 리스트가 없습니다.</td>
				</tr>
				<% }else{ %>
				
					<% for(Resume re : list){ %>
					<tr>
						<td><%=re.getResume_no()%></td>
						<td name="title" onclick="goDetail(this);"><%= re.getTitle() %></td>
						<td ><%= re.getUpdate_date() %></td>
					
					</tr>
					<% } %>
				
				<% } %>
		
	
	</table>
	
	

</div>
		<script>
			$(function(){
				$("#listArea td").mouseenter(function(){
					$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
				}).mouseout(function(){
					$(this).parent().css("background", "white");
				});
			});
			
			
			
			
			function goDetail(abc){//abc로 바꿨음
				var resume_no = $(abc).parent().children().eq(0).text();//$(abc)
				console.log(resume_no);
				//return false;
				location.href="<%=contextPath%>/detail.re?resume_no="+resume_no;
			}
			
			<%-- function updateResum(aaa){
				var resume_no = $(aaa).parent().children().eq(2).text();
				console.log(resume_no);
				location.href="<%=contextPath%>/updateForm.re?resume_no="+resume_no;
			}
			
			function deleteResum(abc){
				var resume_no = $(abc).parent().children().eq(0).text();
				location.href="<%=contextPath%>/deleteResum.re?resume_no="+resume_no;
			} --%>
				
			
		</script>
		
		<%-- <!-- ----------- 페이징 바 ------------ -->
		<div class="pagingArea" align="center">
			
			<!-- 맨처음으로(<<) -->
			<button onclick="location.href='<%=contextPath%>/list.re?currentPage=1';"> &lt;&lt; </button>
			
			<!-- 이전 페이지로(<) -->
			<% if(currentPage == 1){ %>
			<button disabled> &lt; </button>
			<% }else{ %>
			<button onclick="location.href='<%=contextPath%>/list.re?currentPage=<%= currentPage-1 %>';"> &lt; </button>
			<% } %>
			
			<!-- 10개의 페이지 목록 -->
			<% for(int p=startPage; p<=endPage; p++){ %>
				
				<% if(p == currentPage){ %>
				<button disabled> <%= p %> </button>
				<% }else { %>
				<button onclick="location.href='<%=contextPath%>/list.bo?currentPage=<%=p%>';"> <%= p %> </button>
				<% } %>
				
			<% } %>
			
			<!-- 다음 페이지로(>) -->
			<% if(currentPage == maxPage){ %>
			<button disabled> &gt; </button>
			<% }else{ %>
			<button onclick="location.href='<%=contextPath%>/list.re?currentPage=<%=currentPage+1%>';"> &gt; </button>
			<% } %>
			
			<!-- 맨끝으로(>>) -->
			<button onclick="location.href='<%=contextPath%>/list.bo?currentPage=<%=maxPage%>';"> &gt;&gt; </button>
			
		</div>
		<br>
	 --%>
	



<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
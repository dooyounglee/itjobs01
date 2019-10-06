<%@page import="com.kh.board.model.vo.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
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
</head>
<body>
	<%@ include file="/views/include/header.jsp" %>
	
	<div class="thumbnailArea">
			
			<% for(int i=0; i<list.size(); i++) { %>
				<div class="thumb-list" align="center">
					<input type="hidden" value="<%= list.get(i).getB_no() %>" id="bId">
					<div>
						<img onclick="imgBtn();" src="<%=contextPath%>/resources/fileupload_board/<%= list.get(i).getEditFile() %>"  width="200px" height="150px">
					</div>	
					<p>
						 <%= list.get(i).getTitle() %>	<br>
						조회수 : <%= list.get(i).getCount() %>
					</p>
				</div>
			<% } %>
		</div>
	</div>

		<br><br>
		<!-- 페이징 바  -->
		<div id=pageArea>
		<button onclick="location.href='<%=contextPath%>/listForm.bo?head=<%=head%>&currentPage=1';"><<</button>
		
		<% if(pi.getCurrentPage() == 1) {%>
			<button disabled><</button>
		<%}else{ %>
			<button onclick="location.href='<%=contextPath%>/listForm.bo?head=<%=head%>&currentPage=<%=pi.getCurrentPage()-1%>';"><</button>
		<%} %>
		
		<%	for(int i=pi.getStartPage(); i<=pi.getEndPage(); i++){%>
		
				<%if(i == pi.getCurrentPage()){%>
					<button disabled><%= i %></button>
				<%}else{ %>
					<button onclick="location.href='<%=contextPath%>/listForm.bo?head=<%=head%>&currentPage=<%=i%>';"><%=i %></button>
				<%} %>
		<%	} %>
		
		<% if(pi.getCurrentPage() == pi.getMaxPage()){ %>
			<button disabled>></button>
		<%}else{ %>
			<button onclick="location.href='<%=contextPath%>/listForm.bo?head=<%=head%>&currentPage=<%=pi.getCurrentPage()+1%>';">></button>
		<%} %>
		<button onclick="location.href='<%=contextPath %>/listForm.bo?head=<%=head%>&currentPage=<%=pi.getMaxPage() %>';">>></button>
		</div>

	<script>
		$(function(){
			$("img").mouseenter(function(){
				$(this).css({"cursor":"pointer"})
			}).click(function(){
				var bId = $("#bId").val();
				
				location.href="<%= contextPath %>/detail.bo?head=form&bId=" + bId;
			
			});
		});
	
	</script>
</body>
</html>
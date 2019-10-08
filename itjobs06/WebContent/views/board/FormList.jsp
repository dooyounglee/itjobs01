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

<!-- import jobx -->
<%@ include file="/views/include/user/style.jsp" %>
<!-- End of import from jobx -->

<!-- import of jobx -->
<%@ include file="/views/include/user/js.jsp" %>
<!-- End of import of jobx -->
</head>
<body>
	
	<header id="home" class="hero-area">
	<%@ include file="/views/include/user/header_nav.jsp" %>
	</header>

	<!-- page-header -->
	<%@ include file="/views/include/user/page_header.jsp" %>
	<script>
		var page_header_title='게시판'
	</script>
	<!-- end of page-header -->
	
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
	
	
	
	<!-- footer -->
	<%@ include file="/views/include/user/footer.jsp" %>
	<!-- End of footer -->
	
	<!-- back to top button -->
		<a href="#" class="back-to-top"> <i class="lni-arrow-up"></i></a>
	<!-- End of back to top button -->
	
	<!-- 뭔지 모르겠어 -->
	<div id="preloader">
		<div class="loader" id="loader-1"></div>
	</div>
	<!-- 뭔지 모르겠어 -->


	<script>
	$('.inner-header').children('h3').text(page_header_title)
	</script>
</body>
</html>
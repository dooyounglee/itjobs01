<%@page import="com.kh.resume.model.vo.Resume"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.board.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% 
	/*  Resume re = (Resume)request.getAttribute("re"); */
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

<!-- import jobx -->
<%@ include file="/views/include/user/style.jsp" %>
<!-- End of import from jobx -->


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
	
	#new{
		margin-left:66.5%;
	}
</style>
</head>
<body>

<header id="home" class="hero-area">
	<%@ include file="/views/include/user/header_nav.jsp" %>
	</header>

	<!-- page-header -->
	<%@ include file="/views/include/user/page_header.jsp" %>
	<script>
		var page_header_title='나의 이력서'
	</script>
	<!-- end of page-header -->
	
<div id="content">
<div id="newButton">
<a href="<%=contextPath%>/add.re" class="btn btn-common btn-xs" id="new">+ 새 이력서 작성하기</a>
</div>
<br>
<% if(list.isEmpty()){ %>
<tr>
					<td colspasn="5">조회된 리스트가 없습니다.</td>
				</tr>
<% }else{ %>
			<% for(Resume re : list){ %>
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-6 col-xs-12">
<div class="manager-resumes-item">
<div class="manager-content">
<a href="resume.html"><img class="resume-thumb" src="assets/img/jobs/avatar-1.jpg" alt=""></a>
<div class="manager-info">
<div class="manager-name">
<h4><a href="<%=contextPath%>/detail.re?resume_no=<%= re.getResume_no()%>"><%= re.getTitle() %></a></h4>
<% if(re.getOpen().equals("Y")){ %>

<h5>공개중인 이력서입니다.</h5>
<%}else{%>
<h5>비공개중인 이력서입니다.</h5>
<%} %>
</div>
<div class="manager-meta">
<span class="location"><i class="ti-location-pin"></i><%= re.getUpdate_date() %>에 수정된 이력서입니다.</span>
</div>
</div>
</div>
<div class="item-body">
<div class="content">
<p><%= re.getCover_letter() %></p>
</div>

<div class="resume-skills">
<% String[] p_langs = re.getP_language().split(","); %>
<% for(int i=0; i < p_langs.length; i++){ %>
<div class="tag-list float-left">
<% for(int j=0; j< p_langs.length; j++){ %>
<span><%= p_langs[i] %></span>

<%} %>
</div>
<%} %>
<div class="resume-exp float-right">
<a  class="btn btn-common btn-xs">
<% if(re.getCareer_year() == 0){ %>
		신입
<% }else{ %>
	경력 <%= re.getCareer_year() %>년차
<%} %>
</a>
</div>
</div>
</div>
</div>
</div>

</div>
</div>
<% } %>
<%} %>
</div>

	
<%-- <%-- 
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
			
			--%>
		
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


	<!-- import of jobx -->
	<%@ include file="/views/include/user/js.jsp" %>
	<!-- End of import of jobx -->

<script>
	$('.inner-header').children('h3').text(page_header_title)
</script>


</body>
</html>
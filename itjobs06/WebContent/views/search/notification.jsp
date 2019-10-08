<%@page import="com.kh.board.model.vo.PageInfo"%>
<%@page import="com.kh.notification.model.vo.Notification"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>

	.like{
	width:20px;
	height:20px;
	}

	.likeimg{
	width:20px;
	height:20px;
	box-sizing:border-box;
	text-align:center;
	}
	
	.likeimg:hover{
	cursor:pointer;
	}

</style>

<!-- import jobx -->
<%@ include file="/views/include/user/style.jsp" %>
<!-- End of import from jobx -->

</head>
<body>
	
	<header id="home" class="hero-area">
	<%@ include file="/views/include/user/header_nav.jsp" %>
	</header>

	<!-- page-header -->
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="inner-header">
						<h3>Find Job</h3>
					</div>
					<div class="job-search-form">
						<form>
							<div class="row">
								<div class="col-lg-5 col-md-5 col-xs-12">
									<div class="form-group">
										<input class="form-control" type="text"
											placeholder="Job Title or Company Name">
									</div>
								</div>
								<div class="col-lg-3 col-md-5 col-xs-12">
									<div class="form-group">
										<div class="search-category-container">
											<label class="styled-select"> <select>
													<option value="none">Locations</option>
													<option value="none">New York</option>
													<option value="none">California</option>
													<option value="none">Washington</option>
													<option value="none">Birmingham</option>
													<option value="none">Chicago</option>
													<option value="none">Phoenix</option>
											</select>
											</label>
										</div>
										<i class="lni-map-marker"></i>
									</div>
								</div>
								<div class="col-lg-3 col-md-5 col-xs-12">
									<div class="form-group">
										<div class="search-category-container">
											<label class="styled-select"> <select>
													<option>All Categories</option>
													<option>Finance</option>
													<option>IT & Engineering</option>
													<option>Education/Training</option>
													<option>Art/Design</option>
													<option>Sale/Markting</option>
													<option>Healthcare</option>
													<option>Science</option>
													<option>Food Services</option>
											</select>
											</label>
										</div>
										<i class="lni-layers"></i>
									</div>
								</div>
								<div class="col-lg-1 col-md-2 col-xs-12">
									<button type="submit" class="button">
										<i class="lni-search"></i>
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		var page_header_title='공고 검색'
	</script>
	<!-- end of page-header -->
	
	<!-- list section -->
	<section id="job-listings" class="section">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title">Featured Jobs</h2>
				<p>Hand-picked jobs featured depending on popularity and
					benifits</p>
			</div>
			<div class="row">
			<%	ArrayList<Notification> list=(ArrayList<Notification>)request.getAttribute("list");
				for(Notification n:list){%>
				<div class="col-lg-6 col-md-12 col-xs-12">
					<a class="job-listings-featured" href="#">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="job-company-logo">
									<img src="assets/img/features/img1.png" alt="">
								</div>
								<div class="job-details">
									<h3><%=n.getTitle() %></h3>
									<span class="company-neme" onclick="detailCo(<%=n.getCo_no()%>)"><%=n.getCo_no()%></span>
									<div class="tags">
										<span><i class="lni-map-marker"></i> 위치</span> <span><i
											class="lni-user"></i><%=n.getSalary() %> 만원</span>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12 text-right">
								<div class="tag-type">
									<sapn class="heart-icon"> <i class="lni-heart"></i> </sapn>
									<span class="full-time">~<%=n.getEnd_date().split(" ")[0] %></span>
								</div>
							</div>
						</div>
					</a>
				</div>
			<%	} %>
			<%	PageInfo pi=(PageInfo)request.getAttribute("pi");
				System.out.println(pi);
				int currentPage=pi.getCurrentPage();
				String sText=(String)request.getAttribute("sText");%>
				<ul class="pagination" style="display:block;">
					<%	if(currentPage>1){ %>
					<li class="active"><a href="<%=request.getContextPath()%>/notificationList.se?sText=<%=sText %>&currentPage=<%=currentPage-1%>" class="btn-prev"><i
							class="lni-angle-left"></i> prev</a></li>
					<%	} %>
					<%	for(int i=pi.getStartPage();i<=pi.getEndPage();i++){ %>
					<li><a href="<%=request.getContextPath()%>/notificationList.se?sText=<%=sText %>&currentPage=<%=i%>"><%=i %></a></li>
					<%	} %>
					<%	if(currentPage<pi.getMaxPage()){ %>
					<li class="active"><a href="<%=request.getContextPath()%>/notificationList.se?sText=<%=sText %>&currentPage=<%=currentPage+1%> class="btn-next">Next <i
							class="lni-angle-right"></i></a></li>
					<%	} %>
				</ul>
				
				<div class="col-12 text-center mt-4">
					<a href="job-page.html" class="btn btn-common">Browse All Jobs</a>
				</div>
			</div>
		</div>
	</section>
	<!-- End of list section -->
	
<h1>공고 검색창</h1>
<select id="sKey">
	<option value="address">지역</option>
	<option value="p_language">언어</option>
	<option value="certificate">자격증</option>
	<option value="department">학과</option>
	<option value="title">제목</option>
	<option value="hope_salary">희망연봉</option>
</select>
<input id="sText" autocomplete=off><button onclick="search()">검색</button><br>
<input id="sTextA" name="sText" autocomplete=off><button onclick="searchA()">검색</button>
<button>상세검색</button>
<hr>
	<%	if(mem!=null){ %>
	<input type="hidden" value="<%=mem.getM_no() %>" id="memNo">
	<%	} %>

<div id="resultArea">
	<div id="result">
<%	list=(ArrayList<Notification>)request.getAttribute("list");
	for(Notification n:list){%>
	<%=n %>
	

	<!-- 좋아요 버튼 -->
	
	<input type="hidden" value="<%=n.getNoti_no()%>" class="no_no">
	<span class="like">
		<img src="./resources/img/like-before.png" class="likeimg">
	</span>
	
	<button onclick="location.href='<%=request.getContextPath()%>/detail.co?co_no=<%=n.getCo_no()%>'">기업정보</button>
	<br>	
<%	} %>
<script>
	
</script>

	</div>
</div>

<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->

<script>
	function search(){
		return false;
		var sKey=$('#sKey').val();
		var sText=$('#sText').val();
		$('#resultArea').load('<%=request.getContextPath()%>/notificationList.se #result',{'sKey':sKey,'sText':sText})
	}
	
	function searchA(){
		var sTextA=$('#sTextA').val();
		$('#resultArea').load('<%=request.getContextPath()%>/notificationList.se #result',{"sText":sTextA})
	}
	
	function detailCo(co_no){
		location.href="<%=request.getContextPath()%>/detail.co?co_no="+co_no
	}

	// 좋아요 ajax
	$(function(){
	
		var memNo = $("#memNo").val();
		
		
		$(".likeimg").click(function(){
			
			var noNo =	$(this).parent().prev().val()
			
			var likeimg = $(this).parent().children() 
			
	 			 $.ajax({
					url:"like.no",
					data:{noNo:noNo, memNo:memNo},
					type:"get",
					success:function(result){
						
						/* console.log("ajax성공");
						console.log(result); */
						
						if(result==0){
						likeimg.attr('src','./resources/img/like-after.png');							
						}else{
						likeimg.attr('src','./resources/img/like-before.png');		
						}
				
					
					
					},error:function(){
						
						console.log("ajax실패");
					}
			
				}); 
		})
	})
		

	
	
	
		
		
		
		
		
		
		
			

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


	<!-- import of jobx -->
	<%@ include file="/views/include/user/js.jsp" %>
	<!-- End of import of jobx -->

<script>
	$('.inner-header').children('h3').text(page_header_title)
</script>

</body>
</html>
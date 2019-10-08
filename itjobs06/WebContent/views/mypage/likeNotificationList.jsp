<%@page import="com.kh.notification.model.vo.Notification"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- import jobx -->
<%@ include file="/views/include/user/style.jsp" %>
<!-- End of import from jobx -->

</head>
<body>

	<header id="home" class="hero-area">
	<%@ include file="/views/include/user/header_nav.jsp" %>
	</header>

	<!-- page-header -->
	<%@ include file="/views/include/user/page_header.jsp" %>
	<script>
		var page_header_title='내 정보 수정'
	</script>
	<!-- end of page-header -->
	
	
	<!-- content -->
	<div id="content">
	
		<!-- container -->
		<div class="container">
			
			<!-- row -->
			<div class="row">
				
				<!-- left -->
				<%@ include file="/views/include/user/mypage_menu.jsp" %>
				<!-- End of left -->
				
				<!-- right  -->
				<div class="col-lg-8 col-md-6 col-xs-12">
					<div class="job-alerts-item bookmarked">
						<h3 class="alerts-title">좋아요 한 공고</h3>
<%	ArrayList<Notification> list=(ArrayList<Notification>)request.getAttribute("list");
	for(Notification n:list){%>
						<a class="job-listings" href="job-details.html">
							<div class="row">
								<div class="col-lg-4 col-md-12 col-xs-12">
									<div class="job-company-logo">
										<img src="assets/img/features/img1.png" alt="">
									</div>
									<div class="job-details">
										<h3><%=n.getTitle() %></h3>
										<span class="company-neme"> <%=n.getNickname() %> </span>
									</div>
								</div>
								<div class="col-lg-3 col-md-12 col-xs-12 text-right">
									<div class="location">
										<i class="lni-map-marker"></i> <%=n.getAddress() %>
									</div>
								</div>
								<div class="col-lg-2 col-md-12 col-xs-12 text-right">
									<span class="btn-full-time">Full Time</span>
								</div>
								<div class="col-lg-3 col-md-12 col-xs-12 text-right">
									<span class="btn-apply">Apply Now</span>
									<span class="btn-apply" onclick="return del(<%=n.getNoti_no()%>);">삭제</span>
								</div>
							</div>
						</a>
<%	} %>
						<!-- <a class="job-listings" href="job-details.html">
							<div class="row">
								<div class="col-lg-4 col-md-12 col-xs-12">
									<div class="job-company-logo">
										<img src="assets/img/features/img2.png" alt="">
									</div>
									<div class="job-details">
										<h3>Graphic Designer</h3>
										<span class="company-neme"> Hunter Inc. </span>
									</div>
								</div>
								<div class="col-lg-3 col-md-12 col-xs-12 text-right">
									<div class="location">
										<i class="lni-map-marker"></i> New Yourk, US
									</div>
								</div>
								<div class="col-lg-2 col-md-12 col-xs-12 text-right">
									<span class="btn-full-time">Full Time</span>
								</div>
								<div class="col-lg-3 col-md-12 col-xs-12 text-right">
									<span class="btn-apply">Apply Now</span>
								</div>
							</div>
						</a>
						<a class="job-listings" href="job-details.html">
							<div class="row">
								<div class="col-lg-4 col-md-12 col-xs-12">
									<div class="job-company-logo">
										<img src="assets/img/features/img3.png" alt="">
									</div>
									<div class="job-details">
										<h3>Managing Director</h3>
										<span class="company-neme"> MagNews </span>
									</div>
								</div>
								<div class="col-lg-3 col-md-12 col-xs-12 text-right">
									<div class="location">
										<i class="lni-map-marker"></i> New Yourk, US
									</div>
								</div>
								<div class="col-lg-2 col-md-12 col-xs-12 text-right">
									<span class="btn-full-time">Full Time</span>
								</div>
								<div class="col-lg-3 col-md-12 col-xs-12 text-right">
									<span class="btn-apply">Apply Now</span>
								</div>
							</div>
						</a>
						<a class="job-listings" href="job-details.html">
							<div class="row">
								<div class="col-lg-4 col-md-12 col-xs-12">
									<div class="job-company-logo">
										<img src="assets/img/features/img4.png" alt="">
									</div>
									<div class="job-details">
										<h3>Software Engineer</h3>
										<span class="company-neme"> AmazeSoft </span>
									</div>
								</div>
								<div class="col-lg-3 col-md-12 col-xs-12 text-right">
									<div class="location">
										<i class="lni-map-marker"></i> New Yourk, US
									</div>
								</div>
								<div class="col-lg-2 col-md-12 col-xs-12 text-right">
									<span class="btn-full-time">Full Time</span>
								</div>
								<div class="col-lg-3 col-md-12 col-xs-12 text-right">
									<span class="btn-apply">Apply Now</span>
								</div>
							</div>
						</a> -->

						<ul class="pagination">
							<li class="active"><a href="#" class="btn btn-common"><i
									class="ti-angle-left"></i> prev</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li class="active"><a href="#" class="btn btn-common">Next
									<i class="ti-angle-right"></i>
							</a></li>
						</ul>

					</div>
				</div>
				<!-- End of right -->
				
			</div>
			<!-- End of row -->
			
		</div>
		<!-- End of container -->
	</div>
	<!-- End of content -->
	
	
	
<h1>공고 좋아요</h1>
<table border=1>
	<thead>
		<tr>
			<th><input type=checkbox></th>
			<th>공고제목</th>
			<th>기업명</th>
			<th>등록일</th>
			<th>마감일</th>
			<th>상태</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
		<%	list=(ArrayList<Notification>)request.getAttribute("list");
			for(Notification n:list){%>
		<tr>
			<td><input type=checkbox></td>
			<td><%=n.getTitle() %></td>
			<td><%=n.getNickname() %></td>
			<td><%=n.getEnroll_date() %></td>
			<td><%=n.getEnd_date() %></td>
			<td><%=n.getStatus() %></td>
			<td><button onclick="del(<%=n.getNoti_no()%>,<%=mem.getM_no()%>)">삭제</button></td>
		</tr>
		<%	} %>
	</tbody>
</table>
<script>
	function del(noti_no){
		location.href="<%=request.getContextPath()%>/delNotification.like?noti_no="+noti_no;
		return false;
	}
</script>

<button>삭제</button>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>공고제목</th>
		<th>기업명</th>
		<th>등록일</th>
		<th>마감일</th>
		<th>삭제</th>
	</tr>
	<tr>
		<td><input type=checkbox></td>
		<td><a href="get.jsp?bno=1">제목1</a></td>
		<td>기업1</td>
		<td>등록일1</td>
		<td>수정일1</td>
		<td><button>삭제</button></td>
	</tr>
</table>

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
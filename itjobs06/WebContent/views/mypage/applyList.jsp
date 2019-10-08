<%@page import="com.kh.notification.model.vo.Notification"%>
<%@page import="com.kh.volunteer.model.vo.Volunteer"%>
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
		var page_header_title='나의 지원 리스트'
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
						<h3 class="alerts-title">나의 지원 리스트</h3>
<%	ArrayList<Volunteer> list=(ArrayList<Volunteer>)request.getAttribute("list");
	for(Volunteer v:list){%>
						<a class="job-listings" href="job-details.html">
							<div class="row">
								<div class="col-lg-4 col-md-12 col-xs-12">
									<div class="job-company-logo">
										<img src="assets/img/features/img1.png" alt="">
									</div>
									<div class="job-details">
										<h3><%=v.getTitle() %></h3>
										<span class="company-neme"><%=v.getNickname() %></span>
									</div>
								</div>
								<div class="col-lg-3 col-md-12 col-xs-12 text-right">
									<span class="btn-full-time">~<%=v.getEnd_date().split(" ")[0] %></span>
								</div>
								<div class="col-lg-3 col-md-12 col-xs-12 text-right">
									<span class="btn-full-time"><%=v.getStatus() %></span>
								</div>
								<div class="col-lg-2 col-md-12 col-xs-12 text-right">
									<span class="btn-apply" onclick="return del(0);">삭제</span>
								</div>
							</div>
						</a>
<%	} %>

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
	
	
	
	
<%-- <%@ include file="/views/include/header.jsp" %> --%>
<h1>내가 지원한 공고</h1>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>공고제목</th>
		<th>기업명</th>
		<th>지원일</th>
		<th>마감일</th>
		<th>상태</th>
		<th>지원한 내 이력서</th>
	</tr>
	<%	list=(ArrayList<Volunteer>)request.getAttribute("list");
		for(Volunteer n:list){%>
	<tr>
		<td><input type=checkbox></td>
		<td><a href="<%=request.getContextPath()%>/get.no?noti_no=<%=n.getNoti_no()%>"><%=n.getTitle() %></a></td>
		<td><%=n.getNickname() %></td>
		<td><%=n.getV_date() %></td>
		<td><%=n.getEnd_date() %></td>
		<td><%=n.getStatus() %></td>
		<td><%=n.getResume_no() %></td>
	</tr>
	<%	} %>
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
<%@page import="com.kh.resume.model.vo.Resume"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.notification.model.vo.Notification"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- import jobx -->
<%@ include file="/views/include/user/style.jsp" %>
<!-- End of import from jobx -->

</head>
<body>

	<header id="home" class="hero-area">
	<%@ include file="/views/include/user/header_nav.jsp" %>
	</header>

	<%	Notification noti=(Notification)request.getAttribute("noti");%>
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-xs-12">
					<div class="breadcrumb-wrapper">
						<div class="img-wrapper">
							<img src="assets/img/about/company-logo.png" alt="">
						</div>
						<div class="content">
							<h3 class="product-title"><%=noti.getTitle() %></h3>
							<p class="brand"><%=noti.getNickname() %></p>
							<div class="tags">
								<span><i class="lni-map-marker"></i> <%=noti.getAddress() %></span> <span><i
									class="lni-calendar"></i><%=noti.getEnroll_date() %></span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-xs-12">
					<div class="month-price">
						<span class="year">연봉</span>
						<div class="price"><%=noti.getSalary() %></div>
					</div>
					<div class="month-price float-left">
						<span class="year">마감일</span>
						<div class="price">~<%=noti.getEnd_date().split(" ")[0] %></div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<section class="job-detail section">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-8 col-md-12 col-xs-12">
					<div class="content-area">
						<h4>필요언어</h4>
						<ul>
						<%	String[] arr_lan=noti.getP_language().split(",");
							for(int i=0;i<arr_lan.length;i++){%>
							<li>- <%=arr_lan[i] %></li>
						<%	} %>
						</ul>
						<h4>우대사항</h4>
						<p><%=noti.getHope() %></p>
						<h4>직군</h4>
						<p><%=noti.getJobs() %></p>
						<h4>세부내용</h4>
						<p><%=noti.getContents() %></p>
						<%	if(mem!=null && mem.getM_no()==noti.getCo_no()){ %>
						<a href="#" onclick="edit(<%=noti.getNoti_no() %>)" class="btn btn-common">수정</a>
						<a href="#" onclick="del(<%=noti.getNoti_no() %>)" class="btn btn-common">삭제</a>
						<a href="#" onclick="open_(<%=noti.getNoti_no() %>)" class="btn btn-common">공개</a>
						<a href="#" onclick="openCancle(<%=noti.getNoti_no() %>)" class="btn btn-common">비공개</a>
						<a href="#" onclick="location.href='<%=request.getContextPath() %>/myNotification.me'" class="btn btn-common">나의 공고목록</a>
						<a href="#" onclick="showApplier(<%=noti.getNoti_no() %>)" class="btn btn-common">지원자 확인</a>
						<%	}else if(mem!=null && mem.getType().equals("1")){
								ArrayList<Resume> rlist=(ArrayList<Resume>)request.getAttribute("rlist"); %>
							<form action="apply.vo" method="post">
								<input type=hidden name="noti_no" value="<%=noti.getNoti_no() %>">
								<select name="resume_no">
									<% for(Resume r:rlist){%>
									<option value="<%=r.getResume_no()%>"><%=r.getTitle() %></option>
									<%	} %>
								</select>
								<a href="#" onclick="apply(<%=noti.getNoti_no() %>)" class="btn btn-common">지원하기</a>
							</form>
						<%	} %>
					</div>
				</div>
				<div class="col-lg-4 col-md-12 col-xs-12">
					<div class="sideber">
						<div class="widghet">
							<h3>Job Location</h3>
							<div class="maps">
								<div id="map" class="map-full">
									<iframe
										src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d405691.57240383344!2d-122.3212843181106!3d37.40247298383319!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb68ad0cfc739%3A0x7eb356b66bd4b50e!2sSilicon+Valley%2C+CA%2C+USA!5e0!3m2!1sen!2sbd!4v1538319316724"
										allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
						<div class="widghet">
							<h3>Share This Job</h3>
							<div class="share-job">
								<form method="post" class="subscribe-form">
									<div class="form-group">
										<input type="email" name="Email" class="form-control"
											placeholder="https://joburl.com" required="">
										<button type="submit" name="subscribe"
											class="btn btn-common sub-btn">
											<i class="lni-files"></i>
										</button>
										<div class="clearfix"></div>
									</div>
								</form>
								<ul class="mt-4 footer-social">
									<li><a class="facebook" href="#"><i
											class="lni-facebook-filled"></i></a></li>
									<li><a class="twitter" href="#"><i
											class="lni-twitter-filled"></i></a></li>
									<li><a class="linkedin" href="#"><i
											class="lni-linkedin-fill"></i></a></li>
									<li><a class="google-plus" href="#"><i
											class="lni-google-plus"></i></a></li>
								</ul>
								<div class="meta-tag">
									<span class="meta-part"><a href="#"><i
											class="lni-star"></i> Write a Review</a></span> <span class="meta-part"><a
										href="#"><i class="lni-warning"></i> Reports</a></span> <span
										class="meta-part"><a href="#"><i class="lni-share"></i>
											Share</a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section id="featured" class="section bg-gray pb-45">
		<div class="container">
			<h4 class="small-title text-left">Similar Jobs</h4>
			<div class="row">
				<div class="col-lg-6 col-md-12 col-xs-12">
					<a class="job-listings-featured" href="job-details.html">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="job-company-logo">
									<img src="assets/img/features/img1.png" alt="">
								</div>
								<div class="job-details">
									<h3>Software Engineer</h3>
									<span class="company-neme">MizTech</span>
									<div class="tags">
										<span><i class="lni-map-marker"></i> New York</span> <span><i
											class="lni-user"></i>John Smith</span>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12 text-right">
								<div class="tag-type">
									<sapn class="heart-icon"> <i class="lni-heart"></i> </sapn>
									<span class="full-time">Full Time</span>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-6 col-md-12 col-xs-12">
					<a class="job-listings-featured" href="job-details.html">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="job-company-logo">
									<img src="assets/img/features/img2.png" alt="">
								</div>
								<div class="job-details">
									<h3>Graphic Designer</h3>
									<span class="company-neme">Hunter Inc.</span>
									<div class="tags">
										<span><i class="lni-map-marker"></i> New York</span> <span><i
											class="lni-user"></i>John Smith</span>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12 text-right">
								<div class="tag-type">
									<sapn class="heart-icon"> <i class="lni-heart"></i> </sapn>
									<span class="part-time">Part Time</span>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>






<%-- 기업
<button onclick="edit(<%=noti.getNoti_no() %>)">수정</button>
<button onclick="del(<%=noti.getNoti_no() %>)">삭제</button>
<button onclick="open_(<%=noti.getNoti_no() %>)">공개</button>
<button onclick="openCancle(<%=noti.getNoti_no() %>)">비공개</button>
<button onclick="location.href='<%=request.getContextPath()%>/myNotification.me'">나의 공고목록으로</button>
<button onclick="showApplier(<%=noti.getNoti_no() %>)">지원자 확인</button>
<br>
일반
<button onclick="apply(<%=noti.getNoti_no() %>)">지원하기</button>
<select>

</select> --%>


<script>
	function edit(noti_no){
		location.href="edit.no?noti_no="+noti_no;
	}
	function del(noti_no){
		location.href="del.no?noti_no="+noti_no;
	}
	function open_(noti_no){
		location.href="open.no?noti_no="+noti_no;
	}
	function openCancle(noti_no){
		location.href="openCancle.no?noti_no="+noti_no;
	}
	function showApplier(noti_no){
		location.href="list.vo?noti_no="+noti_no;
	}
	function apply(noti_no){
		
	}
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
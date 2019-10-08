<%@page import="com.kh.board.model.vo.Board"%>
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
		<%@ include file="/views/include/user/header_nav.jsp"%>
		<div class="container">
			<div class="row space-100 justify-content-center">
				<div class="col-lg-10 col-md-12 col-xs-12">
					<div class="contents">
						<h2 class="head-title">Find the job that fits your life</h2>
						<p style="font-size:50px">메인 페이지</p>
						<div class="job-search-form">
							<form action="main.se" method="get" autocomplete=off>
								<div class="row">
									<div class="col-lg-5 col-md-6 col-xs-12">
										<div class="form-group">
											<input class="form-control" type="text"
												placeholder="Job Title or Company Name" name="sText">
										</div>
									</div>
									<div class="col-lg-3 col-md-6 col-xs-12">
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
									<div class="col-lg-3 col-md-6 col-xs-12">
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
									<div class="col-lg-1 col-md-6 col-xs-12">
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
	</header>

	<!-- Listings Section Start -->
	<section id="job-listings" class="section">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title">Featured Jobs</h2>
				<p>Hand-picked jobs featured depending on popularity and
					benifits</p>
			</div>
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
				<div class="col-lg-6 col-md-12 col-xs-12">
					<a class="job-listings-featured" href="job-details.html">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="job-company-logo">
									<img src="assets/img/features/img3.png" alt="">
								</div>
								<div class="job-details">
									<h3>Managing Director</h3>
									<span class="company-neme">MagNews</span>
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
				<div class="col-lg-6 col-md-12 col-xs-12">
					<a class="job-listings-featured" href="job-details.html">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="job-company-logo">
									<img src="assets/img/features/img4.png" alt="">
								</div>
								<div class="job-details">
									<h3>Software Engineer</h3>
									<span class="company-neme">AmazeSoft</span>
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
									<img src="assets/img/features/img5.png" alt="">
								</div>
								<div class="job-details">
									<h3>Graphic Designer</h3>
									<span class="company-neme">Bingo</span>
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
									<img src="assets/img/features/img6.png" alt="">
								</div>
								<div class="job-details">
									<h3>Managing Director</h3>
									<span class="company-neme">MagNews</span>
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
				<div class="col-12 text-center mt-4">
					<a href="job-page.html" class="btn btn-common">Browse All Jobs</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Listings Section End -->

	<!-- job list -->
	<section id="latest-jobs" class="section bg-gray">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title">Latest Jobs</h2>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque
					dignissim quam et <br> metus effici turac fringilla lorem
					facilisis.
				</p>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-12 col-xs-12">
					<div class="jobs-latest">
						<div class="img-thumb">
							<img src="assets/img/features/img-1.jpg" alt="">
						</div>
						<div class="content">
							<h3>
								<a href="job-details.html">UX Designer</a>
							</h3>
							<p class="brand">MagNews</p>
							<div class="tags">
								<span><i class="lni-map-marker"></i> New York</span> <span><i
									class="lni-user"></i> John Smith</span>
							</div>
							<div class="tag mb-3">
								<i class="lni-tag"></i> #Html #Css #PHP
							</div>
							<span class="full-time">Full Time</span>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-xs-12">
					<div class="jobs-latest">
						<div class="img-thumb">
							<img src="assets/img/features/img-2.jpg" alt="">
						</div>
						<div class="content">
							<h3>
								<a href="job-details.html">UI Designer</a>
							</h3>
							<p class="brand">Hunter Inc.</p>
							<div class="tags">
								<span><i class="lni-map-marker"></i> New York</span> <span><i
									class="lni-user"></i> John Smith</span>
							</div>
							<div class="tag mb-3">
								<i class="lni-tag"></i> #Html #Css #PHP
							</div>
							<span class="part-time">Part Time</span>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-xs-12">
					<div class="jobs-latest">
						<div class="img-thumb">
							<img src="assets/img/features/img-3.jpg" alt="">
						</div>
						<div class="content">
							<h3>
								<a href="job-details.html">Web Developer</a>
							</h3>
							<p class="brand">MagNews</p>
							<div class="tags">
								<span><i class="lni-map-marker"></i> New York</span> <span><i
									class="lni-user"></i> John Smith</span>
							</div>
							<div class="tag mb-3">
								<i class="lni-tag"></i> #Html #Css #PHP
							</div>
							<span class="full-time">Full Time</span>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-xs-12">
					<div class="jobs-latest">
						<div class="img-thumb">
							<img src="assets/img/features/img-4.jpg" alt="">
						</div>
						<div class="content">
							<h3>
								<a href="job-details.html">UX Designer</a>
							</h3>
							<p class="brand">AmazeSoft</p>
							<div class="tags">
								<span><i class="lni-map-marker"></i> New York</span> <span><i
									class="lni-user"></i> John Smith</span>
							</div>
							<div class="tag mb-3">
								<i class="lni-tag"></i> #Html #Css #PHP
							</div>
							<span class="full-time">Full Time</span>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-xs-12">
					<div class="jobs-latest">
						<div class="img-thumb">
							<img src="assets/img/features/img-2.jpg" alt="">
						</div>
						<div class="content">
							<h3>
								<a href="job-details.html">Digital Marketer</a>
							</h3>
							<p class="brand">Bingo</p>
							<div class="tags">
								<span><i class="lni-map-marker"></i> New York</span> <span><i
									class="lni-user"></i> John Smith</span>
							</div>
							<div class="tag mb-3">
								<i class="lni-tag"></i> #Html #Css #PHP
							</div>
							<span class="part-time">Part Time</span>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-xs-12">
					<div class="jobs-latest">
						<div class="img-thumb">
							<img src="assets/img/features/img-1.jpg" alt="">
						</div>
						<div class="content">
							<h3>
								<a href="job-details.html">Web Developer</a>
							</h3>
							<p class="brand">MagNews</p>
							<div class="tags">
								<span><i class="lni-map-marker"></i> New York</span> <span><i
									class="lni-user"></i> John Smith</span>
							</div>
							<div class="tag mb-3">
								<i class="lni-tag"></i> #Html #Css #PHP
							</div>
							<span class="full-time">Full Time</span>
						</div>
					</div>
				</div>
				<div class="col-12 text-center mt-4">
					<a href="job-page.html" class="btn btn-common">Browse All Jobs</a>
				</div>
			</div>
		</div>
	</section>
	<!-- end of job list -->
	
	
	<!-- how to work -->
	<section class="how-it-works section">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title">How It Works?</h2>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque
					dignissim quam et <br> metus effici turac fringilla lorem
					facilisis.
				</p>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="work-process">
						<span class="process-icon"> <i class="lni-user"></i>
						</span>
						<h4>Create an Account</h4>
						<p>Post a job to tell us about your project. We'll quickly
							match you with the right freelancers find place best.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="work-process step-2">
						<span class="process-icon"> <i class="lni-search"></i>
						</span>
						<h4>Search Jobs</h4>
						<p>Post a job to tell us about your project. We'll quickly
							match you with the right freelancers find place best.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="work-process step-3">
						<span class="process-icon"> <i class="lni-cup"></i>
						</span>
						<h4>Apply</h4>
						<p>Post a job to tell us about your project. We'll quickly
							match you with the right freelancers find place best.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end of how to work -->
	

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
	
	
	
	

	<%@ include file="/views/include/header.jsp" %>
	
<h1>메인</h1>
<form id="searchForm" action="main.se" method="get" autocomplete=off>
	<input name="sText">
	<button onclick="return searchA()">검색</button>
	<button onclick="return search()">상세검색</button>
	<table id=search border=1 style="display:none;">
		<tr>
			<th>언어</th>
			<th>framework/library</th>
			<th>사용기간</th>
			<th>프로젝트경험</th>
			<th>플랫폼</th>
			<th>자리</th>
		</tr>
		<tr>
			<td>
				<input type=checkbox name=language value="java">java<br>
				<input type=checkbox name=language value="javascript">javascript<br>
				<input type=checkbox name=language value="C">C<br>
				<input type=checkbox name=language value="C++">C++<br>
				<input type=checkbox name=language value="C#">C#<br>
				<input type=checkbox name=language value="VBA">VBA<br>
				<input type=checkbox name=language value="python">python<br>
				<input type=checkbox name=language value="php">php<br>
				<input type=checkbox name=language value="asp">asp<br>
			</td>
			<td>
				<input type=checkbox />spring<br>
				<input type=checkbox />jsp&servlet<br>
				<input type=checkbox />vue<br>
				<input type=checkbox />react<br>
				<input type=checkbox />angular<br>
				<input type=checkbox />tensorflow<br>
				<input type=checkbox />keras<br>
			</td>
			<td>
				<input type=checkbox />1년미만<br>
				<input type=checkbox />2년미만<br>
				<input type=checkbox />3년미만<br>
				<input type=checkbox />4년미만<br>
				<input type=checkbox />4년이상<br>
			</td>
			<td>
				<input type=checkbox />개인<br>
				<input type=checkbox />중소기업<br>
				<input type=checkbox />대기업<br>
			</td>
			<td>
				<input type=checkbox />웹<br>
				<input type=checkbox />iOS<br>
				<input type=checkbox />Android<br>
				<input type=checkbox />AI<br>
				<input type=checkbox />딥러닝<br>
				<input type=checkbox />응용sw<br>
			</td>
			<td>
				<input type=checkbox />신입<br>
				<input type=checkbox />팀원급<br>
				<input type=checkbox />팀장급<br>
				<input type=checkbox />프리렌서<br>
			</td>
		</tr>
	</table>
</form>
<script>
	function searchA(){
		
	}
	function search(){
		$('#search').toggle()
		$('#searchForm').attr('action','mainDetail.se')
		
		return false;
	}
</script>

<fieldset>
<legend style="text-align:center">최신공고</legend>
<table border=1>
	<tr>
		<th>co_no</th>
		<th>공고제목</th>
		<th>마감날짜</th>
		<th>언어</th>
	</tr>
	<%-- 
	<%	ArrayList<Notification> nlist=(ArrayList<Notification>)request.getAttribute("nlist");
		for(Notification n:nlist){%>
	<tr>
		<td><%=n.getCo_no() %></td>
		<td><%=n.getTitle() %></td>
		<td><%=n.getEnd_date() %></td>
		<td><%=n.getP_language() %></td>
	</tr>
	<%	} %> --%>
</table>
</fieldset>
<fieldset>
<legend style="text-align:center">마감임박</legend>
<table border=1>
	<tr>
		<th>co_no</th>
		<th>공고제목</th>
		<th>마감날짜</th>
		<th>언어</th>
	</tr>
	<%-- <%	ArrayList<Notification> endlist=(ArrayList<Notification>)request.getAttribute("endlist");
		for(Notification n:endlist){%>
	<tr>
		<td><%=n.getCo_no() %></td>
		<td><%=n.getTitle() %></td>
		<td><%=n.getEnd_date() %></td>
		<td><%=n.getP_language() %></td>
	</tr>
	<%	} %> --%>
</table>
</fieldset>

<!-- 공지사항,자유게시판 -->
<div>
	<div style="display:inline-block;width:49%;box-sizing:border-box;">
		<fieldset>
		<legend style="text-align:center">공지사항</legend>
		<table border=1>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<%-- <%	ArrayList<Board> nolist=(ArrayList<Board>)request.getAttribute("nolist");
				for(Board no:nolist){%>
			<tr>
				<td><%=no.getB_no() %></td>
				<td><%=no.getTitle() %></td>
				<td><%=no.getM_no() %></td>
				<td><%=no.getEnroll_date() %></td>
				<td><%=no.getCount() %></td>
			</tr>
			<%	} %> --%>
		</table>
		</fieldset>
	</div>
	<div style="display:inline-block;width:49%;box-sizing:border-box;">
		<fieldset>
		<legend style="text-align:center">자유게시판</legend>
		<table border=1>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<%-- <%	ArrayList<Board> freelist=(ArrayList<Board>)request.getAttribute("freelist");
				for(Board s:freelist){%>
			<tr>
				<td><%=s.getB_no() %></td>
				<td><%=s.getTitle() %></td>
				<td><%=s.getM_no() %></td>
				<td><%=s.getEnroll_date() %></td>
				<td><%=s.getCount() %></td>
			</tr>
			<%	} %> --%>
		</table>
		</fieldset>
	</div>
</div>

<!-- 프로젝트, 스터디 -->
<div>
	<div style="float:left;">
		<fieldset>
		<legend style="text-align:center">프로젝트</legend>
		<table border=1>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>모집기간</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<%-- <%	ArrayList<Board> plist=(ArrayList<Board>)request.getAttribute("plist");
				for(Board p:plist){%>
			<tr>
				<td><%=p.getB_no() %></td>
				<td><%=p.getTitle() %></td>
				<td><%=p.getM_no() %></td>
				<td><%=p.getTime() %></td>
				<td><%=p.getEnroll_date() %></td>
				<td><%=p.getCount() %></td>
			</tr>
			<%	} %> --%>
		</table>
		</fieldset>
	</div>
	<div style="float:left;">
		<fieldset>
		<legend style="text-align:center">스터디</legend>
		<table border=1>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>모집기간</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<%-- <%	ArrayList<Board> slist=(ArrayList<Board>)request.getAttribute("slist");
				for(Board s:slist){%>
			<tr>
				<td><%=s.getB_no() %></td>
				<td><%=s.getTitle() %></td>
				<td><%=s.getM_no() %></td>
				<td><%=s.getTime() %></td>
				<td><%=s.getEnroll_date() %></td>
				<td><%=s.getCount() %></td>
			</tr>
			<%	} %> --%>
		</table>
		</fieldset>
	</div>
</div>
<br clear="both">
	<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
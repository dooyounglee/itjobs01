<%@page import="com.kh.resume.model.vo.Resume"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Resume re = (Resume)request.getAttribute("re");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>resumDetailView</title>

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
				<div class="col-lg-8 col-md-12 col-xs-12">
					<div class="inner-box my-resume">
					<button onclick="location.href='<%=request.getContextPath()%>/update.re?resume_no=<%=re.getResume_no()%>'">수정하기</button>
						<div class="author-resume">
							<div class="thumb">
								<img src="<%=request.getContextPath() %>/resources/fileupload_resumeImg/<%=re.getPhoto() %>" alt="">
							</div>
							<div class="author-info">
								<h3><%=re.getName() %></h3>
								<p class="sub-title">UI/UX Designer</p>
								<p>생년월일 : <%= re.getBirth_date()%></p>
								<p>이메일 : <%= re.getEmail() %><br></p>
								<p>
									<span class="address"><i class="lni-map-marker"></i><%=re.getAddress() %></span>
									<span><i class="ti-phone"></i><%=re.getPhone() %></span>
								</p>
								<!-- <div class="social-link">
									<a href="#" class="Twitter"><i class="lni-twitter-filled"></i></a>
									<a href="#" class="facebook"><i class="lni-facebook-filled"></i></a>
									<a href="#" class="google"><i class="lni-google-plus"></i></a>
									<a href="#" class="linkedin"><i class="lni-linkedin-fill"></i></a>
								</div> -->
							</div>
						</div>
						<div class="school_final item">
							<h3>최종학력</h3>
								<%	String[] schools=re.getSchool().split(",");
									String[] departments=re.getDepartment().split(",");
									String[] school_period=re.getSchool_period().split("~");
									String[] st_school_period=school_period[0].split(",");
									String[] ed_school_period=school_period[1].split(",");
									
									for(int i=0;i<schools.length;i++){%>
								<h4><%= schools[i]%></h4>
								<p><%= departments[i]%></p>
								<span class="date"><%= st_school_period[i]%>~<%= ed_school_period[i]%></span> <br>
								<%	} %>
						</div>
						<div class="about-me item">
							<h3>경력</h3>
							<%= re.getCareer()%><br>
							<%	if(re.getCareer().equals("Y")){
									String[] work_place=re.getWork_place().split(",");
									String[] work_date=re.getWork_date().split("~");
									String[] st_work_date=work_date[0].split(",");
									String[] ed_work_date=work_date[1].split(",");
									String[] work=re.getWork().split(",");
									
									for(int i=0;i<work_place.length;i++){%>
							<h4><%=work_place[i]%></h4>
							<p><%=work[i]%></p>
							<span class="date"><%=st_work_date[i]%>~<%=ed_work_date[i]%></span> <br>
							<%		}
								}%>
						</div>
						<div class="work-experence item">
							<h3>자격증</h3>
							<%	String[] certifications=re.getCertification().split(",");
								String[] cer_dates=re.getCer_date().split(",");
								
								for(int i=0;i<certifications.length;i++){%>
							<h4><%= certifications[i]%></h4>
							<span class="date"><%= cer_dates[i]%></span> <br>
							<%	} %>
						</div>
						<div class="education item">
							<h3>자소서</h3>
							<p><%= re.getCover_letter()%></p>
						</div>
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
<h2 align="center">이력서 작성</h2>

	<img src="resources/fileupload_resumeImg/<%=re.getPhoto()%>"><br>
	제목 : <%= re.getTitle()%><br>
	이름 : <%= re.getName()%><br>
	생년월일 : <%= re.getBirth_date()%><br>
	폰 : <%= re.getPhone()%><br>
	주소 : <%= re.getAddress() %><br>
	이메일 : <%= re.getEmail() %><br>
<hr>
<%-- 	<%	String[] schools=re.getSchool().split(",");
		String[] departments=re.getDepartment().split(",");
		String[] school_period=re.getSchool_period().split("~");
		String[] st_school_period=school_period[0].split(",");
		String[] ed_school_period=school_period[1].split(",");
		
		for(int i=0;i<schools.length;i++){%>
	학교 : <%= schools[i]%><br>
	학과 : <%= departments[i]%><br>
	기간 : <%= st_school_period[i]%>~<%= ed_school_period[i]%><br>
	<br>
	<%	} %> --%>
<hr>
	<%-- 경력 : <%= re.getCareer()%><br>
	<%	if(re.getCareer().equals("Y")){
			String[] work_place=re.getWork_place().split(",");
			String[] work_date=re.getWork_date().split("~");
			String[] st_work_date=work_date[0].split(",");
			String[] ed_work_date=work_date[1].split(",");
			String[] work=re.getWork().split(",");
			
			for(int i=0;i<work_place.length;i++){%>
	일한장소 : <%=work_place[i]%><br>
	한 일 : <%=work[i]%><br>
	일한날짜 : <%=st_work_date[i]%>~<%=ed_work_date[i]%><br><br>
	<%		}
		}%> --%>
<hr>
	<%-- <%	String[] certifications=re.getCertification().split(",");
		String[] cer_dates=re.getCer_date().split(",");
		
		for(int i=0;i<certifications.length;i++){%>
	자격증 : <%= certifications[i]%><br>
	자격날짜 : <%= cer_dates[i]%><br>
	<%	} %> --%>
<hr>
	<%-- 희망연봉 : <%= re.getHope_salary()%><br>
	공개 : <%= re.getOpen()%><br>
	언어 : <%= re.getP_language()%><br> --%>
	자소서 : <%= re.getCover_letter()%><br>

<button onclick="location.href='<%=request.getContextPath()%>/update.re?resume_no=<%=re.getResume_no()%>'">수정하기</button>



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
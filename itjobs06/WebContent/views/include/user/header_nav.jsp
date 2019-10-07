<%@page import="com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath=request.getContextPath();
	Member mem=(Member)session.getAttribute("mem");
	String head=request.getParameter("head");
	if(head!=null){
		session.setAttribute("head", head);
	}
	
%>
<nav class="navbar navbar-expand-lg fixed-top scrolling-navbar">
	<div class="container">
		<div class="theme-header clearfix">

			<div class="navbar-header">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#main-navbar" aria-controls="main-navbar"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
					<span class="lni-menu"></span>
					<span class="lni-menu"></span>
					<span class="lni-menu"></span>
				</button>
				<a href="<%=request.getContextPath() %>" class="navbar-brand"><img
					src="resources/images/logo1.png"
					style="width: 160px; height: 32px;" alt=""></a>
			</div>
			<div class="collapse navbar-collapse" id="main-navbar">
				<ul class="navbar-nav mr-auto w-100 justify-content-end">
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath() %>">
							Home </a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> 게시판 </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/list.bo?head=main">전체</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/list.bo?head=free">자유</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/list.bo?head=study">스터디</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/list.bo?head=project">프로젝트</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/list.bo?head=qna">공지사항</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/list.bo?head=form">서식</a></li>
							<li><a class="dropdown-item" href="pricing.html">Pricing
									Tables</a></li>
							<li><a class="dropdown-item" href="contact.html">Contact</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/notificationList.se">
							공고검색 </a></li>
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/resumeList.se">
							인재검색 </a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Candidates </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="browse-jobs.html">Browse
									Jobs</a></li>
							<li><a class="dropdown-item" href="browse-categories.html">Browse
									Categories</a></li>
							<li><a class="dropdown-item" href="add-resume.html">Add
									Resume</a></li>
							<li><a class="dropdown-item active"
								href="manage-resumes.html">Manage Resumes</a></li>
							<li><a class="dropdown-item" href="job-alerts.html">Job
									Alerts</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Employers </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="post-job.html">Add
									Job</a></li>
							<li><a class="dropdown-item" href="manage-jobs.html">Manage
									Jobs</a></li>
							<li><a class="dropdown-item" href="manage-applications.html">Manage
									Applications</a></li>
							<li><a class="dropdown-item" href="browse-resumes.html">Browse
									Resumes</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Blog </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="blog.html">Blog -
									Right Sidebar</a></li>
							<li><a class="dropdown-item" href="blog-left-sidebar.html">Blog
									- Left Sidebar</a></li>
							<li><a class="dropdown-item" href="blog-full-width.html">
									Blog full width</a></li>
							<li><a class="dropdown-item" href="single-post.html">Blog
									Single Post</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="contact.html">
							Contact </a></li>
					<li class="nav-item"><a class="nav-link" href="login.html">Sign
							In</a></li>
					<li class="button-group"><a href="<%=request.getContextPath()%>/views/admin/main.jsp"
						class="button btn btn-common">관리자</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu" data-logo="assets/img/logo-mobile.png"></div>
</nav>
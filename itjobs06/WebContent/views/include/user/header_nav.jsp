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
					src="resources/images/logo12.png"
					style="width: 80px; height: 32px;" alt=""></a>
			</div>
			<div class="collapse navbar-collapse" id="main-navbar">
				<ul class="navbar-nav mr-auto w-100 justify-content-end">
					<%	if(mem!=null){ %>
					<li class="nav-item"><a class="nav-link"> ${mem.nickname }님 안녕하세요.</a></li>
					<%	} %>
					<li class="aaa nav-item">
						<div></div>
						<a class="nav-link" href="<%=request.getContextPath() %>">
							Home </a></li>
					<li class="nav-item aaa dropdown">
						<div></div><a
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
					<li class="nav-item aaa"><div></div>
						<a class="nav-link" href="<%=request.getContextPath()%>/notificationList.se">
							공고검색 </a></li>
					<li class="nav-item aaa"><div></div>
						<a class="nav-link" href="<%=request.getContextPath()%>/resumeList.se">
							인재검색 </a></li>
					<%	if(mem!=null && mem.getType().equals("1")){ %>
					<li class="nav-item dropdown aaa"><div></div>
					<a
						class="nav-link dropdown-toggle" href="<%=request.getContextPath()%>/list.re" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> 마이페이지 </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/myInfo.me">내 정보수정
									</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/myApplyList.vo">지원리스트
									</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/myCompanyList.like">관심기업
									</a></li>
							<li><a class="dropdown-item active"
								href="<%=request.getContextPath()%>/list.re">이력서관리</a></li>
							<li><a class="dropdown-item" href="mylist.qu">나의문의
									</a></li>
							<li><a class="dropdown-item" href="job-alerts.html">지원하기
									</a></li>
						</ul></li>
					<%	}else if(mem!=null && mem.getType().equals("2")){ %>
					<li class="nav-item dropdown aaa"><div></div>
					<a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> 마이페이지 </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/myInfo.me">내 정보수정
									</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/myNotification.me">공고리스트
									</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/myResumeList.like">관심인재
									</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/mylist.qu">나의문의
									</a></li>
						</ul>
					</li>
					<%	}else{ %>
					<li class="nav-item aaa"><div></div>
					<a class="nav-link" href="<%=request.getContextPath()%>/login.me">마이페이지</a></li>
					<%	} %>
					<%	if(mem!=null){ %>
					<li class="nav-item aaa"><div></div>
					<a class="nav-link" href="<%=request.getContextPath()%>/logout.me">로그아웃</a></li>
					<%	}else{ %>
					<li class="nav-item aaa"><div></div>
					<a class="nav-link" href="<%=request.getContextPath()%>/login.me">로그인</a></li>
					<%	} %>
					<li class="button-group"><a href="<%=request.getContextPath()%>/main.ad"
						class="button btn btn-common">관리자</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu" data-logo="assets/img/logo-mobile.png"></div>
</nav>


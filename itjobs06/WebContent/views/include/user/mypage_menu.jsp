<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-lg-4 col-md-12 col-xs-12">
	<div class="right-sideabr">
		<h4>Manage Account</h4>
		<ul class="list-item">
			<%	if(mem!=null && mem.getType().equals("1")){ %>
			<li><a href="<%=request.getContextPath()%>/list.re">이력서 관리</a></li>
			<li><a href="<%=request.getContextPath()%>/myApplyList.vo">내가 지원한 기업</a></li>
			<li><a href="<%=request.getContextPath()%>/myCompanyList.like">관심기업</a></li>
			<li><a href="<%=request.getContextPath()%>/myNotificationList.like">관심공고</a></li>
			<%	}else if(mem!=null){ %>
			<li><a href="<%=request.getContextPath()%>/myNotification.me">공고 관리</a></li>
			<li><a href="<%=request.getContextPath()%>/myResumeList.like">관심인재</a></li>
			<%	} %>
			<li><a href="<%=request.getContextPath()%>/changePw.me">정보 변경</a></li>
			<li><a href="<%=request.getContextPath()%>/mylist.qu">나의 문의</a></li>
			<li><a href="index.html">탈퇴</a></li>
		</ul>
	</div>
</div>
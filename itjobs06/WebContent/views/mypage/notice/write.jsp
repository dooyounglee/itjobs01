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
				<div class="col-md-8 col-sm-8 col-xs-12">
					<div class="job-alerts-item">
						<h3 class="alerts-title">공고 작성</h3>
						<form class="form" action="write.no" method="post" autocomplete=off>
							<div class="form-group is-empty">
								<label class="control-label">공고 제목</label> <input
									class="form-control" type="text" name="title"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<div class="row">
									<div class="col-md-6">
										<label class="control-label">마감일</label>
										<input class="form-control" type="date" name="end_date">
										<span class="material-input"></span>
									</div>
									<div class="col-md-6">
										<label class="control-label">마감시간</label>
										<input class="form-control" type="time" name="end_time">
										<span class="material-input"></span>
									</div>
								</div>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">언어</label>
								<input type=checkbox name="language" value="java" >java
								<input type=checkbox name="language" value="javascript" >javascript
								<input type=checkbox name="language" value="C" >C
								<input type=checkbox name="language" value="C++" >C++
								<input type=checkbox name="language" value="C#" >C#
								<input type=checkbox name="language" value="VBA" >VBA
								<input type=checkbox name="language" value="python" >python
								<input type=checkbox name="language" value="php" >php
								<input type=checkbox name="language" value="asp" >asp
								<span class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">직군</label>
								<input class="form-control" type="text" name="jobs">
								<span class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">연봉</label> <input
									class="form-control" type="text" name="salary"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">내용</label> <input
									class="form-control" type="text" name="contents"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">우대사항</label> <input
									class="form-control" type="text" name="hope"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<input type="radio" name="open" value="Y" checked>공개
								<input type="radio" name="open" value="N" >비공개
							</div>
							<button id="submit" class="btn btn-common">Save Change</button>
						</form>
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
<h1>공고 등록</h1>
<form action="write.no" method="post" autocomplete=off>
제목:<input name="title"><br>
마감일:<input type=date name="end_date"><input type=time name="end_time"><br>
모집인원:<input><br>
직군:<input name="jobs"><br>
언어:
<input type=checkbox name="language" value="java">java
<input type=checkbox name="language" value="javascript">javascript
<input type=checkbox name="language" value="C">C
<input type=checkbox name="language" value="C++">C++
<input type=checkbox name="language" value="C#">C#
<input type=checkbox name="language" value="VBA">VBA
<input type=checkbox name="language" value="python">python
<input type=checkbox name="language" value="php">php
<input type=checkbox name="language" value="asp">asp
<br>
연봉:<input name="salary"><br>
내용:<textarea name="contents"></textarea><br>
우대사항:<input name="hope"><br>
<button>임시등록</button>
</form>
<button>공개</button>
<button onclick="history.back()">뒤로</button>


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
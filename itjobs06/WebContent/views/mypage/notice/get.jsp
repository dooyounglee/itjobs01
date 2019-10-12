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

	<!-- page-header -->
	<%@ include file="/views/include/user/page_header.jsp" %>
	<script>
		var page_header_title='공고 정보'
	</script>
	<!-- end of page-header -->


	<%	Notification noti=(Notification)request.getAttribute("noti");%>
	<section class="job-detail section">
		<div class="container">
			<div class="row justify-content-between">
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
				<div class="col-lg-8 col-md-12 col-xs-12">
					<div class="content-area">
						<h4><%=noti.getTitle() %></h4>
						<%=noti.getOpen().equals("Y")?"공개":"비공개" %> - <span><i class="lni-calendar"></i><%=noti.getEnroll_date() %></span>
						<hr>
						
						<h4>기업이름</h4>
						<ul>
						<%=noti.getNickname() %>
						</ul>
						<hr>
						
						<h4>마감일</h4>
						<ul>
						<%=noti.getEnd_date() %>
						</ul>
						
						<hr>
						<h4>연봉</h4>
						<ul>
						<%=noti.getSalary() %>
						</ul>
						
						<hr>
						<h4>필요언어</h4>
						<ul>
						<%	String[] arr_lan=noti.getP_language().split(",");
							for(int i=0;i<arr_lan.length;i++){%>
							<li>- <%=arr_lan[i] %></li>
						<%	} %>
						</ul>
						
						<hr>
						<h4>우대사항</h4>
						<p><%=noti.getHope() %></p>
						
						<hr>
						<h4>직군</h4>
						<p><%=noti.getJobs() %></p>
						
						<hr>
						<h4>세부내용</h4>
						<p><%=noti.getContents() %></p>
						<hr>
						
						<%	if(mem!=null && mem.getM_no()==noti.getCo_no()){ %>
						<a href="#" onclick="edit(<%=noti.getNoti_no() %>)" class="btn btn-common">수정</a>
						<a href="#" onclick="del(<%=noti.getNoti_no() %>)" class="btn btn-common">삭제</a>
<%-- 						<%	if(noti.getOpen().equals("N")){ %>
						<a href="#" onclick="open_(<%=noti.getNoti_no() %>)" class="btn btn-common">공개</a>
						<%	} else if(noti.getOpen().equals("Y")){ %>
						<a href="#" onclick="openCancle(<%=noti.getNoti_no() %>)" class="btn btn-common">비공개</a>
						<%	} %> --%>
						<a href="#" onclick="location.href='<%=request.getContextPath() %>/myNotification.me'" class="btn btn-common">나의 공고목록</a>
						<a href="#" onclick="showApplier(<%=noti.getNoti_no() %>)" class="btn btn-common">지원자 확인</a>
						<%	}else if(mem!=null && mem.getType().equals("1")){
								ArrayList<Resume> rlist=(ArrayList<Resume>)request.getAttribute("rlist"); %>
							<form action="apply.vo" method="post">
								<input type=hidden name="noti_no" value="<%=noti.getNoti_no() %>">
								<select name="resume_no" id="resume_no" onchange="test(this)">
									<% for(Resume r:rlist){%>
									<option value="<%=r.getResume_no()%>"><%=r.getTitle() %></option>
									<%	} %>
								</select>
								<a href="#" onclick="apply(<%=noti.getNoti_no() %>)" class="btn btn-common">지원하기</a>
								<div id="info"></div>
								<div id="info1"></div>
							</form>
						<%	} %>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script>
		var noti_no=<%=noti.getNoti_no()%>;
		var noti_lan="<%=noti.getP_language()%>";
		
		function score(resume_lan,noti_lan){
			var arr_re=resume_lan.split(",");
			var arr_noti=noti_lan.split(",");

			var score=0;
			for(i=0;i<arr_re.length;i++){
				for(j=0;j<arr_noti.length;j++){
					if(arr_re[i]==arr_noti[j]){
						score++;
						break;
					}
				}
			}
			return score;			
		}
		
		function test(val){
			var resume_no=val.value;

			//내점수
			$.ajax({
				url:'get.re.ajax',
				type:'post',
				data:{
					resume_no:resume_no,
				},
				dataType:'json',
				success:function(result){
					//내점수
					//result=resume객체
					console.log("내점수성공")
					$('#info').html("내 점수는"+score(result.p_language,noti_lan))
				},
			})

			//총지원자 평균
			
			$.ajax({
				url:'getAvg.re.ajax',
				type:'post',
				data:{
					noti_no:noti_no,
				},
				dataType:'json',
				success:function(result){
					console.log("avg성공")
					console.log(result)
					var count=result[0].sum
					var sum=0;
					for(k=0;k<result.length;k++){
						sum+=score(result[k].p_language,noti_lan)
					}
					$('#info1').html("/지원자평균 "+(sum/count))
				},
			})
		}
	</script>

	<section id="featured" class="section bg-gray pb-45">
		<div class="container">
			<h4 class="small-title text-left">Similar Jobs</h4>
			<div class="row">
			<%	ArrayList<Notification> list=(ArrayList<Notification>)request.getAttribute("random");
				for(Notification n:list){%>
				<div class="col-lg-6 col-md-12 col-xs-12">
					<a class="job-listings-featured">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-xs-12" style="cursor:pointer;">
								<div class="job-company-logo">
									<img src="assets/img/features/img1.png" alt="">
								</div>
								<div class="job-details">
									<h3 onclick="location.href='<%=request.getContextPath()%>/get.no?noti_no=<%=n.getNoti_no()%>'"><%=n.getTitle() %></h3>
									<span class="company-neme" onclick="detailCo(<%=n.getCo_no()%>)"><%=n.getNickname()%></span>
									<div class="tags">
										<span><i class="lni-map-marker"></i> 위치</span> <span><i
											class="lni-user"></i><%=n.getSalary() %> 만원</span>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12 text-right">
								<div class="tag-type">
									<input type="hidden" value="<%=n.getNoti_no()%>" class="no_no">
<%-- 									<%
										boolean flag = false;  // 좋아요 이미지가 겹치지 않게 하기 위해서
										if(mem != null){
									
										for(int i=0; i<likeBoList.size(); i++){ // 서블릿에서 좋아요한 맴버의 게시글번호를 받아
											
											if(Integer.parseInt(likeBoList.get(i)) == n.getNoti_no()){  // 그 게시글번호와 현재 for문으로 작동하는 게시글번호와 일치하면
												flag = true;	// 	좋아요한 이미지 보이게									
												}
											}
										}
									%>
									
									<%if(!flag){  %>
										<span class="heart-icon"> <img src="./resources/img/like-before.png" class="likeimg"> </span>
									<%}else{ %>
										<span class="heart-icon"> <img src="./resources/img/like-after1.png" class="likeimg"> </span>
									<%} %> --%>
									
									<span class="full-time">~<%=n.getEnd_date().split(" ")[0] %></span>
								</div>
							</div>
						</div>
					</a>
				</div>
				<%	} %>
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
		location.href="apply.vo?noti_no="+noti_no+"&resume_no="+$('#resume_no').val()
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
<%@page import="com.kh.member.model.vo.Co_Info, com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>

	.like{
	width:20px;
	height:20px;
	}

	.likeimg{
	width:20px;
	height:20px;
	box-sizing:border-box;
	text-align:center;
	}
	
	.likeimg:hover{
	cursor:pointer;
	}

</style>

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
		var page_header_title='기업정보'
	</script>
	<!-- end of page-header -->

	<!-- CoInfo -->
	<%	Member co = (Member) request.getAttribute("co");
		Co_Info co_info=(Co_Info)request.getAttribute("co_Info");%>
	<section class="category section bg-gray">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title"><%=co.getNickname() %></h2>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 col-xs-12 f-category  border-bottom-0">
					<div class="icon bg-color-1">
						<i class="lni-home"></i>
					</div>
					<h3>사원수</h3>
					<p><%=co_info.getMemsum() %></p>
				</div>
				<div class="col-lg-3 col-md-6 col-xs-12 f-category  border-bottom-0">
					<div class="icon bg-color-2">
						<i class="lni-world"></i>
					</div>
					<h3>매출액</h3>
					<p><%=co_info.getRevenue() %></p>
				</div>
				<div class="col-lg-3 col-md-6 col-xs-12 f-category  border-bottom-0">
					<div class="icon bg-color-3">
						<i class="lni-book"></i>
					</div>
					<h3>설립일</h3>
					<p><%=co_info.getBirth_date() %></p>
				</div>
				<div class="col-lg-3 col-md-6 col-xs-12 f-category border-right-0  border-bottom-0">
					<div class="icon bg-color-4">
						<i class="lni-display"></i>
					</div>
					<h3>대표번호</h3>
					<p><%=co_info.getCo_phone() %></p>
				</div>
			</div>
		</div>
	</section>
	<!-- End of CoInfo -->


	<!-- Job Detail Section Start -->
	<section class="job-detail section">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-8 col-md-12 col-xs-12">
					<div class="content-area">
						<h4>설명</h4>
						<p><%= co_info.getDescript()%></p>
						<h4>연혁</h4>
						<ul>
							<li>- Objective-C</li>
							<li>- iOS SDK</li>
							<li>- XCode</li>
							<li>- Cocoa</li>
							<li>- ClojureScript</li>
						</ul>
						<h4>복지</h4>
						<p><%=co_info.getWelfare() %></p>
						<a href="#" class="btn btn-common">Apply job</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-12 col-xs-12">
					<div class="sideber">
						<div class="widghet">
							<h3>위치</h3>
							<div class="maps">
								<div id="map" class="map-full"></div>
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
	<!-- Job Detail Section End -->



<%	co = (Member) request.getAttribute("co");%>

<%@ include file="/views/include/header.jsp" %>

<input type="hidden" value="<%=mem.getM_no()%>" id="memNo">


${co }<br>
${co_Info }<br>

<!-- 좋아요 -->
<input type="hidden" value="<%=co.getM_no()%>" class="co_no">
<span class="like">
		<img src="./resources/img/like-before.png" class="likeimg">
</span>

<button>지원하기(일반회원)</button>
<button>수정(해당기업)</button>
<button>삭제(해당기업)</button>
<button>신고하기</button>
<!-- 지도api -->
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3f8e5a5f11c657a1034900d7a303bc56&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

<%System.out.println("-----2-----"); %>
// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
	<%	String address=((Co_Info)request.getAttribute("co_Info")).getAddress();
		String[] addresss=address.split("\\+");%>
geocoder.addressSearch('<%=addresss[1]+" "+addresss[2]%>', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 h이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
<!-- end of 지도api -->



<script>

// 좋아요 ajax
	$(function(){
	
		var memNo = $("#memNo").val();
		
		
		$(".likeimg").click(function(){
			
			var coNo =	$(this).parent().prev().val()
			
			var likeimg = $(this).parent().children() 
			
		
			
	 			 $.ajax({
					url:"like.co",
					data:{coNo:coNo, memNo:memNo},
					type:"get",
					success:function(result){
					
						
						if(result==0){
						likeimg.attr('src','./resources/img/like-after.png');							
						}else{
						likeimg.attr('src','./resources/img/like-before.png');		
						}
				
					
					
					},error:function(){
						
						console.log("ajax실패");
					}
			
				}); 
		})
	})
		


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
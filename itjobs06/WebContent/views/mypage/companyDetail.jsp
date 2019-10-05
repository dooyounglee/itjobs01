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


</head>
<body>

<%Member co =  (Member)request.getAttribute("co"); %>

<%@ include file="/views/include/header.jsp" %>

<input type="hidden" value="<%=mem.getM_no() %>" id="memNo">


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

<%-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3f8e5a5f11c657a1034900d7a303bc56&libraries=services"></script>
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
</script> --%>
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

</body>
</html>
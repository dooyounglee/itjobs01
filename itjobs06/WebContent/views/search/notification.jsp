<%@page import="com.kh.notification.model.vo.Notification"%>
<%@page import="java.util.ArrayList"%>
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
	<%@ include file="/views/include/header.jsp" %>
<h1>공고 검색창</h1>
<select id="sKey">
	<option value="address">지역</option>
	<option value="p_language">언어</option>
	<option value="certificate">자격증</option>
	<option value="department">학과</option>
	<option value="title">제목</option>
	<option value="hope_salary">희망연봉</option>
</select>
<input id="sText" autocomplete=off><button onclick="search()">검색</button><br>
<input id="sTextA" name="sText" autocomplete=off><button onclick="searchA()">검색</button>
<button>상세검색</button>
<hr>

	<input type="hidden" value="<%=mem.getM_no() %>" id="memNo">

<div id="resultArea">
	<div id="result">
<%	ArrayList<Notification> list=(ArrayList<Notification>)request.getAttribute("list");
	for(Notification n:list){%>
	<%=n %>
	

	<!-- 좋아요 버튼 -->
	
	<input type="hidden" value="<%=n.getNoti_no()%>" class="no_no">
	<span class="like">
		<img src="./resources/img/like-before.png" class="likeimg">
	</span>
	
	<button onclick="location.href='<%=request.getContextPath()%>/detail.co?co_no=<%=n.getCo_no()%>'">기업정보</button>
	<br>	
<%	} %>
<script>
	
</script>

	</div>
</div>

<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->

<script>
	function search(){
		return false;
		var sKey=$('#sKey').val();
		var sText=$('#sText').val();
		$('#resultArea').load('<%=request.getContextPath()%>/notificationList.se #result',{'sKey':sKey,'sText':sText})
	}
	
	function searchA(){
		var sTextA=$('#sTextA').val();
		$('#resultArea').load('<%=request.getContextPath()%>/notificationList.se #result',{"sText":sTextA})
	}

	// 좋아요 ajax
	$(function(){
	
		var memNo = $("#memNo").val();
		
		
		$(".likeimg").click(function(){
			
			var noNo =	$(this).parent().prev().val()
			
			var likeimg = $(this).parent().children() 
			
	 			 $.ajax({
					url:"like.no",
					data:{noNo:noNo, memNo:memNo},
					type:"get",
					success:function(result){
						
						/* console.log("ajax성공");
						console.log(result); */
						
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
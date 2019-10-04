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
<div id="resultArea">
	<div id="result">
<%	ArrayList<Notification> list=(ArrayList<Notification>)request.getAttribute("list");
	for(Notification n:list){%>
	<%=n %>
	<!-- 좋아요 버튼 -->
	<span class="like">
		<img src="./resources/img/like-before.png" class="likeimg" onclick="likeimg();">
	</span>
	
	<button onclick="location.href='<%=request.getContextPath()%>/detail.co?co_no=<%=n.getCo_no()%>'">기업정보</button>
	<br>	
<%	} %>
	
	

	</div>
</div>

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
	
	// like ajax
	function likeimg(){
			
		$.ajax({
			url:"like"
		})
		
		
		}
		
		
		
		
		
	
</script>
</body>
</html>
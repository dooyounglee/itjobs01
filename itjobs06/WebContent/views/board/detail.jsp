<%@page import="com.kh.board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Board b = (Board)request.getAttribute("b");
	Board prev = (Board)request.getAttribute("prev");
	Board next = (Board)request.getAttribute("next");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	
<!-- import jobx -->
<%@ include file="/views/include/user/style.jsp" %>
<!-- End of import from jobx -->

<!-- import of jobx -->
<%@ include file="/views/include/user/js.jsp" %>
<!-- End of import of jobx -->
</head>
<body>

	<header id="home" class="hero-area">
	<%@ include file="/views/include/user/header_nav.jsp" %>
	</header>

	<!-- page-header -->
	<%@ include file="/views/include/user/page_header.jsp" %>
	<script>
		var page_header_title='게시판'
	</script>
	<!-- end of page-header -->
	

	
	
	<div id="content">
	<div class="container">
	<div class="row">
	<div class="col-lg-4 col-md-12 col-xs-12">
	<div class="right-sideabr">
	<h4>게시판</h4>
	<ul class="list-item">
	<li><a href="<%=contextPath%>/list.bo?head=main">전체보기</a></li>
	<li><a href="<%=contextPath%>/list.bo?head=free">자유</a></li>
	<li><a href="<%=contextPath%>/list.bo?head=study">스터디</a></li>
	<li><a href="<%=contextPath%>/list.bo?head=project">프로젝트</a></li>
	<li><a href="<%=contextPath%>/list.bo?head=qu">공지사항</a></li>
	<li><a href="<%=contextPath%>/listForm.bo?head=form">서식</a></li>
	</ul>
	</div>
	</div>
	

	
	<div class="col-lg-8 col-md-12 col-xs-12">

	<!--  <section class="job-detail section"> -->
      <div class="job-alerts-item">
        <div class="row justify-content-between">
          <div class="col-lg-8 col-md-12 col-xs-12">
            <div class="content-area">  
              <p style="font-size:20px;"> &nbsp;<%=b.getHead() %></p>
              <h4>상세보기</h4>
              <p></p>
              <p></p>
              <h5>What You Need for this Position</h5>
              <ul>
                <li>- Objective-C</li>
                <li>- iOS SDK</li>
                <li>- XCode</li>
                <li>- Cocoa</li>
                <li>- ClojureScript</li>
              </ul>
              <h5>How To Apply</h5>
              <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>
              <a href="#" class="btn btn-common">Apply job</a> 
            </div>
          </div>
      
        </div>
      </div>
   <!--  </section> -->


	</div>
	</div>
	</div>
	</div>
	
	
	
	

	
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
	
	
	
	<script>
	$('.inner-header').children('h3').text(page_header_title)
	</script>
	
	
	
	


	<script>
		function deleteBtn(){

			if(confirm("정말 삭제하시겠습니까?") == true){
				
				location.href="<%=contextPath%>/delete.bo?bId=<%=b.getB_no()%>&head=<%=b.getHead()%>";
			}else{
				return;
			}
		}
		

		 $(function(){
				// 화면 로딩 시 댓글 출력
				selectRlist();
				
				setInterval(function(){
					selectRlist();
				}, 4000);
				
				$("#addReply").click(function(){
					
					<%if(mem != null) { %>
					var content = $("#replyContent").val();
					var bId = <%= b.getB_no()%>;
					var m_no = <%= mem.getM_no()%>;
					
					$.ajax({
						url:"brinsert.bo",
						type:"post",
						data:{content:content, bId:bId, m_no:m_no},
						success:function(status){
							if(status == "success"){
								selectRlist();
								$("#replyContent").val("");
							}else{
								alert("댓글 작성 실패");
							}
						},error:function(){
							console.log("서버 통신 실패");
						}
	
					});
					
				<% }else{%>
				alert("로그인해야 댓글작성이 가능합니다.");
				<%}%>
				});
		 });
		 
		function selectRlist(){
			$.ajax({
				url:"brlist.bo",
				data:{bId:<%=b.getB_no() %>},
				dataType:"json",
				success:function(list){
					console.log(list);
					
					var replySelect = $("#replySelect");
					
					replySelect.html("");
					
					$.each(list,function(index, value){
						var div = $("<div>");
						var writer = $("<div>").text(value.nickname).css("width","100px");
						var content = $("<div>").text(value.contents).css("width","400px");
						var date = $("<div>").text(value.update_date).css("width","200px");
						
						div.append(writer);
						div.append(content);
						div.append(date);
						
						replySelect.append(div);
					});
					
					
					
				},error:function(){
					console.log("서버와의 통신실패!!");
				}
			});
		}
		
	</script>

</body>
</html>
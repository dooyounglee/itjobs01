<%@page import="com.kh.resume.model.vo.Resume"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<String> likeResList = (ArrayList<String>)request.getAttribute("likeRes");

%>

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
	
	 .heart-icon {
    color: #fff;
    line-height: 24px;
    padding: 3px 10px;
    font-size: 14px;
    border-radius: 4px;
    text-align: center;
    display: inline-block;
    margin: 0px 10px;
    background: #00BCD4;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    -o-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
    transition-property: all;
    transition-duration: 0.3s;
    transition-timing-function: ease-in-out;
    transition-delay: 0s;
}

</style>

<!-- import jobx -->
<%@ include file="/views/include/user/style.jsp" %>
<%@ include file="/views/include/user/js.jsp" %>
<!-- End of import from jobx -->

</head>
<body>

	<header id="home" class="hero-area">
	<%@ include file="/views/include/user/header_nav.jsp" %>

	<%	if(mem!=null){ %>
	<input type="hidden" value="<%=mem.getM_no() %>" id="memNo">
	<%	} %>

	</header>

	<!-- page-header -->
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="inner-header">
						<h3>Find Job</h3>
					</div>
					<div class="job-search-form">
						<form>
							<div class="row">
								<div class="col-lg-5 col-md-5 col-xs-12">
									<div class="form-group">
										<input class="form-control" type="text"
											placeholder="Job Title or Company Name">
									</div>
								</div>
								<div class="col-lg-3 col-md-5 col-xs-12">
									<div class="form-group">
										<div class="search-category-container">
											<label class="styled-select"> <select>
													<option value="none">Locations</option>
													<option value="none">New York</option>
													<option value="none">California</option>
													<option value="none">Washington</option>
													<option value="none">Birmingham</option>
													<option value="none">Chicago</option>
													<option value="none">Phoenix</option>
											</select>
											</label>
										</div>
										<i class="lni-map-marker"></i>
									</div>
								</div>
								<div class="col-lg-3 col-md-5 col-xs-12">
									<div class="form-group">
										<div class="search-category-container">
											<label class="styled-select"> <select>
													<option>All Categories</option>
													<option>Finance</option>
													<option>IT & Engineering</option>
													<option>Education/Training</option>
													<option>Art/Design</option>
													<option>Sale/Markting</option>
													<option>Healthcare</option>
													<option>Science</option>
													<option>Food Services</option>
											</select>
											</label>
										</div>
										<i class="lni-layers"></i>
									</div>
								</div>
								<div class="col-lg-1 col-md-2 col-xs-12">
									<button type="submit" class="button">
										<i class="lni-search"></i>
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		var page_header_title='공개 이력서 검색'
	</script>
	<!-- end of page-header -->
	
	<!-- list section -->
	<div id="content">
		<div class="container">
			<div class="row">
			<%	ArrayList<Resume> list=(ArrayList<Resume>)request.getAttribute("list");
				for(Resume n:list){%>
				<div class="col-lg-6 col-md-6 col-xs-12">
					<div class="manager-resumes-item">
						<div class="manager-content">
							<a href="detail.re?resume_no=<%=n.getResume_no()%>"><img class="resume-thumb"
								src="resources/jobx/assets/img/jobs/avatar-1.png" alt=""></a>
							<div class="manager-info">
								<div class="manager-name">
									<h4>
										<a href="#">
											<%	if(mem!=null && mem.getType().equals("2")){ %>
												<%=n.getName() %>
											<%	}else{ %>
												<%=n.getName().substring(0,1)+"**" %>
											<%	} %>
										</a>
									</h4>
									<h5>
										<%	if(mem!=null && mem.getType().equals("2")){ %>
												학과: <%=n.getDepartment() %>
										<%	}else{ %>
											학과: ******
										<%	} %>
									</h5>
								</div>
								<div class="manager-meta">

									<span class="location"><i class="ti-location-pin"></i>
										<%-- <%	String[] arr_address=n.getAddress().split("\\+");
											String[] arr_address_middle=arr_address[1].split(" ");
											if(mem!=null && mem.getType().equals("2")){ %>
												<%=arr_address_middle[0]+" "+arr_address_middle[1] %>
										<%	}else{ %>
												<%=arr_address_middle[0] %>
										<%	} %> --%>
										지역: <%=n.getAddress().substring(0,7)+"..." %>
									</span> <span class="rate"><i
										class="ti-time"></i>
											<%	if(mem!=null && mem.getType().equals("2")){ %>
												희망연봉: <%=n.getHope_salary() %>
										<%	}else{ %>
											희망연봉: ******
										<%	} %>
										</span>
								</div>
							</div>
						</div>
						<div class="item-body">
							<div class="content">
								<p><%=n.getTitle() %></p>
							</div>
							<div class="resume-skills">
								<div class="tag-list float-left">
									<%	String[] arr=n.getP_language().split(",");
										for(int i=0;i<arr.length;i++){%>
									<span><%=arr[i] %></span>
									<%	} %>
								</div>
								<div class="resume-exp float-right">
									<!-- 좋아요 버튼 -->
									<%
										boolean flag = false;  // 좋아요 이미지가 겹치지 않게 하기 위해서
										if(mem != null){
									
										for(int i=0; i<likeResList.size(); i++){ // 서블릿에서 좋아요한 맴버의 게시글번호를 받아
											
											if(Integer.parseInt(likeResList.get(i)) == n.getResume_no()){  // 그 게시글번호와 현재 for문으로 작동하는 게시글번호와 일치하면
												flag = true;	// 	좋아요한 이미지 보이게									
												}
											}
										}
									%>
									<input type="hidden" value="<%=n.getResume_no()%>" class="res_no">
									<%if(!flag){  %>
									<span class="heart-icon"> <img src="./resources/img/like-before.png" class="likeimg" > </span>
									<%}else{ %>
									<span class="heart-icon"> <img src="./resources/img/like-after1.png" class="likeimg"> </span>
									<%} %>
									<%	if(n.getCareer().equals("N")){ %>
									<a class="btn btn-common btn-xs" style="padding: 6px 16px; font-size: 12px;">신입</a>
									<%	}else{ %>
									<a class="btn btn-common btn-xs" style="padding: 6px 16px; font-size: 12px;">경력 <%=n.getCareer_year() %>년</a>
									<%	} %>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%	} %>
				<div class="col-12 text-center mt-4">
					<a href="job-page.html" class="btn btn-common">Browse All Jobs</a>
				</div>
			</div>
		</div>
	</div>
	<!-- End of list section -->
	
	
	
<h1>인재 검색창</h1>
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

	<%	if(mem!=null){ %>
	<input type="hidden" value="<%=mem.getM_no() %>" id="memNo">
	<%	} %>
	
	<div id="result">
<%	list=(ArrayList<Resume>)request.getAttribute("list");
	for(Resume r:list){%>
	<%=r %>
	
	<input type="hidden" value="<%=r.getResume_no()%>" class="res_no">
<span class="like">
		<img src="./resources/img/like-before.png" class="likeimg">
</span>
	
	<br>
<%	} %>
	</div>
</div>
<script>
	function search(){
		var sKey=$('#sKey').val();
		var sText=$('#sText').val();
		$('#resultArea').load('<%=request.getContextPath()%>/resumeList.se #result',{'sKey':sKey,'sText':sText})
	}
	function searchA(){
		var sTextA=$('#sTextA').val();
		$('#resultArea').load('<%=request.getContextPath()%>/resumeList.se #result',{"sText":sTextA})
	}

	// 좋아요 ajax
		$(function(){
		
			var memNo = $("#memNo").val();
			
			
			$(".likeimg").click(function(){
				
				var resNo =	$(this).parent().prev().val()
				
				var likeimg = $(this).parent().children() 
				
			
				
		 			 $.ajax({
						url:"like.res",
						data:{resNo:resNo, memNo:memNo},
						type:"get",
						success:function(result){
						
							
							if(result==0){
							likeimg.attr('src','./resources/img/like-after1.png');							
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
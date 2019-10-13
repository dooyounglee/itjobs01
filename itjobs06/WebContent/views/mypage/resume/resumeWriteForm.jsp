<%@page import="com.kh.resume.model.vo.Resume"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>이력서 작성하기</title>
<script type="text/javascript" src='<%=request.getContextPath()%>/resources/naver-smarteditor2-ca95d21/demo/js/service/HuskyEZCreator.js' charset="utf-8"></script>

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
				<div class="col-lg-8 col-md-12 col-xs-12">
					<div class="add-resume box">
						<div class="post-header">
							<p>
								Already have an account? <a href="register.html">Click here
									to login</a>
							</p>
						</div>
						<form class="form-ad" action="<%=contextPath%>/addResum.re" method="post" enctype="multipart/form-data">
							<h3>기본정보</h3>
							<div class="form-group">
								<label class="control-label">이름</label>
								<input type="text" class="form-control" name="name" placeholder="이름" value="1">
							</div>
							<div class="form-group">
								<label class="control-label"></label> <label
									class="control-label">Email</label> <input type="text"
									class="form-control" name="email" placeholder="Your@domain.com"  value="<%=mem.getEmail()%>">
							</div>
							<div class="form-group">
								<label class="control-label">생년월일</label> <input
									type="date" class="form-control" name="birth"
									placeholder="Headline (e.g. Front-end developer)"  value="2019-02-01">
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-3">
									<label class="control-label">Phone</label> <input type="text"
										class="form-control" name="phone1" placeholder="010"  value="1">
									</div>
									<div class="col-md-3">
									<label class="control-label" style="color:white;">phone</label> <input type="text"
										class="form-control" name="phone2" placeholder="0000"  value="1">
									</div>
									<div class="col-md-3">
									<label class="control-label" style="color:white;">phone</label> <input type="text"
										class="form-control" name="phone3" placeholder="0000"  value="1">
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-3">
										<label class="control-label" >우편번호</label>
										<input type="text" class="form-control" id="sample3_postcode" name="sample3_postcode" placeholder="우편번호">
									</div>
									<div class="col-md-3">
									<label class="control-label">우편번호버튼</label>
									<input type="button"
										class="btn btn-common" value="우편번호 찾기" onclick="sample3_execDaumPostcode()">
									</div>
									<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
										<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
									</div>
									<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
									<script src="resources/util/address_api.js"></script>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
									<label class="control-label">주소</label> <input type="text"
										class="form-control" id="sample3_address" name="sample3_address" placeholder="주소">
									</div>
									<div class="col-md-6">
									<label class="control-label">상세주소</label> <input type="text"
										class="form-control" id="sample3_detailAddress" name="sample3_detailAddress" placeholder="상세주소">
									<input type="hidden" id="sample3_extraAddress" placeholder="참고항목">
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="button-group">
									<div class="action-buttons">
										<div class="upload-button">
											<button class="btn btn-common">증명사진</button>
											<input id="cover_img_file_2" name="file"  type="file" onchange="loadImg(this)">
											<img id="titleImg"></img>
										</div>
									</div>
								</div>
							</div>
<script>
	function loadImg(value){
		if(value.files && value.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				 $("#titleImg").attr("src", e.target.result); // data:URL
			}
			reader.readAsDataURL(value.files[0]);
		}
	}
</script>
							<h3>최종학력</h3>
							<div class="form-group">
								<label class="control-label">학교</label> <input type="text"
									class="form-control" name="school" placeholder="Degree, e.g. Bachelor"  value="1">
							</div>
							<div class="form-group">
								<label class="control-label">학과</label> <input
									type="text" class="form-control" name="Department"
									placeholder="Major, e.g Computer Science"  value="1">
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
										<label class="control-label">From</label> <input type="date"
											class="form-control" name="school_Date1" placeholder="e.g 2014"  value="2019-01-01">
									</div>
									<div class="col-md-6">
										<label class="control-label">To</label> <input type="date"
											class="form-control" name="school_Date2" placeholder="e.g 2020" value="2019-01-01">
									</div>
								</div>
							</div>

							<div class="divider">
								<h3>경력</h3>
							</div>
							<div class="form-group">
								<input type="radio" id="career_off" name="career" value="N" checked>신입
								<input type="radio" id="career_on" name="career" value="Y" >경력
							</div>
							<div id="careerList">
								<div class="form-group">
									<label class="control-label">회사이름</label> <input
										type="text" class="form-control" name="companyName" placeholder="Company name" value="1">
								</div>
								<div class="form-group">
									<label class="control-label">한일</label> <input type="text"
										class="form-control" name="workList" placeholder="e.g UI/UX Researcher" value="1">
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-4">
											<label class="control-label">Date From</label> <input
												type="date" class="form-control" name="workDate1" placeholder="e.g 2014" value="2019-01-01">
										</div>
										<div class="col-md-4">
											<label class="control-label">Date To</label> <input
												type="date" class="form-control" name="workDate2" placeholder="e.g 2020" value="2019-01-01">
										</div>
										<div class="col-md-4">
											<label class="control-label">경력년수</label> <input
												type="text" class="form-control" name="career_year" placeholder="e.g 2020" value="2">
										</div>
									</div>
								</div>
							</div>
							</section>
							<div id="btn_add_career" class="add-post-btn">
								<div class="float-left">
									<a href="#" class="btn-added" onclick="return add_career()"><i class="ti-plus"></i> Add
										New Experience</a>
								</div>
								<div class="float-right">
									<a href="#" class="btn-delete" onclick="return del_career()"><i class="ti-trash"></i>
										Delete This</a>
								</div>
							</div>
<script>
	$('#careerList').hide();
	$('#btn_add_career').hide();
	$('#career_off').click(function(){
		$('#careerList').hide();
		$('#btn_add_career').hide();
	})
	$('#career_on').click(function(){
		$('#careerList').show();
		$('#btn_add_career').show();
	})
	function add_career(){
		var one_career=$('#careerList').children('div:lt(3)').clone();
		one_career.find('input').val("")
		$('#careerList').append('<hr>');
		$('#careerList').append(one_career);
		return false;
	}
	function del_career(){
		if($('#careerList').children('div.form-group').length>3){
			$('#careerList').children('div.form-group:last').remove()
			$('#careerList').children('hr:last').remove()
			$('#careerList').children('div.form-group:last').remove()
			$('#careerList').children('hr:last').remove()
			$('#careerList').children('div.form-group:last').remove()
			$('#careerList').children('hr:last').remove()
		}
		return false;
	}
</script>
							<div class="divider">
								<h3>자격증</h3>
							</div>
							<div id="cer_form-group" class="form-group">
								<div id="cer_row" class="row">
									<div class="col-md-6">
										<label class="control-label">자격증</label> <input
											class="form-control" name="cer_name" placeholder="Skill name, e.g. HTML"
											type="text" value="1">
									</div>
									<div class="col-md-6">
										<label class="control-label">날짜</label> <input
											class="form-control" name="cer_date" placeholder="Skill proficiency, e.g. 90"
											type="date" value="2019-01-01">
									</div>
								</div>
							</div>
							<div class="add-post-btn">
								<div class="float-left">
									<a href="#" class="btn-added" onclick="return add_cer()"><i class="ti-plus"></i>추가</a>
								</div>
								<div class="float-right">
									<a href="#" class="btn-delete" onclick="return del_cer()"><i class="ti-trash"></i>삭제</a>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-3">
										<label class="control-label">희망연봉</label>
										<label class="styled-select">
											<select name="hope_salary">
												<option value="0" selected>회사내규</option>
												<option value="2000">2000</option>
							 					<option value="3000">3000</option>
												<option value="4000">4000</option>
											</select>
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<input type="radio" name="open" value="Y" checked>공개
								<input type="radio" name="open" value="N" >비공개
							</div>
							<div class="form-group">
								<label class="control-label">이력서 제목</label>
								<input type="text" class="form-control" name="title" placeholder="제목" value="1">
							</div>
							<div class="form-group">
								<label class="control-label">프로그래밍 언어</label><br>
								<input type="checkbox" class="form-check-input" name="p" value="C" checked>
								<label class="form-check-label">C</label><br>
								<input type="checkbox" class="form-check-input" name="p" value="java">
								<label class="form-check-label">java</label><br>
								<input type="checkbox" class="form-check-input" name="p" value="CSS">
								<label class="form-check-label">CSS</label><br>
								<input type="checkbox" class="form-check-input" name="p" value="javascript">
								<label class="form-check-label">javascript</label><br>
								<input type="checkbox" class="form-check-input" name="p" value="C++">
								<label class="form-check-label">C++</label><br>
								<input type="checkbox" class="form-check-input" name="p" value="C#">
								<label class="form-check-label">C#</label><br>
								<input type="checkbox" class="form-check-input" name="p" value="VBA">
								<label class="form-check-label">VBA</label><br>
								<input type="checkbox" class="form-check-input" name="p" value="python">
								<label class="form-check-label">python</label><br>
								<input type="checkbox" class="form-check-input" name="p" value="php">
								<label class="form-check-label">php</label><br>
								<input type="checkbox" class="form-check-input" name="p" value="asp">
								<label class="form-check-label">asp</label><br>
							</div>
							<div class="form-group">
								<label class="control-label">자소서</label>
								<textarea class="form-control" id="comment" name="self" rows="5" id="자소서">1</textarea>
							</div>
<script>
var oEditors = [];
	
nhn.husky.EZCreator.createInIFrame({
 	 oAppRef: oEditors,
 	 elPlaceHolder: document.getElementById('comment'),
  	 sSkinURI: "<%=contextPath%>/resources/naver-smarteditor2-ca95d21/demo/SmartEditor2Skin.html",  
     fCreator: "createSEditor2",
     htParams:{
    	 bUseToolbar:false, // 툴바 사용여부
    	 bUseVerticalResizer:false, // 크기조절바 사용여부
    	 bUseModeChanger : false,	// 모드 탭(Editor | HTML | TEXT) 사용 여부
     }
});
</script>
							<input type="submit" class="btn btn-common" value="작성완료">
						</form>
<script>
	function add_cer(){
		str='<div id="cer_row" class="row">';
		str+='<div class="col-md-6">';
		str+='<label class="control-label">자격증</label>';
		str+='<input class="form-control" name="cer_name" placeholder="Skill name, e.g. HTML" type="text">';
		str+='</div>';
		str+='<div class="col-md-6">';
		str+='<label class="control-label">날짜</label>';
		str+='<input class="form-control" name="cer_date" placeholder="Skill proficiency, e.g. 90" type="date">';
		str+='</div>';
		str+='</div>';
		$('#cer_form-group').append(str)
		return false;
	}
	function del_cer(){
		if($('#cer_form-group').children('div#cer_row').length>1){
			$('#cer_form-group').children('div#cer_row:last').remove()
		}
		return false;
	}
</script>
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
<%-- <form action="<%=contextPath%>/addResum.re" method="post" enctype="multipart/form-data">
<h2 align="center">이력서 작성</h2>
<img id="titleImg"></img>
<input type="file" name="file" onchange="loadImg(this)">
<script>
	function loadImg(value){
		console.log(value.files)
		console.log(value.files[0])
		if(value.files && value.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				console.log(e.target)
				 $("#titleImg").attr("src", e.target.result); // data:URL
				 console.log(e.target.result);
			}
			reader.readAsDataURL(value.files[0]);
		}
	}
</script>
<hr>
	이름: <input type="text" id="name" name="name" value="1"><br>
	생년월일: <input type="date" id="birth" name="birth" value="2010-01-01"><br>
	핸드폰번호: <input type="text" id="phone" name="phone" value="1"><br>
	이메일: <input type="text" id="email" name="email" value="1"><br>
	주소:
	<!-- 주소api -->
<!-- 	<input type="text" id="sample3_postcode" name="sample3_postcode"  placeholder="우편번호">
	<input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br>
	<input type="text" id="sample3_address" name="sample3_address" placeholder="주소">
	<input type="text" id="sample3_detailAddress" name="sample3_detailAddress" placeholder="상세주소">
	<input type="hidden" id="sample3_extraAddress" placeholder="참고항목">
	<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
	</div>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="resources/util/address_api.js"></script> -->
	<!-- end of 주소api -->	
<hr>
		<input type="radio" name="school_final" value="1">고등학교 졸업<br>	
		학교명: <input type="text" name="school" value="1"><br>
		학과명: <input type="text" name="Department" value="학과1"><br>
<!-- 		<select name="Department">
			<option value="">--학교계열--</option>
			<option value="문과" selected>문과계열</option>
			<option value="이과">이과계열</option>
			<option value="전문">전문(실업)계</option>
			<option value="예체능">예체능계</option>
			<option value="특성화/마이스터">특성화/마이스터고</option>
			<option value="특수목적">특수목적고</option>
		</select> -->
		날짜: <input type="date" name="school_Date1" value="2010-01-01"> ~
		<input type="date" name="school_Date2" value="2010-01-02">
<hr>	
		<input type="radio" id="college" name="school_final" value="2" checked>초대졸 졸업<br>
		학교명: <input type="text" name="school" value="1"><br>
		학과명: <input type="text" name="Department" value="1"><br>
		날짜: <input type="date" name="school_Date1" value="2010-01-01"> ~
		<input type="date" name="school_Date2" value="2010-01-02">
	
<hr>
		<input type="radio" id="university" name="school_final" value="3">대졸 졸업 이상<br>
		<label>학교</label>
		<select name="gubun">
			<option value="4">--대학교--</option>
			<option value="4">대학교 4년제</option>
			<option value="s">대학원(석사)</option>
			<option value="p">대학원(박사)</option>
		</select>
		<br>
		
		학교명: <input type="text" name="school" value="1"><br>
		학과명: <input type="text" name="Department" value="1"><br>
		날짜: <input type="date" name="school_Date1" value="2010-01-01"> ~
		<input type="date" name="school_Date2" value="2010-01-02">
	</div>
<hr>
	<input type="radio" name="career" value="N" checked>신입
	<input type="radio" name="career" value="Y" >경력
	<input type="button" onclick="add_career()" value="+ 경력추가하기">
	<div id="careerList">
		<div id="careerForm">
			일한회사: <input type="text" name="companyName" value="1"><br>
			한 일: <input type="text" name="workList" value="1"><br>
			근무날짜: 
			<input type="date" name="workDate1" id="workDate1" value="2006-01-01"> ~
			<input type="date" name="workDate2" id="workDate2" value="2010-01-01"><br>
			경력년수 : <input name="career_year" value="2">
			<!-- <input type="button" id="careerButton" value="경력 계산" onclick="math();" >  -->
			<br>
			<div id="durl"></div>
		</div>
	</div>
<hr>
	<input type="button" value="+ 자격증 추가하기" onclick="add_cer()">
	<!-- <div id="cerList">
		<div id="cerForm">
			자격증: <input type="text" name="cer_name" value="1"><br>
			날짜: <input type="date" name="cer_date"  value="2010-01-01">
		</div>
	</div> -->
<hr>
	희망연봉금액: 
	<select name="hope_salary">
	    <option value="회사내규에따름">회사내규에따름<option>
		<option value="2000만원 ~ 2200만원">2000만원 ~ 2200만원<option>
		<option value="2200만원 ~ 2400만원">2200만원 ~ 2400만원<option>
		<option value="2400만원 ~ 2600만원">2400만원 ~ 2600만원<option>
		<option value="2600만원 ~ 2800만원">2600만원 ~ 2800만원<option>
		<option value="2800만원 ~ 3000만원">2800만원 ~ 3000만원<option>
	</select>
<hr>	
	<input type="radio" name="open" value="Y" checked>공개
	<input type="radio" name="open" value="N" >비공개
<hr>
	이력서 제목: <input type="text" maxlength="100" size="100px" name="title" value="1"><br>
	<select name="select" onchange="selectInput();">
		<option value="">== 선택없음 ==</option>
		<option value="title_1" selected>많이 일하고 조금 받겠습니다 뽑아주세요</option>
		<option value="title_2">취업하고 싶습니다 채용해주세요</option>
		<option value="title_3">백수그만하고싶습니다 돈벌게해주세요</option>
	</select>
<hr>
	프로그램언어: 
	<input type="checkbox" name="p" value="c언어" checked>c언어
	<input type="checkbox" name="p" value="자바">자바
	<input type="checkbox" name="p" value="CSS">css
	<input type="checkbox" name="p" value="javascript">javascript
	<br>
	자기소개: <textarea id="self" name="self">1</textarea><br>
	<input type="submit" value="작성완료">
</form> --%>

<script>

/* function setDisplay(){
    if($('input:radio[id=high]').is(':checked')){
        $('#highInfo').show();
        $('#collegeInfo').hide();
        $('#academyInfo').hide();
        
    }else if($('input:radio[id=college]').is(':checked')){ 
    	$('#highInfo').hide();
    	 $('#collegeInfo').show();
        $('#academyInfo').hide();
    }else{
    	$('#highInfo').hide();
   	 $('#collegeInfo').hide();
       $('#academyInfo').show();
    }
} */
	

 
 
 /* 	function add_career(){
	 	var str='<div id="careerForm">';
		str+='<label>근무 회사명</label>';
		str+='<input type="text" name="companyName" value="1"><br><br>';
		str+='<label>업무 내용 </label>';
		str+='<input type="text" name="workList" value="1"><br><br>';
		str+='<label>근무 일자</label>';
		str+='<input type="date" name="workDate1" value="2010-01-01"> ~';
		str+='<input type="date" name="workDate2" value="2010-01-01">';
		str+='<br><br>';
		str+='<span class="del_career" style="cursor:pointer;">삭제</span></div>';
		str+='</div>';
		$('#careerList').append(str)
	}
	$(document).on('click','.del_career',function(){
		$(this).closest('div #careerForm').remove();
	}) */

/* 	function add_cer(){
		
		var str='<div id="cerForm">';
		str+='<label>자격증명</label>';
		str+='<input type="text" name="cer_name" value="1"><br><br>';
		str+='<label>취득날짜</label>';
		str+='<input type="date" name="cer_date"  value="2010-01-01">';
		str+='<br>';
		str+='<span class="del_cer" style="cursor:pointer;">삭제</span></div>';
		str+='</div>';
		$('#cerList').append(str)
	}
	$(document).on('click','.del_cer',function(){
		$(this).closest('div #cerForm').remove();
	}) */

	
	function math(){
		var inputDate1 = $("#workDate1").val();
		var inputDate2 = $("#workDate2").val(); 
		var dateArrayDate1 = inputDate1.split("-");  	
		var dateArrayDate2 = inputDate2.split("-");
		var dateObj1 = new Date(dateArrayDate1[0], Number(dateArrayDate1[1])-1, dateArrayDate1[2]);  
		var dateObj2 = new Date(dateArrayDate2[0], Number(dateArrayDate2[1])-1, dateArrayDate2[2]);  
		var betweenDay = (dateObj2.getTime() - dateObj1.getTime());  
		if(betweenDay/1000 /60 /60 /24 < 0){
			alert("날짜값이 맞지않습니다. 다시 입력해주세요");
		}else{
			var lastDate = parseInt((betweenDay/365));
			alert("경력"+lastDate+"년차입니다.");
		}
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
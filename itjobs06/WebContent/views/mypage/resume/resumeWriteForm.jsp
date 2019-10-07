<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//String contextPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>이력서 작성하기</title>


<style>
	#header{
	width:100%;
	height:250px;	
	background-color:lightgray;
	}
	#first{
	margin-left:100px;
	border:1px solid black;
	}
	
	#collegeInfo{
	
	/* display:none; */
	}
	
	#collegeInfo,#highInfo,#academyInfo{
		padding:20px;
		border:1px solid black;
		width:600px;
		background-color:lightgray;
	}
	#academyInfo{
	/* display:none; */
	}
	#academy,#career{
	margin-left:100px;
	}
	
	#careerList,#careerList2,#cerList,,#resum_title{
	border:1px solid black; 
	}
	
	#careerList2,#cerList2{
	display:none;	
	}
	
	#careerList2{
	margin-bottom:100px;
	}
	#img{
	width:200px;
	height:250px;
	border:1px solid black;
	
	}

	
</style>
</head>
<body>
<%@ include file="/views/include/header.jsp" %>
<form action="<%=contextPath%>/addResum.re" method="post" enctype="multipart/form-data">
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

<div id="first">
	<label name="name">* 이름 : </label>
	<input type="text" id="name" name="name" value="1"> <br><br>
	
	<label name="birth">* 생년월일 : </label>
	<input type="date" id="birth" name="birth" value="2010-01-01">
	
	<label name="phone">* 핸드폰번호 : </label>
	<input type="text" id="phone" name="phone" value="1"><br><br>
	
	<label name="address">* 주소: </label>
	<!-- <input type="text" id="address" name="address" value="1"> -->
	<br>
	
	
	<!-- 주소api -->
	<input type="text" id="sample3_postcode" name="sample3_postcode"  placeholder="우편번호">
	<input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br>
	<input type="text" id="sample3_address" name="sample3_address" placeholder="주소">
	<input type="text" id="sample3_detailAddress" name="sample3_detailAddress" placeholder="상세주소">
	<input type="hidden" id="sample3_extraAddress" placeholder="참고항목">
	
	<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
	</div>
	<br>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    function sample3_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample3_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample3_postcode').value = data.zonecode;
                document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
</script>
	<!-- end of 주소api -->
	
	
	
	<br>
	
	<label name="email">* 이메일: </label>
	<input type="text" id="email" name="email" value="1"><br><br>
	
	

</div><br><br>
<div id="academy">
	<h3>최종 학력</h3>
	<br>
	<div id="highInfo">
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
	</div>
	
	<div id="collegeInfo">
		<input type="radio" id="college" name="school_final" value="2" checked>초대졸 졸업<br>
		학교명: <input type="text" name="school" value="1"><br><br>
		학과명: <input type="text" name="Department" value="1"><br><br>
		날짜: <input type="date" name="school_Date1" value="2010-01-01"> ~
		<input type="date" name="school_Date2" value="2010-01-02">
	</div>
	
	<div id="academyInfo">
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
</div>

<br><br>

<div id="career">
	<h3>경력 사항</h3>
	<input type="radio" name="career" value="N" checked>신입
	<input type="radio" name="career" value="Y" >경력
	<input type="button" onclick="add_career()" value="+ 경력추가하기">
	<div id="careerList">
		<div id="careerForm">
			<label>근무 회사명</label>
			<input type="text" name="companyName" value="1"><br><br>
			 
			<label>업무 내용 </label>
			<input type="text" name="workList" value="1"><br><br>
			
			<label>근무 일자</label>
			<input type="date" name="workDate1" id="workDate1" value="2006-01-01"> ~
			<input type="date" name="workDate2" id="workDate2" value="2010-01-01">
			
			경력년수 : <input name="career_year" value="2">
			<!-- <input type="button" id="careerButton" value="경력 계산" onclick="math();" >  -->
			<br>
			<div id="durl"></div>

			<br><br>
		</div>
	</div>

	<br>
	
<!-- 	<div id="careerList2">
	<br>---------------------------------------------------------------------------<br><br>
	
	
	<label>근무 회사명</label>
	<input type="text" id="companyName" name="companyName"><br><br>
	
	<label>업무 내용 </label>
	<input type="text" id="workList" name="workList"><br><br>
	
	<label>근무 일자</label>
	<input type="date" id="workDate1" name="workDate1"> ~
	<input type="date" id="workDate2" name="workDate2">

	<br>
	<input type="button" value="삭제하기" id="careerDelete" name="careerDelete" onclick="remove_div(this)">
	
	
	</div> -->
	
	<br>
	
	
	<div id="cer">
	<h3>자격증</h3>
	<input type="button" value="+ 자격증 추가하기" onclick="add_cer()">
	<div id="cerList">
		<div id="cerForm">
			<label>자격증명</label>
			<input type="text" name="cer_name" value="1"><br><br>
			<label>취득날짜</label>
			<input type="date" name="cer_date"  value="2010-01-01">
			
			
			<br>
		</div>
	</div>
	
	<!-- <div id="cerList2">
	<br>---------------------------------------------------------------------------<br><br>
	<label>자격증명</label>
	<input type="text" id="cer_id" name="cer_name"><br><br>
	<label>취득날짜</label>
	<input type="date" id="cer_date" name="cer_date"><br>
	<input type="button" value="삭제하기" id="cerDelete" name="cerDelete" onclick="remove_cer(this)">
	<br>
	</div> -->
	<br><br>
	
	<div id="salary">
	<h3>희망연봉</h3><br>
	<label>희망연봉금액</label>
	<select name="hope_salary">
	    <option value="회사내규에따름">회사내규에따름<option>
		<option value="2000만원 ~ 2200만원">2000만원 ~ 2200만원<option>
		<option value="2200만원 ~ 2400만원">2200만원 ~ 2400만원<option>
		<option value="2400만원 ~ 2600만원">2400만원 ~ 2600만원<option>
		<option value="2600만원 ~ 2800만원">2600만원 ~ 2800만원<option>
		<option value="2800만원 ~ 3000만원">2800만원 ~ 3000만원<option>
	</select>
	</div>
	<br><br>
	
	<div id="public">
	<h3>이력서 공개 여부</h3>
	<label>공개여부</label><br>
	<input type="radio" name="open" value="Y" checked>Y
	<input type="radio" name="open" value="N" >N
	
	
	
	</div>
		
	

	
	
	<br><br>
	
	<div id="resum_title">
		<h3>이력서 제목</h3>
		<label>제목 </label>
		<input type="text" maxlength="100" size="100px" name="title" value="1">
		
		<br><br>
		
		<select name="select" onchange="selectInput();">
			<option value="">== 선택없음 ==</option>
			<option value="title_1" selected>많이 일하고 조금 받겠습니다 뽑아주세요</option>
			<option value="title_2">취업하고 싶습니다 채용해주세요</option>
			<option value="title_3">백수그만하고싶습니다 돈벌게해주세요</option>
		</select>
		<br><br>
		
		<div id="p_lang">
			<h3>프로그램언어</h3><br>
			<input type="checkbox" name="p" value="c언어" checked>c언어
			<input type="checkbox" name="p" value="자바">자바
			<input type="checkbox" name="p" value="CSS">css
			<input type="checkbox" name="p" value="javascript">javascript
		
		
		
		</div>
	



	</div>
	<br><br>
	
	<div id="self">
		<h3>자기소개</h3>
		<textarea id="self" cols="60" rows="10" name="self">1</textarea>
	</div>
	
	<br><br>
	
	

	<input type="submit" value="작성완료">
	
	</div>
	
	
	
</div>


</form>

<script>

function setDisplay(){
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
}
	

 
 
	function add_career(){
	/* 	 var form=$('#careerForm')
		 var str=form.html();
		 str=str.replace('</div>','<button onclick="del_career()">삭제</button></div>')
		 console.log(str)
		 $('#careerList').append(str) */
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
	})

	function add_cer(){
		
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
	})

	
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


<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
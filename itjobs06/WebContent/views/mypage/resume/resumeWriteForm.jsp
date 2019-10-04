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
	#academy,#carrer{
	margin-left:100px;
	}
	
	#carrerList,#carrerList2,#cerList,,#resum_title{
	border:1px solid black;
	}
	
	#carrerList2,#cerList2{
	display:none;	
	}
	
	#carrerList2{
	margin-bottom:100px;
	}

	
</style>
<div id="head"></div>
</head>
<body>
<%@ include file="/views/include/header.jsp" %>
<form action="<%=contextPath%>/addResum.re" method="post">
<h2 align="center">이력서 작성</h2>
<div id="first">
	
	<label name="name">* 이름 : </label>
	<input type="text" id="name" name="name" value="1"> <br><br>
	
	<label name="birth">* 생년월일 : </label>
	<input type="date" id="birth" name="birth" value="2010-01-01">
	
	<label name="phone">* 핸드폰번호 : </label>
	<input type="text" id="phone" name="phone" value="1"><br><br>
	
	<label name="address">* 주소: </label>
	<input type="text" id="address" name="address" value="1"><br><br>
	
	<label name="email">* 이메일: </label>
	<input type="text" id="email" name="email" value="1"><br><br>
	
	

</div><br><br>
<div id="academy">
	<h3>최종 학력</h3>
	<br>
	<div id="highInfo">
		<input type="radio" name="school_final" value="1"> 고등학교 졸업<br>
		<label>학교명</label>
		<input type="text" name="school" value="1"><br><br>
	
		<label>학과명</label>
		<select name="Department">
			<option value="">--학교계열--</option>
			<option value="문과" selected>문과계열</option>
			<option value="이과">이과계열</option>
			<option value="전문">전문(실업)계</option>
			<option value="예체능">예체능계</option>
			<option value="특성화/마이스터">특성화/마이스터고</option>
			<option value="특수목적">특수목적고</option>
		</select>
		
		<input type="date" name="school_Date1" value="2010-01-01"> ~
		<input type="date" name="school_Date2" value="2010-01-01">
		<br><br>
	</div>
	
	<div id="collegeInfo">
		<input type="radio" id="college" name="school_final" value="2" checked>초대졸 졸업<br>
		<label>학교명 </label>
		<input type="text" name="school" value="1"><br><br>
		
		<label>학과명 </label>
		<input type="text" name="Department" value="1"><br><br>
		
		<input type="date" name="school_Date1" value="2010-01-01"> ~
		<input type="date" name="school_Date2" value="2010-01-01">
	</div>
	
	<div id="academyInfo">
		<input type="radio" id="university" name="school_final" value="3">대졸 졸업 이상<br>
		<label>학교</label>
		<select >
			<option>--대학교--</option>
			<option>대학교 4년제</option>
			<option>대학원(석사)</option>
			<option>대학원(박사)</option>
		</select>
		<br>
		<label>학교명</label>
		<input type="text" name="school" value="1"><br>
		
		<label>학과명</label>
		<input type="text" name="Department" value="1"><br>
		
		<label>재학기간 </label>
		<input type="date" name="school_Date1" value="2010-01-01"> ~
		<input type="date" name="school_Date2" value="2010-01-01">
	</div>
</div>

<br><br>

<div id="carrer">
	<h3>경력 사항</h3>
	<input type="radio" name="career" value="N" checked>신입
	<input type="radio" name="career" value="Y" >경력
	<input type="button" onclick="add_div()" name="carrerInsert" value="+ 경력추가하기" disabled>
	<div id="carrerList">
	
		<label>근무 회사명</label>
		<input type="text" name="companyName" value="1"><br><br>
		 
		<label>업무 내용 </label>
		<input type="text" name="workList" value="1"><br><br>
		
		<label>근무 일자</label>
		<input type="date" name="workDate1" value="2010-01-01"> ~
		<input type="date" name="workDate2" value="2010-01-01">
		<br><br>

	</div>

	<br>
	
<!-- 	<div id="carrerList2">
	<br>---------------------------------------------------------------------------<br><br>
	
	
	<label>근무 회사명</label>
	<input type="text" id="companyName" name="companyName"><br><br>
	
	<label>업무 내용 </label>
	<input type="text" id="workList" name="workList"><br><br>
	
	<label>근무 일자</label>
	<input type="date" id="workDate1" name="workDate1"> ~
	<input type="date" id="workDate2" name="workDate2">

	<br>
	<input type="button" value="삭제하기" id="carrerDelete" name="carrerDelete" onclick="remove_div(this)">
	
	
	</div> -->
	
	<br>
	
	
	<div id="cer">
	<h3>자격증</h3>
	<input type="button" name="cerInsert" value="+ 자격증 추가하기" onclick="add_cer()" disabled>
	<div id="cerList">
	<label>자격증명</label>
	<input type="text" name="cer_name" value="1"><br><br>
	<label>취득날짜</label>
	<input type="date" name="cer_date"  value="2010-01-01">
	
	
	<br>
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

function add_div(){

    var div = document.createElement('div');

    div.innerHTML = document.getElementById('carrerList2').innerHTML 

    document.getElementById('carrerList').appendChild(div);
    
    
    }
    
function remove_div(obj){

	document.getElementById('carrerList').removeChild(obj.parentNode);

	}
	
function add_cer(){
	
	var cer = document.createElement('cer');
	
	cer.innerHTML = document.getElementById('cerList2').innerHTML
	
	document.getElementById('cerList').appendChild(cer);
}

function remove_cer(obj){

	document.getElementById('cerList').removeChild(obj.parentNode);

	}

function selectInput(){
	
	var val = $("#select option:selected").html();
	console.log(val); 
	
	
	var a =$("#title").val(val);
	
	
	
	
}




</script>




<br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
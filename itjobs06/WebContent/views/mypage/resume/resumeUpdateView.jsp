<%@page import="com.kh.resume.model.vo.Resume"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <% 
	//String contextPath = request.getContextPath();
 	Resume re = (Resume)request.getAttribute("re");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이력서 수정</title>
</head>
<body>
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
	
	display:none;
	}
	
	#collegeInfo,#highInfo,#academyInfo{
		padding:20px;
		border:1px solid black;
		width:600px;
		background-color:lightgray;
	}
	#academyInfo{
	display:none;
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
<form action="<%=contextPath%>/update.re" method="post">
<h2 align="center">이력서 수정</h2>
<div id="first">
	
	<label name="name">* 이름 : </label>
	<input type="text" id="name" name="name" value="<%= re.getName() %> "><br><br>
	
	<label name="birth">* 생년월일 : </label>
	<input type="date" id="birth" name="birth" value="<%=re.getBirth_date() %>" >
	
	<label name="phone">* 핸드폰번호 : </label>
	<input type="text" id="phone" name="phone" value="<%= re.getPhone() %> "><br><br>
	
	<label name="address">* 주소: </label>
	<input type="text" id="address" name="address" value="<%= re.getAddress() %> "><br><br>
	
	<label name="email">* 이메일: </label>
	<input type="text" id="email" name="email" value="<%= re.getEmail() %> "><br><br>
	
	

</div><br><br>
<div id="academy">

	<% if(re.getSchool().equals("고등학교")){ %>
	
	<script>
		
		$(".high").prop("checked",true);
	</script>
	<%} %>
	<h3>최종 학력</h3>
	<input type="radio" id="high" name="school" value="고등학교" onchange="setDisplay()" >고등학교 졸업
	<input type="radio" id="college" name="school" value="초대졸" onchange="setDisplay()" >초대졸 졸업
	<input type="radio" id="university" name="school" value="대졸 이상 " onchange="setDisplay()" >대졸 졸업 이상
	
	<br>
	<div id="highInfo">
	<label>학교명</label>
	<input type="text" placeholder="ex)정보고등학교" id="academyName" name="academyName"><br><br>
	
	
	
	<label>학과명</label>
	<select id="highDepartment" name="Department">
	<option value="">--학교계열--</option>
	<option value="문과">문과계열</option>
	<option value="이과">이과계열</option>
	<option value="전문">전문(실업)계</option>
	<option value="예체능">예체능계</option>
	<option value="특성화/마이스터">특성화/마이스터고</option>
	<option value="특수목적">특수목적고</option>
	</select>
	
	<input type="date" id="collegeDate1" name="school_Date1"> ~
	<input type="date" id="collegeDate2" name="school_Date2">
	<br><br>
	
	</div>
	
	<div id="collegeInfo">
	<label>학교명 </label>
	<input type="text" placeholder="ex)정보대학교" id="academyName" name="academyName" value="<%= re.getSchool() %>"><br><br>
	
	<label>학과명 </label>
	<input type="text" placeholder="ex)컴퓨터공학과" id="aDepartment" name="Department"><br><br>
	
	<input type="date" id="collegeDate1" name="school_Date1"> ~
	<input type="date" id="collegeDate2" name="school_Date2">
	</div>
	
	<div id="academyInfo">
	<label>학교</label>
	<select id="academyYear">
	<option>--대학교--</option>
	<option>대학교 4년제</option>
	<option>대학원(석사)</option>
	<option>대학원(박사)</option>
	</select>
	<br><br>
	<label>학교명</label>
	<input type="text" placeholder="ex)정보대학교" id="academyName" name="academyName"><br><br>
	
	<label>학과명</label>
	<input type="text" placeholder="ex)컴퓨터공학과" id="departmentName" name="Department"><br><br>
	
	<label>재학기간 </label>
	<input type="date" id="academyDate1" name="school_Date1"> ~
	<input type="date" id="academyDate2" name="school_Date2">
	</div>
	</div>

<br><br>

<div id="carrer">
	<h3>경력 사항</h3>
	<input type="radio" id="newCarrer" name="career" value="N" >신입
	<input type="radio" id="oldCarrer" name="career" value="Y" >경력
	<input type="button" onclick="add_div()" id="carrerInsert" name="carrerInsert" value="+ 경력추가하기">
	<div id="carrerList">
	
	<label>근무 회사명</label>
	<input type="text" id="companyName" name="companyName"><br><br>
	 
	<label>업무 내용 </label>
	<input type="text" id="workList" name="workList"><br><br>
	
	<label>근무 일자</label>
	<input type="date" id="workDate1" name="workDate1"> ~
	<input type="date" id="workDate2" name="workDate2">
	<br><br>

	</div>

	<br>
	
	<div id="carrerList2">
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
	
	
	</div>
	
	<br>
	
	
	<div id="cer">
	<h3>자격증</h3>
	<input type="button" id="cerInsdert" name="cerInsert" value="+ 자격증 추가하기" onclick="add_cer()">
	<div id="cerList">
	<label>자격증명</label>
	<input type="text" id="cer_id" name="cer_name"><br><br>
	<label>취득날짜</label>
	<input type="date" id="cer_date" name="cer_date">
	
	
	<br>
	</div>
	
	<div id="cerList2">
	<br>---------------------------------------------------------------------------<br><br>
	<label>자격증명</label>
	<input type="text" id="cer_id" name="cer_name"><br><br>
	<label>취득날짜</label>
	<input type="date" id="cer_date" name="cer_date"><br>
	<input type="button" value="삭제하기" id="cerDelete" name="cerDelete" onclick="remove_cer(this)">
	<br>
	consol.log("#cer_date");
	</div>
	<br><br>
	
	<div id="salary">
	<h3>희망연봉</h3><br>
	<label>희망연봉금액</label>
	<select id="hope_salary" name="hope_salary">
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
	<input type="radio" id="public_Y" name="open" value="y" >Y
	<input type="radio" id="public_N" name="open" value="n" >N
	
	
	
	</div>
		
	

	
	
	<br><br>
	
	<div id="resum_title">
	<h3>이력서 제목</h3>
	<label>제목 </label>
	<input type="text" maxlength="100" size="100px" name="title" id="title">
	
	<br><br>
	
	<select id="select" name="select" onchange="selectInput();">
	<option value="">== 선택없음 ==</option>
	<option value="title_1">많이 일하고 조금 받겠습니다 뽑아주세요</option>
	<option value="title_2">취업하고 싶습니다 채용해주세요</option>
	<option value="title_3">백수그만하고싶습니다 돈벌게해주세요</option>
	</select>
	<br><br>
	
	<div id="p_lang" name="p_lang">
	<h3>프로그램언어</h3><br>
	<input type="checkbox" id="p1" name="p" value="c언어">c언어
	<input type="checkbox" id="p2" name="p" value="자바">자바
	<input type="checkbox" id="p3" name="p" value="CSS">css
	<input type="checkbox" id="p4" name="p" value="javascript">javascript
	
	
	
	</div>
	



	</div>
	<br><br>
	
	<div id="self">
	<h3>자기소개</h3>
	<textarea id="self" cols="60" rows="10" name="self"></textarea>
	</div>
	
	<br><br>
	<%-- <input type="hidden" name="m_no"value="<%=loginUser.get %>" --%>
	<input type="submit" value="수정완료">
	
	</div>
</div>
</form>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
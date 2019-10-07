<%@page import="com.kh.resume.model.vo.Resume"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Resume re = (Resume)request.getAttribute("re");


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>resumDetailView</title>
</head>
<body>
<%@ include file="/views/include/header.jsp" %>
<h2 align="center">이력서 작성</h2>
<div id="first">
	제목 : <%= re.getTitle()%><br> 
	이름 : <%= re.getName()%><br> 
	생년월일 : <%= re.getBirth_date()%><br> 
	폰 : <%= re.getPhone()%><br> 
	주소 : <%= re.getAddress() %><br> 
	이메일 : <%= re.getEmail() %><br> 
</div><br><br>
	<div id="academy">
	<h3>최종 학력</h3>
	학교 : <%= re.getSchool()%><br> 
	학과 : <%= re.getDepartment()%><br> 
	기간 : <%= re.getSchool_period()%><br> 
	</div>
<br><br>

<div id="carrer">
	경력 : <%= re.getCareer()%><br>
	일한장소 : <%= re.getWork_place()%><br>
	일한날짜 : <%= re.getWork_date()%><br>
	한 일 : <%= re.getWork()%><br>
	자격증 : <%= re.getCertification()%><br>
	자격날짜 : <%= re.getCer_date()%><br>
	희망연봉 : <%= re.getHope_salary()%><br>
	공개 : <%= re.getOpen()%><br>
	언어 : <%= re.getP_language()%><br>
	자소서 : <%= re.getCover_letter()%><br>

	
	
	
	
	
	<br><br>
	<%-- <input type="hidden" name="m_no"value="<%=loginUser.get %>" --%>
	<%-- <input type="submit" value="목록으로" onclick="location.href="<%= contextPath %>/detail.bo?bId=" + bId;"> --%>
	
	<button type="button"  onclick="location.href='<%=contextPath%>/updateForm.re?resume_no=<%=re.getResume_no()%>';">수정하기</button>
	<button type="button"  onclick="location.href='<%=contextPath%>/deleteResum.re?resume_no=<%=re.getResume_no()%>';">삭제하기</button>
	</div>
	
	
	

<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
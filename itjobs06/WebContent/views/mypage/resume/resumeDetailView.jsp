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
	
	<h3><%= re.getTitle()%></h3> <!-- re제일 처음 . 을 찍었는데 여기서 오류난거면 re=null일듯. -->
	<label name="name" id="name"><%= re.getName()%></label>

	
	<label name="birth"><%= re.getBirth_date()%> </label>

	<br>
	<label name="phone"><%= re.getPhone()%></label>
	
	
	<label name="address"><%= re.getAddress() %> </label>
	
	
	<label name="email"><%= re.getEmail() %></label>

	
	

</div><br><br>
<div id="academy">
	<h3>최종 학력</h3>
	<label><%= re.getSchool()%></label>
	<label><%= re.getDepartment()%></label>
	<label><%= re.getSchool_period()%></label>
	<br>
	<br>

	</div>
	
<br><br>

<div id="carrer">
	<h3>경력 사항</h3>
	<label><%= re.getCareer()%></label>
	<label><%= re.getWork_place()%></label>
	<label><%= re.getWork_date()%></label>
	<label><%= re.getWork()%></label>
	
	<br>
	
	<label><%= re.getCertification()%></label>
	<label><%= re.getCer_date()%></label>
	
	
	<br>
	<label><%= re.getHope_salary()%></label>
	
	<label><%= re.getOpen()%></label>
	
	<label><%= re.getP_language()%></label>
		
	<label><%= re.getCover_letter()%></label>

	
	
	
	
	
	<br><br>
	<%-- <input type="hidden" name="m_no"value="<%=loginUser.get %>" --%>
	<%-- <input type="submit" value="목록으로" onclick="location.href="<%= contextPath %>/detail.bo?bId=" + bId;"> --%>
	
	<button type="button"  onclick="location.href='<%=contextPath%>/updateForm.re?resume_no=<%=re.getResume_no()%>';">수정하기</button>
	<button type="button"  onclick="location.href='<%=contextPath%>/deleteResum.re?resume_no=<%=re.getResume_no()%>';">삭제하기</button>
	</div>
	
	
	

<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
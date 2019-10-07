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

	<img src="resources/fileupload_resumeImg/<%=re.getPhoto()%>"><br>
	제목 : <%= re.getTitle()%><br>
	이름 : <%= re.getName()%><br>
	생년월일 : <%= re.getBirth_date()%><br>
	폰 : <%= re.getPhone()%><br>
	주소 : <%= re.getAddress() %><br>
	이메일 : <%= re.getEmail() %><br>
<hr>
	<%	String[] schools=re.getSchool().split(",");
		String[] departments=re.getDepartment().split(",");
		String[] school_period=re.getSchool_period().split("~");
		String[] st_school_period=school_period[0].split(",");
		String[] ed_school_period=school_period[1].split(",");
		
		for(int i=0;i<schools.length;i++){%>
	학교 : <%= schools[i]%><br>
	학과 : <%= departments[i]%><br>
	기간 : <%= st_school_period[i]%>~<%= ed_school_period[i]%><br>
	<br>
	<%	} %>
<hr>
	경력 : <%= re.getCareer()%><br>
	<%	if(re.getCareer().equals("Y")){
			String[] work_place=re.getWork_place().split(",");
			String[] work_date=re.getWork_date().split("~");
			String[] st_work_date=work_date[0].split(",");
			String[] ed_work_date=work_date[1].split(",");
			String[] work=re.getWork().split(",");
			
			for(int i=0;i<work_place.length;i++){%>
	일한장소 : <%=work_place[i]%><br>
	한 일 : <%=work[i]%><br>
	일한날짜 : <%=st_work_date[i]%>~<%=ed_work_date[i]%><br><br>
	<%		}
		}%>
<hr>
	<%	String[] certifications=re.getCertification().split(",");
		String[] cer_dates=re.getCer_date().split(",");
		
		for(int i=0;i<certifications.length;i++){%>
	자격증 : <%= certifications[i]%><br>
	자격날짜 : <%= cer_dates[i]%><br>
	<%	} %>
<hr>
	희망연봉 : <%= re.getHope_salary()%><br>
	공개 : <%= re.getOpen()%><br>
	언어 : <%= re.getP_language()%><br>
	자소서 : <%= re.getCover_letter()%><br>

<button onclick="location.href='<%=request.getContextPath()%>/update.re?resume_no=<%=re.getResume_no()%>'">수정하기</button>

<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
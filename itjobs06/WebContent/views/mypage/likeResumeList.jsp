<%@page import="com.kh.resume.model.vo.Resume"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/views/include/header.jsp" %>
<h1>인재 좋아요</h1>
<button>삭제</button>
<table border=1>
	<tr>
		<th><input type=checkbox></th>
		<th>이름</th>
		<th>언어</th>
		<th>신입/경력</th>
		<th>생년월일</th>
		<th>학력</th>
		<th>이력서 보기</th>
		<th>삭제</th>
	</tr>
	<%	ArrayList<Resume> list=(ArrayList<Resume>)request.getAttribute("list");
		for(Resume r:list){%>
	<tr>
		<td><input type=checkbox></td>
		<td><%=r.getName() %></td>
		<td><%=r.getP_language() %></td>
		<td><%=r.getCareer() %></td>
		<td><%=r.getBirth_date() %></td>
		<td><%=r.getSchool() %></td>
		<td><button>이력서 보기</button></td>
		<td><button onclick="del(<%=r.getResume_no()%>,<%=mem.getM_no()%>)">삭제</button></td>
	</tr>
	<%	} %>
</table>
<script>
	function del(resume_no,m_no){
		location.href="<%=request.getContextPath()%>/delResume.like?resume_no="+resume_no+"&m_no="+m_no;
	}
</script>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
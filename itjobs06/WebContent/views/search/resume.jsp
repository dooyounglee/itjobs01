<%@page import="com.kh.resume.model.vo.Resume"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/views/include/header.jsp" %>
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
	<div id="result">
<%	ArrayList<Resume> list=(ArrayList<Resume>)request.getAttribute("list");
	for(Resume r:list){%>
	<%=r %><br>
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
</script>
</body>
</html>
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
담당자이메일:<input><br>
비번:<input><br>
비번확인:<input><br>
기업명(닉네임자리):<input><br>

사업자등록증번호:<input><br>
사업자등록증파일:<input type=file><br>
담당자이름:<input><br>
담당자 전화번호:<input><br>
주소:<input><br>
대표자명:<input><br>
대표번호:<input><br>


<a href="<%=contextPath %>/views/login/join_ok.jsp">회원가입</a>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
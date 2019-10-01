<%@page import="com.kh.member.model.vo.Co_Info"%>
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
<form action="update.me" method="post" autocomplete="off">
	${mem }<br>
	닉네임수정:<input name=nickname value="<%=mem.getNickname()%>"><br>
	<button>입력완료</button>
	<button onclick="return changePw()">비번수정</button>
	<button onclick="return leave()">탈퇴(모달창으로 할꺼임)</button>
	<hr>
	
	<%	if(mem.getType().equals("기업")){
		Co_Info co=(Co_Info)session.getAttribute("co");%>
	${co }<br>
	사업자등록번호:<input name=regnum value="<%=co.getRegNum()%>"><br>
	담당자이름:<input name=name value="<%=co.getName()%>"><br>
	담당자이름:<input name=phone value="<%=co.getPhone()%>"><br>
	위치:<input name=address value="<%=co.getAddress()%>"><br>
	대표자명:<input name=ceo value="<%=co.getCeo()%>"><br>
	대표번호:<input name=co_phone value="<%=co.getCo_phone()%>"><br>
	사업내용:<input name=descript value="<%=co.getDescript()%>"><br>
	설립일:<input name=birth_date name=regnum value="<%=co.getBirth_date()%>"><br>
	사원수:<input name=memsum value="<%=co.getMemsum()%>"><br>
	매출액:<input name=revenue value="<%=co.getRevenue()%>"><br>
	연혁:<input name=history value="<%=co.getHistory()%>"><br>
	복지:<input name=welfare value="<%=co.getWelfare()%>"><br>
	<%	} %>
	<button>입력완료</button>
</form>
<script>
	function changePw(){
		window.open("views/mypage/changePw.jsp","비밀번호 변경창","width=500,height=300");
		return false;
	}
	function leave(){
		//모달창 띄울까
		return false;
	}
</script>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
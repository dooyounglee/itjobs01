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
<form action="<%=request.getContextPath() %>/join.me" method="post" autocomplete=off>
<input value="기업" name=type readonly><br>
담당자이메일:<input name=email><br>
비번:<input name=pw><br>
비번확인:<input name=pw1><br>
기업명(닉네임자리):<input name=nickname><br>

사업자등록증번호:<input name=regnum><br>
사업자등록증파일:<input name=file><br>
담당자이름:<input name=name><br>
담당자 전화번호:<input name=phone><br>
주소:<input name=address><br>
대표자명:<input name=ceo><br>
대표번호:<input name=co_phone><br>
사업내용:<input name=discript><br>
설립일:<input name=birth_date><br>
사원수:<input name=memsum><br>
매출액:<input name=revenue><br>
연혁:<input name=history><br>
복지:<input name=welfare><br>
<button>회원가입</button>
</form>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
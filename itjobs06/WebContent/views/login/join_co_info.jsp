<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member" %>
<%
	Member m = (Member)request.getAttribute("m");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<form action="<%= request.getContextPath() %>/coinfo.me" method="post" autocomplete="off">
	<h2>기업가입2</h2><br><br>
<input type="hidden" value="<%=m.getEmail()%>" name="email">

사업자등록번호*<input type="text" name="regnum"><br>
사업자등록파일첨부*<input type="text" name="file"><br>
<!-- 
사업자등록파일첨부*<input type="file" name="file"><br>
 -->
첨부경로명*<input type="text" name="path"><br>
담당자명*<input type="text" name="name"><br>
담당자폰*<input type="text" name="phone"><br>
주소*<input type="text" name="address"><br>
대표자명*<input type="text" name="ceo"><br>
대표폰*<input type="text" name="co_phone"><br>
사업내용<input type="text" name="descript"><br>
설립일<input type="text" name="birth_date"><br>
사원수<input type="text" name="memsum"><br>
매출액<input type="text" name="revenue"><br>
연혁<input type="text" name="history"><br>
복지<input type="text" name="welfair"><br>

<input type="submit" value="가입신청하기">
</form>
</body>
</html>
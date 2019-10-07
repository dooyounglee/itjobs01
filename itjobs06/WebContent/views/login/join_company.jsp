<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="/views/include/user/style.jsp" %>

<%@ include file="/views/include/user/header_nav.jsp" %>



	<div class="page-header">
		<div class="container">
		<div class="row">
		<div class="col-lg-12">
		<div class="inner-header">
		<h3>Create Your account</h3>
		</div>
		</div>
		</div>
		</div>
		</div>
		
		
		<section id="content" class="section-padding">
		<div class="container">
		<div class="row justify-content-center">
		<div class="col-lg-5 col-md-6 col-xs-12">
		<div class="page-login-form box">
		<h3>
		기업
		</h3>
		<form class="login-form" action="<%=request.getContextPath() %>/join.me" method="post" autocomplete=off>
		<input value=2 name=type readonly>
		<div class="form-group">
		<div class="input-icon">
		<i class="lni-user"></i>
		<input type="text" class="form-control" name="nickname" placeholder="기업명(닉네임)">
		</div>
		</div>
		<div class="form-group">
		<div class="input-icon">
		<i class="lni-envelope"></i>
		<input type="text" class="form-control" name="email" placeholder="이메일">
		</div>
		</div>
		<div class="form-group">
		<div class="input-icon">
		<i class="lni-lock"></i>
		<input type="password" class="form-control" name="pw" placeholder="비밀번호">
		</div>
		</div>
		<div class="form-group">
		<div class="input-icon">
		<i class="lni-unlock"></i>
		<input type="password" class="form-control" name="pw1" placeholder="비밀번호 확인">
		</div>
		</div>
		<button class="btn btn-common log-btn mt-3">다음</button>
		<p class="text-center">Already have an account?<a href="login.html"> Sign In</a></p>
		</form>
		</div>
		</div>
		</div>
		</div>
		</section>


<%@ include file="/views/include/user/footer.jsp" %>











<%@ include file="/views/include/header.jsp" %>

<form action="<%=request.getContextPath() %>/join.me" method="post" autocomplete=off>

<h2>기업회원가입1</h2><br><br>
<input value=2 name=type readonly><br>
담당자이메일:<input name=email><br>
비번:<input name=pw><br>
비번확인:<input name=pw1><br>
기업명(닉네임자리):<input name=nickname><br>


<input type="submit" value="다음">
</form>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
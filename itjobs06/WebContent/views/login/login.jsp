<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
 	String error = (String)request.getAttribute("error"); 
	String findResult = (String)request.getAttribute("findResult");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<!-- <title>네이버 로그인</title> -->
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script>
	$(function(){
		var error = "<%=error%>";
		var findResult = "<%=findResult%>";
		
		if(error != "null"){
			alert(error);
			
			<% session.removeAttribute("error");%>
		}
		
		if(findResult != "null"){
			alert(findResult);
			<% session.removeAttribute("findResult");%>
		}
		
	});
	</script>
	



</head>
<body>

<%@ include file="/views/include/user/style.jsp" %>

<%@ include file="/views/include/user/header_nav.jsp" %>

<div class="page-header">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="inner-header">
<h3>Login</h3>
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
Login
</h3>
<form class="login-form" action="<%=contextPath%>/login.me" method=post autocomplete=off onsubmit="return validate();">
<div class="form-group">
<div class="input-icon">
<i class="lni-user"></i>
<input type="text" id="sender-email" class="form-control" name="email" placeholder="EmailAddress">
</div>
<script>
	$('#sender-email').focus()
</script>
</div>
<div class="form-group">
<div class="input-icon">
<i class="lni-lock"></i>
<input type="password" id="pw"class="form-control" name="pw" placeholder="Password">
</div>
</div>
<div class="form-group form-check">
<input type="checkbox" class="form-check-input" id="exampleCheck1">

</div>
<button class="btn btn-common log-btn">로그인</button>
</form>
<ul class="form-links">
<li class="text-center"><a href="<%=contextPath%>/joinlaw.jo">회원가입</a><a href="<%=contextPath%>/memfindpwd.me">/비밀번호 찾기</a></li>
</ul>
</div>
</div>
</div>
 </div>
</section>

<script>
	function validate(){
		 $('input[name=email]').focus(); 
			
		 var memEmail = $('#sender-email').val();
		 
		 /* 이메일 유효성검사  */
		 
		/*  var regExp = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/; 
		 
		 if(!regExp.test(memEmail)){
				alert("맞지 않은 이메일 형식입니다.");
				return false;
		 } */
		 
		 if(memEamil.trim().length==0){
			alert("이메일을 입력해주세요");
			$("#sender-email").focus();
			return false;
		}
	
		if(memEmail == ""){
			alert("이메일을 입력해 주세요");
			return false;		
		}
		
		/* 비밀번호 유효성 검사   */
		
		if($("#pw").val().trim().length==0){
			alert("비밀번호를 입력해주세요");
			$("#pw").focus();
			return false;
		}
		
			
			return true;
		
		}		
	

	
	
	


</script>


<%@ include file="/views/include/user/footer.jsp" %>



<%-- <table border=1>
	<tr>
		<th>m_no</th>
		<th>type</th>
		<th>email</th>
		<th>pw</th>
		<th>nickname</th>
		<th>enrolldate</th>
		<th>updatedate</th>
		<th>status</th>
		<th>d_count</th>
	</tr>
<%	ArrayList<Member> list=(ArrayList<Member>)request.getAttribute("list");
	for(Member m:list){ %>
	<tr>
		<td><%=m.getM_no() %></td>
		<td><%=m.getType() %></td>
		<td><%=m.getEmail() %></td>
		<td><%=m.getPw() %></td>
		<td><%=m.getNickname() %></td>
		<td><%=m.getEnroll_date() %></td>
		<td><%=m.getUpdate_date() %></td>
		<td><%=m.getStatus() %></td>
		<td><%=m.getD_count() %></td>
	</tr>
<%	} %>
</table> --%>


<!-- 네이버 간편로그인 api 

	<script type="text/javascript">
  	var naver_id_login = new naver_id_login("ybquUitRdYWWMHEEV389", "http://localhost:8888/itjobs");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("green", 1,30);
    naver_id_login.setDomain("");  
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  
  </script> -->







</body>
</html>
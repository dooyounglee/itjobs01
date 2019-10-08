<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<!-- <title>네이버 로그인</title> -->
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
	



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
<form class="login-form" action="<%=contextPath%>/login.me" method=post autocomplete=off>
<div class="form-group">
<div class="input-icon">
<i class="lni-user"></i>
<input type="text" id="sender-email" class="form-control" name="email" placeholder="Username">
</div>
<script>
	$('#sender-email').focus()
</script>
</div>
<div class="form-group">
<div class="input-icon">
<i class="lni-lock"></i>
<input type="password" class="form-control" name="pw" placeholder="Password">
</div>
</div>
<div class="form-group form-check">
<input type="checkbox" class="form-check-input" id="exampleCheck1">
<label class="form-check-label" for="exampleCheck1">Keep Me Signed In</label>
</div>
<button class="btn btn-common log-btn">Submit</button>
</form>
<ul class="form-links">
<li class="text-center"><a href="<%=contextPath%>/joinlaw.jo">Join</a></li>
</ul>
</div>
</div>
</div>
 </div>
</section>



<%@ include file="/views/include/user/footer.jsp" %>
























 <form action="<%=contextPath%>/login.me" method=post autocomplete=off> 
<!-- <input type=radio value="일반" name=type checked>일반
<input type=radio value="기업" name=type>기업<br> -->
email:<input name=email><br>
pw:<input name=pw><button>로그인</button><div id="naver_id_login" ></div>
 </form> 
<a href="<%=contextPath%>/views/login/join_law.jsp">회원가입</a>
<a href="<%=contextPath%>/views/login/find.jsp">비번찾기</a>
<script>
//$('input[name=email]').focus();
</script>

<table border=1>
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
</table>
<%@ include file="/views/include/footer.jsp" %>

<script type="text/javascript">
  	var naver_id_login = new naver_id_login("ybquUitRdYWWMHEEV389", "http://localhost:8888/itjobs");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("green", 1,30);
    naver_id_login.setDomain("");  
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  
  </script>







</body>
</html>
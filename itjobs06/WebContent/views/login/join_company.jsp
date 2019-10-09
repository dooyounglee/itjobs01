<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#check{
	border:0px;
	}

</style>

</head>
<body>

<%@ include file="/views/include/user/js.jsp" %>

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
		<form class="login-form" id="joinForm"action="<%=request.getContextPath() %>/join.me" method="post" autocomplete=off onsubmit="return validate();">
		<input type="hidden"value=2 name=type readonly>
		<div class="form-group">
		<div class="input-icon">
		<i class="lni-user"></i>
		<input type="text" class="form-control" name="nickname" placeholder="기업명(닉네임)"required>
		</div>
		</div>
		<div class="form-group">
		<div class="input-icon">
		<i class="lni-envelope"></i>
		<input type="text" class="form-control" id="email" name="email" placeholder="이메일" oninput="emailOverlapCheckCo()" required >
		<input type="text" id="check" readonly>
		</div>
		</div>
		<div class="form-group">
		<div class="input-icon">
		<i class="lni-lock"></i>
		<input type="password" class="form-control" name="pw" placeholder="비밀번호"required>
		</div>
		</div>
		<div class="form-group">
		<div class="input-icon">
		<i class="lni-unlock"></i>
		<input type="password" class="form-control" name="pw1" placeholder="비밀번호 확인"required>
		</div>
		</div>
		<input type="submit" id="submit" class="btn btn-common log-btn mt-3" value="다음" disabled>
		<p class="text-center">Already have an account?<a href="login.html"> Sign In</a></p>
		</form>
		</div>
		</div>
		</div>
		</div>
		</section>
		
		<script>
	
		function validate(){
			
		var pw = $("#joinForm input[name=pw]");
		var pw1 = $("#joinForm input[name=pw1]");
		
		
		if(pw.val() != pw1.val()){
			alert("비밀번호가 일치하지 않습니다.");
			pw1.val("").focus();
			return false;
			}
		
		}
		
		function emailOverlapCheckCo(){
			
			var email = $("#email").val();
			
			
			
			$.ajax({
					url:"<%=request.getContextPath() %>/emoverlap.me",
					data:{email:email},
					type:"get",
					success:function(result){
			
						if(result==0){	
							$("#check").attr('value','사용가능').attr('style','color:green');
							$("#submit").attr('disabled',false).attr('style','background:#00bcd4').attr('value','다음');
						}else{	
							$("#check").attr('value','사용불가능').attr('style','color:red');
							$("#submit").attr('disabled',true).attr('style','background:gray').attr('value','이메일을 확인해주세요');
						}
						
						
						
					},error:function(){
						console.log("ajax실패");
					
					}
					
			 
			 
					 });
				}
		
		</script>


<%@ include file="/views/include/user/footer.jsp" %>













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
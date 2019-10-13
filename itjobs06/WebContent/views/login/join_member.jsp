<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	
	#checkDiv{
	margin-bottom:0px;
	}

	.checkDiv2{
	width:200px;height:20px
	
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
		일반
		</h3>
		<form class="login-form" id="joinForm" action="<%=request.getContextPath() %>/join.me" method="post" autocomplete="off" >
		<input type="hidden"value=1 name=type readonly>
		<div class="form-group" id="checkDiv">
		<div class="input-icon">
		<i class="lni-user"></i>
		<input type="text" class="form-control" id="nickName" name="nickName" placeholder="닉네임(특수문자불가능)" oninput="nickOverlapCheck()" required>
		<div id="nickCheck" class = "checkDiv2"></div>
		</div>
		</div>
		<div class="form-group" id="checkDiv">
		<div class="input-icon">
		<i class="lni-envelope"></i>
		<input type="text" class="form-control" id="email" name="email" placeholder="이메일" oninput="emailOverlapCheck()" required>
		<div id="emailCheck" class = "checkDiv2"></div>
		</div>
		</div>
		<div class="form-group">
		<div class="input-icon">
		<i class="lni-lock"></i>
		<input type="password" class="form-control" name="pw" placeholder="비밀번호" required>
		</div>
		</div>
		<div class="form-group">
		<div class="input-icon">
		<i class="lni-unlock"></i>
		<input type="password" class="form-control" name="pw1" placeholder="비밀번호 확인" oninput="pwdOverlapCheck()" required>
		<div id="pwdCheck" class = "checkDiv2"></div>
		</div>
		</div>
		<input type="submit" id="submit" class="btn btn-common log-btn mt-3" value="가입" disabled>
		<p class="text-center">Already have an account?<a href="login.html"> Sign In</a></p>
		</form>
		</div>
		</div>
		</div>
		</div>
		</section>
		
		<script>
			
	 	var allCheck1 = null;
	 	var allCheck2 = null;
	 	var allCheck3 = null;
		
		
		/*  닉네임 중복체크 */
		function nickOverlapCheck(){
	
			var nickName = $("#nickName").val();
			
			var nickDiv = $(document.getElementById("nickCheck"));
			
			var regExp = /^[가-힣a-zA-Z][가-힣a-zA-Z0-9]{1,}$/;
			$.ajax({
					url:"<%=request.getContextPath() %>/nickoverlap.me",
					data:{nickName:nickName},
					type:"get",
					success:function(result1){
					
						
						if(result1==1){	
							 nickDiv.html('중복되는 닉네임이 있습니다').attr('style','color:red'); 
				allCheck1 =	$("#submit").attr('disabled',true).attr('style','background:gray').attr('value','닉네임을 확인해 주세요');
							
						}else{	
							nickDiv.html('사용가능').attr('style','color:green');
							$("#submit").attr('disabled',false).attr('style','background:#00bcd4').attr('value','가입');
							
							if(!regExp.test(nickName)){
								nickDiv.html('닉네임 양식에 맞지 않습니다').attr('style','color:green');
								$("#submit").attr('disabled',true).attr('style','background:gray').attr('value','닉네임 양식에 맞지 않습니다');
							}
						
						
						}
						
						
						
					},error:function(){
						console.log("ajax실패");
					
					}
					
			 
			 
					 });
				}
		
		
		
		
		/* 이메일 중복체크 */
		function emailOverlapCheck(){
			
			
			var email = $("#email").val();
			
			var emailDiv = $(document.getElementById("emailCheck"));
			/* 이메일 유효성검사  */
			 
			 var regExp = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/; 
			 
			 if(!regExp.test(email)){
				 emailDiv.html('이메일 형식에 맞지 않습니다').attr('style','color:red');
				$("#submit").attr('disabled',true).attr('style','background:gray').attr('value','이메일을 형식을 확인해주세요');
			 }else{
			
					$.ajax({
							url:"<%=request.getContextPath() %>/emoverlap.me",
							data:{email:email},
							type:"get",
							success:function(result){
								if(result==0){	
									emailDiv.html('사용가능').attr('style','color:green');
									$("#submit").attr('disabled',false).attr('style','background:#00bcd4').attr('value','가입');
								}else{	
									emailDiv.html('사용불가능').attr('style','color:red');
						allCheck1 = $("#submit").attr('disabled',true).attr('style','background:gray').attr('value','이메일을 확인해주세요');
								}
						
							},error:function(){
								console.log("ajax실패");
							
							}
						});
			 		}	
			 	}
			/* 비밀번호 유효성검사 */
			
			
			function pwdOverlapCheck(result){
		
				var pwdDiv = $(document.getElementById("pwdCheck"));
				
				var pw1 = $("#joinForm input[name=pw]");
				var pw2 = $("#joinForm input[name=pw1]");
				
					if(pw1.val() == pw2.val()){	
						pwdDiv.html('비밀번호와 일치 합니다').attr('style','color:green');
						$("#submit").attr('disabled',false).attr('style','background:#00bcd4').attr('value','가입');
					}else{	
						pwdDiv.html('비밀번호와 일치하지 않습니다').attr('style','color:red');
				allCheck1 = $("#submit").attr('disabled',true).attr('style','background:gray').attr('value','비밀번호를 확인해 주세요');
					}
				
			}			
				
			if(allCheck1 !=null  ){
				$("#submit").attr('disabled',true).attr('style','background:gray').attr('value','놉');
			}
			
			
		
		
		
			
		</script>
	 
	 
	 
	 
		
<%@ include file="/views/include/user/footer.jsp" %>

























<form action="<%=request.getContextPath() %>/join.me" method="post" autocomplete=off>
<input value=1 name=type readonly><br>
이메일:<input name="email" class="email"> 
<input type="button" value="인증번호 받기" class="cerBtn"><br>
<!-- 인증번호 : <input type="text" placeholder="인증번호를 입력해주세요"><br> -->
비번:<input name=pw><br>
비번확인:<input name=pw1><br>
닉네임:<input name=nickname><br>
<button>회원가입</button>
</form>
<%@ include file="/views/include/footer.jsp" %>

<!-- 회원가입 이메일인증 ajax  -->



<script>
	
	$(function(){
			
			
			$(".cerBtn").click(function(){
				
				var email =	$(".email").val();
				
			
					/* 생각해 보니 구지 db까지 안가고 키값만 받아서 가능함 하지만 만들어 논게 아까워서 우선 이렇게 처리   */	
		 			 $.ajax({
						url:"<%=request.getContextPath() %>/certify.mem",
						data:{email:email},
						type:"get",
						success:function(cerNo){		// 디비에 이메일과 임시 비밀번호 저장 후 임시 비밀번호를 result값으로 받아 
							
							
						
										 $.ajax({		//  이메일로 보내줄 ajax 실행
												url:"<%=request.getContextPath()%>/cerno.em",
												data:{email:email,cerNo:cerNo},
												type:"get",
												success:function(result1){		
													
													var input_no ="";
													var input_no1="";
													var input_no2="";
													
													 input_no = prompt("인증번호를 입력해주세요");
																 
													 	if(input_no == "ewrefdafes"){
													 		alert("인증에 성공 하셨습니다.");
													 	}else{
													 		 input_no1 = prompt("인증번호가 다릅니다. 다시 입력해 주세요");
													 			if(input_no1 == cerNo){
													 				alert("인증에 성공 하셨습니다");
													 		}else{
													 		 input_no2 = prompt("인증번호가 다릅니다. 다시 입력해주세요");
													 			if(input_no2 == cerNo){
													 				alert("인증에 성공 하셨습니다");
													 		}else{
													 			alert("이메일을 다시 한 번 확인 후 재인증 부탁 드립니다.");
													 		}
													 		}
													 	}
												
													if(input_no == null || input_no1 == null || input_no2 == null){
														request.setAttribute("email","email");
														request.setAttribute("cerNo","cerNo");
														location.href="<%=request.getContextPath()%>/cerno.de";
													}	 
																 
																 
																 
																 
																 
																 
												},error:function(){
													
													console.log("ajax실패");
												}
										
											}) 			 
										 
										 
										 
										 
										 
										 
						},error:function(){
							
							console.log("ajax실패");
						}
				
					}) 
			})
		})

		
</script>




</body>
</html>
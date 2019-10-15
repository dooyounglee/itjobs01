<%@page import="com.kh.member.model.vo.Co_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src='<%=request.getContextPath()%>/resources/naver-smarteditor2-ca95d21/demo/js/service/HuskyEZCreator.js' charset="utf-8"></script>

<!-- import jobx -->
<%@ include file="/views/include/user/style.jsp" %>
<%@ include file="/views/include/user/js.jsp" %>
<!-- End of import from jobx -->

</head>
<body>

	<header id="home" class="hero-area">
	<%@ include file="/views/include/user/header_nav.jsp" %>
	</header>

	<!-- page-header -->
	<%@ include file="/views/include/user/page_header.jsp" %>
	<script>
		var page_header_title='내 정보 수정'
	</script>
	<!-- end of page-header -->


	<!-- content -->
	<div id="content">
	
		<!-- container -->
		<div class="container">
			
			<!-- row -->
			<div class="row">
				
				<!-- left -->
				<%@ include file="/views/include/user/mypage_menu.jsp" %>
				<!-- End of left -->
				
				<!-- right  -->
				<div class="col-md-8 col-sm-8 col-xs-12">
					<div class="job-alerts-item">
						<h3 class="alerts-title">정보 변경</h3>
						<form class="form" action="changePw.me" method="post" autocomplete=off>
							<div class="form-group is-empty">
								<label class="control-label">현재 비밀번호*</label> <input
									class="form-control" type="password" name="pw"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">새로운 비밀번호*</label> <input
									class="form-control" type="password" id=newPw name="newPw"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">새로운 비밀번호 확인*</label> <input
									class="form-control" type="password" id=checkPw name="checkPw"> <span
									class="material-input"></span>
							</div>
							<button id="submit" class="btn btn-common" onclick="return aaa()">Save Change</button>
						</form>
<script>
	function aaa(){
		if($('#newPw').val()!=$('#checkPw').val()){
			alert("비번이 일치하지 않아요.")
			return false;
		}
	}
</script>
						<hr>
						<%	Co_Info co=null;
							if(mem.getType().equals("2")){
								co=(Co_Info)session.getAttribute("co");
							}%>
						<%	if(mem.getType().equals("2")){ %>
						<form class="form-ad" action="update.me" method="post" enctype="multipart/form-data" autocomplete=off>
						<%	}else if(mem.getType().equals("1")){ %>
						<form class="form-ad" action="update.me" method="post" autocomplete=off>
						<%	} %>
						<h3 class="alerts-title">정보 변경</h3>
							<%	String nickname="";
								if(mem.getType().equals("2")){
									nickname=mem.getNickname().substring(0,mem.getNickname().indexOf("("));
								}else if(mem.getType().equals("1")){
									nickname=mem.getNickname();
								}
								%>
							<div class="form-group is-empty">
								<label class="control-label">닉네임 변경</label> <input
									class="form-control" type="text" name="nickname" value="<%=nickname%>"> <span
									class="material-input"></span>
							</div>
							<%	if(mem.getType().equals("2")){ %>
							<div class="form-group is-empty">
								<label class="control-label">사업자등록번호</label> <input
									class="form-control" type="text" name="regnum" value="<%=co.getRegNum()%>"> <span
									class="material-input"></span>
							</div>
							<%	String[] address=co.getAddress().split("\\+"); %>
							<div class="form-group">
								<div class="row">
									<div class="col-md-3">
										<label class="control-label" >우편번호</label>
										<input type="text" class="form-control" id="sample3_postcode" name="sample3_postcode" value="<%=address[0] %>" placeholder="우편번호">
									</div>
									<div class="col-md-3">
									<label class="control-label">우편번호버튼</label>
									<input type="button"
										class="btn btn-common" value="우편번호 찾기" onclick="sample3_execDaumPostcode()">
									</div>
									<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
										<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
									</div>
									<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
									<script src="resources/util/address_api.js"></script>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
									<label class="control-label">주소</label> <input type="text"
										class="form-control" id="sample3_address" name="sample3_address" value="<%=address[1] %>" placeholder="주소">
									</div>
									<div class="col-md-6">
									<label class="control-label">상세주소</label> <input type="text"
										class="form-control" id="sample3_detailAddress" name="sample3_detailAddress" value="<%=address[2] %>" placeholder="상세주소">
									<input type="hidden" id="sample3_extraAddress" placeholder="참고항목">
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="button-group">
									<div class="action-buttons">
										<div class="upload-button">
											<button class="btn btn-common">사업자등록증</button>
											<input id="cover_img_file_1" name="file1" type="file" onchange="loadImg(this,1)">
											<input type="hidden" name="file1_file" value="<%=co.getFile()%>">
											<input type="hidden" name="file1_path" value="<%=co.getPath()%>">
										</div>
										<div><%=co.getFile() %></div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="button-group">
									<div class="action-buttons">
										<div class="upload-button">
											<button class="btn btn-common">로고</button>
											<input id="cover_img_file_2" name="file2"  type="file" onchange="loadImg(this,2)">
											<img id="titleImg2" src="resources/cofileupload/<%=co.getLogofile()%>" style="width:200px;"></img>
											<input type="hidden" name="file2_file" value="<%=co.getLogofile()%>">
											<input type="hidden" name="file2_path" value="<%=co.getLogopath()%>">
										</div>
									</div>
								</div>
							</div>
<script>
	function loadImg(value,num){
		if(value.files && value.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				 $("#titleImg"+num).attr("src", e.target.result); // data:URL
			}
			reader.readAsDataURL(value.files[0]);
		}
	}
	
	
</script>
							<div class="form-group is-empty">
								<label class="control-label">담당자명</label> <input
									class="form-control" type="text" name="name" value="<%=co.getName()%>"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">담당자폰</label> <input
									class="form-control" type="text" name="phone" value="<%=co.getPhone()%>"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">대표자명</label> <input
									class="form-control" type="text" name="ceo" value="<%=co.getCeo()%>"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">대표자폰</label> <input
									class="form-control" type="text" name="co_phone" value="<%=co.getCo_phone()%>"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">사업내용</label> <input
									class="form-control" type="text" id="comment1" name="descript" value="<%=co.getDescript()%>"> <span
									class="material-input"></span>
							</div>
<script>
var oEditors = [];
	
nhn.husky.EZCreator.createInIFrame({
 	 oAppRef: oEditors,
 	 elPlaceHolder: document.getElementById('comment1'),
  	 sSkinURI: "<%=contextPath%>/resources/naver-smarteditor2-ca95d21/demo/SmartEditor2Skin.html",  
     fCreator: "createSEditor2",
     htParams:{
    	 bUseToolbar:false, // 툴바 사용여부
    	 bUseVerticalResizer:false, // 크기조절바 사용여부
    	 bUseModeChanger : false,	// 모드 탭(Editor | HTML | TEXT) 사용 여부
     }
});
</script>	
							<div class="form-group is-empty">
								<label class="control-label">설립일</label> <input
									class="form-control" type="date" name="birth_date" value="<%=co.getBirth_date().split(" ")[0]%>"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">사원수</label> <input
									class="form-control" type="text" name="memsum" value="<%=co.getMemsum()%>"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">매출액</label> <input
									class="form-control" type="text" name="revenue" value="<%=co.getRevenue()%>"> <span
									class="material-input"></span>
							</div>
							<div class="form-group is-empty">
								<label class="control-label">연혁</label> <input
									class="form-control" type="text" id="comment2" name="history" value="<%=co.getHistory()%>"> <span
									class="material-input"></span>
							</div>
<script>
var oEditors = [];
	
nhn.husky.EZCreator.createInIFrame({
 	 oAppRef: oEditors,
 	 elPlaceHolder: document.getElementById('comment2'),
  	 sSkinURI: "<%=contextPath%>/resources/naver-smarteditor2-ca95d21/demo/SmartEditor2Skin.html",  
     fCreator: "createSEditor2",
     htParams:{
    	 bUseToolbar:false, // 툴바 사용여부
    	 bUseVerticalResizer:false, // 크기조절바 사용여부
    	 bUseModeChanger : false,	// 모드 탭(Editor | HTML | TEXT) 사용 여부
     }
});
</script>
							<div class="form-group is-empty">
								<label class="control-label">복지</label> <input
									class="form-control" type="text" id="comment3" name="welfare" value="<%=co.getWelfare()%>"> <span
									class="material-input"></span>
							</div>
<script>
var oEditors = [];
	
nhn.husky.EZCreator.createInIFrame({
 	 oAppRef: oEditors,
 	 elPlaceHolder: document.getElementById('comment3'),
  	 sSkinURI: "<%=contextPath%>/resources/naver-smarteditor2-ca95d21/demo/SmartEditor2Skin.html",  
     fCreator: "createSEditor2",
     htParams:{
    	 bUseToolbar:false, // 툴바 사용여부
    	 bUseVerticalResizer:false, // 크기조절바 사용여부
    	 bUseModeChanger : false,	// 모드 탭(Editor | HTML | TEXT) 사용 여부
     }
});
</script>
							<%	} %>
							<button id="submit" class="btn btn-common">Save Change</button>
						</form>
					</div>
				</div>
				<!-- End of right -->
				
			</div>
			<!-- End of row -->
			
		</div>
		<!-- End of container -->
	</div>
	<!-- End of content -->
	
	
	
	
	
	
	


	
	<%-- <%	if(mem.getType().equals("3")){
		Co_Info co=(Co_Info)session.getAttribute("co");%>
	${co }<br>
	사업자등록번호:<input name=regnum value="<%=co.getRegNum()%>"><br>
	담당자이름:<input name=name value="<%=co.getName()%>"><br>
	담당자이름:<input name=phone value="<%=co.getPhone()%>"><br>
	
	<!-- 주소api -->
	<%	String[] address=co.getAddress().split("\\+"); %>
	<input type="text" id="sample3_postcode" name="sample3_postcode" value="<%=address[0]%>" placeholder="우편번호">
	<input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br>
	<input type="text" id="sample3_address" name="sample3_address" value="<%=address[1]%>" placeholder="주소">
	<input type="text" id="sample3_detailAddress" name="sample3_detailAddress" value="<%=address[2]%>" placeholder="상세주소">
	<input type="hidden" id="sample3_extraAddress" placeholder="참고항목">
	
	<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
	</div>
	<br>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    function sample3_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample3_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample3_postcode').value = data.zonecode;
                document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
</script>
	<!-- end of 주소api -->
	
	대표자명:<input name=ceo value="<%=co.getCeo()%>"><br>
	대표번호:<input name=co_phone value="<%=co.getCo_phone()%>"><br>
	사업내용:<input name=descript value="<%=co.getDescript()%>"><br>
	설립일:<input name=birth_date name=regnum value="<%=co.getBirth_date()%>"><br>
	사원수:<input name=memsum value="<%=co.getMemsum()%>"><br>
	매출액:<input name=revenue value="<%=co.getRevenue()%>"><br>
	연혁:<input name=history value="<%=co.getHistory()%>"><br>
	복지:<input name=welfare value="<%=co.getWelfare()%>"><br>
	<%	} %> --%>

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

	<!-- footer -->
		<%@ include file="/views/include/user/footer.jsp" %>
	<!-- End of footer -->
	
	<!-- back to top button -->
		<a href="#" class="back-to-top"> <i class="lni-arrow-up"></i></a>
	<!-- End of back to top button -->
	
	<!-- 뭔지 모르겠어 -->
	<div id="preloader">
		<div class="loader" id="loader-1"></div>
	</div>
	<!-- 뭔지 모르겠어 -->


	<!-- import of jobx -->
	
	<!-- End of import of jobx -->

<script>
	$('.inner-header').children('h3').text(page_header_title)
</script>
</body>
</html>
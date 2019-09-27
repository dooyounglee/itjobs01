<%@page import="com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath=request.getContextPath();
	Member mem=(Member)session.getAttribute("mem");
	String head=request.getParameter("head");
	if(head!=null){
		session.setAttribute("head", head);
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
${mem }
${msg }
<h1><a href="<%=contextPath %>">ITJobs</a></h1>
현재접속자수 : <span id=userCounting></span>명
<hr>공통 
<a href="<%=contextPath%>/list.bo?head=free">게시판</a>
<a href="<%=contextPath%>/list.bo?head=free">자유게시판(질문포함)</a>
<a href="<%=contextPath%>/list.bo?head=study">스터디</a>
<a href="<%=contextPath%>/list.bo?head=project">프로젝트</a>
<a href="<%=contextPath%>/list.bo?head=qna">공지사항</a>
<a href="<%=contextPath%>/list.bo?head=form">서식</a>
<a href="<%=contextPath%>/list.qu">문의사항</a>
신고하기(는 각 부분에 버튼으로)
공고검색창
인재검색창
기업검색창?
<hr>공통
<a href="<%=contextPath %>/views/login/join_law.jsp">회원가입</a>
<a href="<%=contextPath %>/login.me">로그인</a>
<a href="<%=contextPath %>/logout.me">로그아웃</a><br>
<hr>일반
<a href="<%=contextPath%>/views/mypage/myinfo.jsp">내 정보 수정</a>
<a href="<%=contextPath%>/views/mypage/applyList.jsp">지원리스트</a>
<a href="<%=contextPath%>/myCompanyList.like">관심기업</a>
<a href="<%=contextPath%>/myNotificationList.like">관심공고</a>
<a href="<%=contextPath%>/views/mypage/resume/list.jsp">이력서 관리</a>
<a href="<%=contextPath%>/mylist.qu">나의 문의</a>
+지원하기
<hr>기업
<a href="<%=contextPath%>/views/mypage/myinfo.jsp">내 정보 수정</a>
<a href="<%=contextPath%>/views/mypage/notice/list.jsp">공고리스트</a>
<a href="<%=contextPath%>/myResumeList.like">관심인재</a>
<a href="<%=contextPath%>/mylist.qu">나의 문의</a>
<hr>관리자
<a href="<%=contextPath%>/boardList.ad">게시판관리</a>
<a href="<%=contextPath%>/replyList.ad">댓글관리</a>
<a href="<%=contextPath%>/memberList.ad">회원관리</a>
<a href="<%=contextPath%>/noticeList.ad">공고관리</a>
<a href="<%=contextPath%>/list.qu">문의관리</a>
<a href="<%=contextPath%>/list.de">신고관리</a>
<hr>
<script type="text/javascript">
    var webSocket = new WebSocket('ws://<%=request.getServerName()%>:<%=request.getServerPort()%>/itjobs/userCounting');
    webSocket.onerror = function(event) {
      onError(event)
    };
    webSocket.onopen = function(event) {
      onOpen(event)
    };
    webSocket.onmessage = function(event) {
      onMessage(event)
    };
    webSocket.onclose=function(event){
    	onClose(event)
    }
    function onMessage(event) {//다른사람 동작->나한테 발생
        //textarea.value += "상대 : " + event.data + "\n";
		//alert("다른사람이 보낸: "+event.data)
		$('#userCounting').text(event.data);
		console.log(event.data)
    }
    function onOpen(event) {
        //textarea.value += "연결 성공\n";
        console.log("연결성공")
        webSocket.send("어차피 안나올 값"); 
        console.log("접속자수")
    }
    function onError(event) {
      alert(event.data);
    }
    function onClose(event){
    	console.log("닫힘")
    	webSocket.send("어차피 안나올 값"); 	
    }
  </script>
</body>
</html>
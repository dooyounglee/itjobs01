<%@page import="com.kh.question.model.vo.Question"%>
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

<h1>문의보기</h1>
${q }<br>
<%	Question q=(Question)request.getAttribute("q");%>
내용:<%=q.getContents() %><br>
<%	if(q.getStatus().equals("Y")){ %>
답변:<%=q.getAnswer() %><br>
<%	}
	if(mem!=null && mem.getM_no()==q.getM_no()){ %>
<button>수정</button>
<button>삭제</button>
<%	} %>
<button onclick="location.href='<%=request.getContextPath()%>/list.qu'">목록</button>
<%	if(mem!=null && mem.getType().equals("admin") && q.getStatus().equals("N")){%>
<button onclick="answer()">답변하기</button>(누르면 밑에 창 뜨고 바로 쓸수있게)
<form id=answerForm action="answer.qu" method=post autocomplete=off style="display:none">
<input type=hidden name="qno" value="<%=q.getQ_no() %>">
답변:<input name=answer><br>
<button>답변등록</button>
</form>
<script>
	function answer(){
		$('#answerForm').toggle();
	}
</script>
<%	} %>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
<%@page import="com.kh.board.model.vo.Board"%>
<%@page import="com.kh.notification.model.vo.Notification"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function search(){
	$('#search').toggle()
}
</script>
<style>
table{
	margin:auto;
}
</style>
</head>
<body>
	<%@ include file="/views/include/header.jsp" %>
	
	<h1>메인</h1> 
	<input><button>검색</button>
	<button onclick="search()">상세검색</button>
	<table id=search border=1 style="display:none;">
	<tr>
		<th>언어</th>
		<th>framework/library</th>
		<th>사용기간</th>
		<th>프로젝트경험</th>
		<th>플랫폼</th>
		<th>자리</th>
	</tr>
	<tr>
		<td>
			<input type=checkbox />java<br>
			<input type=checkbox />javascript<br>
			<input type=checkbox />C<br>
			<input type=checkbox />C++<br>
			<input type=checkbox />C#<br>
			<input type=checkbox />VBA<br>
			<input type=checkbox />python<br>
			<input type=checkbox />php<br>
			<input type=checkbox />asp<br>
		</td>
		<td>
			<input type=checkbox />spring<br>
			<input type=checkbox />jsp&servlet<br>
			<input type=checkbox />vue<br>
			<input type=checkbox />react<br>
			<input type=checkbox />angular<br>
			<input type=checkbox />tensorflow<br>
			<input type=checkbox />keras<br>
		</td>
		<td>
			<input type=checkbox />1년미만<br>
			<input type=checkbox />2년미만<br>
			<input type=checkbox />3년미만<br>
			<input type=checkbox />4년미만<br>
			<input type=checkbox />4년이상<br>
		</td>
		<td>
			<input type=checkbox />개인<br>
			<input type=checkbox />중소기업<br>
			<input type=checkbox />대기업<br>
		</td>
		<td>
			<input type=checkbox />웹<br>
			<input type=checkbox />iOS<br>
			<input type=checkbox />Android<br>
			<input type=checkbox />AI<br>
			<input type=checkbox />딥러닝<br>
			<input type=checkbox />응용sw<br>
		</td>
		<td>
			<input type=checkbox />신입<br>
			<input type=checkbox />팀원급<br>
			<input type=checkbox />팀장급<br>
			<input type=checkbox />프리렌서<br>
		</td>
	</tr>
</table>

<fieldset>
<legend style="text-align:center">최신공고</legend>
<table border=1>
	<tr>
		<th>co_no</th>
		<th>공고제목</th>
		<th>마감날짜</th>
		<th>언어</th>
	</tr>
	<%-- 
	<%	ArrayList<Notification> nlist=(ArrayList<Notification>)request.getAttribute("nlist");
		for(Notification n:nlist){%>
	<tr>
		<td><%=n.getCo_no() %></td>
		<td><%=n.getTitle() %></td>
		<td><%=n.getEnd_date() %></td>
		<td><%=n.getP_language() %></td>
	</tr>
	<%	} %> --%>
</table>
</fieldset>
<fieldset>
<legend style="text-align:center">마감임박</legend>
<table border=1>
	<tr>
		<th>co_no</th>
		<th>공고제목</th>
		<th>마감날짜</th>
		<th>언어</th>
	</tr>
	<%-- <%	ArrayList<Notification> endlist=(ArrayList<Notification>)request.getAttribute("endlist");
		for(Notification n:endlist){%>
	<tr>
		<td><%=n.getCo_no() %></td>
		<td><%=n.getTitle() %></td>
		<td><%=n.getEnd_date() %></td>
		<td><%=n.getP_language() %></td>
	</tr>
	<%	} %> --%>
</table>
</fieldset>

<!-- 공지사항,자유게시판 -->
<div>
	<div style="display:inline-block;width:49%;box-sizing:border-box;">
		<fieldset>
		<legend style="text-align:center">공지사항</legend>
		<table border=1>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>모집기간</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<%-- <%	ArrayList<Board> nolist=(ArrayList<Board>)request.getAttribute("nolist");
				for(Board no:nolist){%>
			<tr>
				<td><%=no.getB_no() %></td>
				<td><%=no.getTitle() %></td>
				<td><%=no.getM_no() %></td>
				<td><%=no.getTime() %></td>
				<td><%=no.getEnroll_date() %></td>
				<td><%=no.getCount() %></td>
			</tr>
			<%	} %> --%>
		</table>
		</fieldset>
	</div>
	<div style="display:inline-block;width:49%;box-sizing:border-box;">
		<fieldset>
		<legend style="text-align:center">스터디</legend>
		<table border=1>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>모집기간</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<%-- <%	ArrayList<Board> freelist=(ArrayList<Board>)request.getAttribute("freelist");
				for(Board s:freelist){%>
			<tr>
				<td><%=s.getB_no() %></td>
				<td><%=s.getTitle() %></td>
				<td><%=s.getM_no() %></td>
				<td><%=s.getTime() %></td>
				<td><%=s.getEnroll_date() %></td>
				<td><%=s.getCount() %></td>
			</tr>
			<%	} %> --%>
		</table>
		</fieldset>
	</div>
</div>

<!-- 프로젝트, 스터디 -->
<div>
	<div style="float:left;">
		<fieldset>
		<legend style="text-align:center">프로젝트</legend>
		<table border=1>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>모집기간</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<%-- <%	ArrayList<Board> plist=(ArrayList<Board>)request.getAttribute("plist");
				for(Board p:plist){%>
			<tr>
				<td><%=p.getB_no() %></td>
				<td><%=p.getTitle() %></td>
				<td><%=p.getM_no() %></td>
				<td><%=p.getTime() %></td>
				<td><%=p.getEnroll_date() %></td>
				<td><%=p.getCount() %></td>
			</tr>
			<%	} %> --%>
		</table>
		</fieldset>
	</div>
	<div style="float:left;">
		<fieldset>
		<legend style="text-align:center">스터디</legend>
		<table border=1>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>모집기간</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<%-- <%	ArrayList<Board> slist=(ArrayList<Board>)request.getAttribute("slist");
				for(Board s:slist){%>
			<tr>
				<td><%=s.getB_no() %></td>
				<td><%=s.getTitle() %></td>
				<td><%=s.getM_no() %></td>
				<td><%=s.getTime() %></td>
				<td><%=s.getEnroll_date() %></td>
				<td><%=s.getCount() %></td>
			</tr>
			<%	} %> --%>
		</table>
		</fieldset>
	</div>
</div>
<br clear="both">
	<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
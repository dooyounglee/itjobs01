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
		<th>기업이름</th>
		<th>정보들.... 뭘 넣지</th>
		<th>공고날짜</th>
		<th>마감날짜</th>
		<th>지역</th>
		<th>근무형태</th>
		<th>지원자격</th>
	</tr>
	<tr>
		<td>kh정보교육원</td>
		<td>??</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>서울</td>
		<td>정규직</td>
		<td>학력무관/경력무관</td>
	</tr>
	<tr>
		<td>kh정보교육원</td>
		<td>??</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>서울</td>
		<td>정규직</td>
		<td>학력무관/경력무관</td>
	</tr>
	<tr>
		<td>kh정보교육원</td>
		<td>??</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>서울</td>
		<td>정규직</td>
		<td>학력무관/경력무관</td>
	</tr>
	<tr>
		<td>kh정보교육원</td>
		<td>??</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>서울</td>
		<td>정규직</td>
		<td>학력무관/경력무관</td>
	</tr>
	<tr>
		<td>kh정보교육원</td>
		<td>??</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>서울</td>
		<td>정규직</td>
		<td>학력무관/경력무관</td>
	</tr>
</table>
</fieldset>
<fieldset>
<legend style="text-align:center">마감임박</legend>
<table border=1>
	<tr>
		<th>기업이름</th>
		<th>정보들.... 뭘 넣지</th>
		<th>공고날짜</th>
		<th>마감날짜</th>
		<th>지역</th>
		<th>근무형태</th>
		<th>지원자격</th>
	</tr>
	<tr>
		<td>kh정보교육원</td>
		<td>??</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>서울</td>
		<td>정규직</td>
		<td>학력무관/경력무관</td>
	</tr>
	<tr>
		<td>kh정보교육원</td>
		<td>??</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>서울</td>
		<td>정규직</td>
		<td>학력무관/경력무관</td>
	</tr>
	<tr>
		<td>kh정보교육원</td>
		<td>??</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>서울</td>
		<td>정규직</td>
		<td>학력무관/경력무관</td>
	</tr>
	<tr>
		<td>kh정보교육원</td>
		<td>??</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>서울</td>
		<td>정규직</td>
		<td>학력무관/경력무관</td>
	</tr>
	<tr>
		<td>kh정보교육원</td>
		<td>??</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>서울</td>
		<td>정규직</td>
		<td>학력무관/경력무관</td>
	</tr>
</table>
</fieldset>
<fieldset>
<legend style="text-align:center">프로젝트</legend>
<table border=1>
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>등록날짜</th>
		<th>수정날짜</th>
		<th>조회수</th>
	</tr>
	<tr>
		<td>1</td>
		<td>제목01[4]</td>
		<td>나</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>21</td>
	</tr>
	<tr>
		<td>2</td>
		<td>제목02[7]</td>
		<td>너</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>56</td>
	</tr>
	<tr>
		<td>1</td>
		<td>제목01[4]</td>
		<td>나</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>21</td>
	</tr>
	<tr>
		<td>2</td>
		<td>제목02[7]</td>
		<td>너</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>56</td>
	</tr>
	<tr>
		<td>1</td>
		<td>제목01[4]</td>
		<td>나</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>21</td>
	</tr>
	<tr>
		<td>2</td>
		<td>제목02[7]</td>
		<td>너</td>
		<td>2019.12.05 23:59</td>
		<td>2019.12.05 23:59</td>
		<td>56</td>
	</tr>
</table>
</fieldset>

	<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
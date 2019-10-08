<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- import jobx -->
<%@ include file="/views/include/user/style.jsp" %>
<!-- End of import from jobx -->

<!-- import of jobx -->
<%@ include file="/views/include/user/js.jsp" %>
<!-- End of import of jobx -->
</head>
<body>

	<header id="home" class="hero-area">
	<%@ include file="/views/include/user/header_nav.jsp" %>
	</header>

	<!-- page-header -->
	<%@ include file="/views/include/user/page_header.jsp" %>
	<script>
		var page_header_title='문의하기'
	</script>
	<!-- end of page-header -->

</head>
<body>

<h1>문의하기</h1>
<form action="<%=request.getContextPath()%>/insert.qu" method="post" autocomplete=off>
내용:<input name=contents><br>
<button>등록</button>
</form>
<button onclick="history.back()">취소</button>
<%@ include file="/views/include/footer.jsp" %>


</body>
</html>
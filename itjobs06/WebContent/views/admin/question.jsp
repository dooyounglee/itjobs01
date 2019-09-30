<%@page import="com.kh.question.model.vo.Question"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/views/include/style.jsp" %>
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
	
	<!-- Side bar -->
	<%@ include file="/views/include/sidebar.jsp" %>
	<!-- End of Sidebar -->
	
	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
	
	<!-- Main Content -->
	<div id="content">
	
	<!-- Topbar -->
        <%@ include file="/views/include/topbar.jsp" %>
    <!-- End of Topbar -->
    
    <!-- Begin Page Content -->
    <div class="container-fluid">
    
    	<!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h1 mb-0 text-gray-800">문의 관리</h1>
          </div>
          
          
<select>
	<option>제목</option>
	<option>작성자</option>
	<option>내용</option>
</select>
<input>
<button>검색</button>
<table class="table table-hover table-sm">
	<tr>
		<th><input type=checkbox></th>
		<th>내용</th>
		<th>작성자</th>
		<th>등록일</th>
		<th>처리일</th>
		<th>상태</th>
	</tr>
	<%	ArrayList<Question> list=(ArrayList<Question>)request.getAttribute("list");
		for(Question q:list){%>
	<tr>
		<td><input type=checkbox></td>
		<td><a href="get.qu.ad?qno=<%=q.getQ_no()%>"><%=q.getContents() %></a></td>
		<td><%=q.getM_no() %></td>
		<td><%=q.getEnroll_date() %></td>
		<td><%=q.getEnd_date() %></td>
		<td><%=q.getStatus() %></td>
	</tr>
	<%	} %>
</table>
	
	</div>
    <!-- End of Page Content -->
    
	</div>
	<!-- End of Main Content -->
	
	<!-- Footer -->
		<%@ include file="/views/include/footer.jsp" %>
	<!-- End of Footer -->
	
	</div>
	<!-- End of Content Wrapper -->
	
	</div>
	<!-- End of Page Wrapper -->
<%@ include file="/views/include/js.jsp" %>
<script>
	$('#accordionSidebar').children('li.nav-item').eq(6).addClass('active');
</script>
</body>
</html>
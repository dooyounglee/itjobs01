<%@page import="com.kh.member.model.vo.Member"%>
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
            <h1 class="h1 mb-0 text-gray-800">Admin Main</h1>
            
             <!-- Search -->
	          <form class="d-none d-sm-inline-block form-inline mr-0 ml-md-3 my-2 my-md-0 mw-100 navbar-search">
	            <div class="input-group">
	            <select class="form-control bg-light border-0 small">
				  <option selected>제목</option>
				  <option value="1">작성자</option>
				  <option value="2">내용</option>
				  <option value="3">Three</option>
				</select>
	              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
	              <div class="input-group-append">
	                <button class="btn btn-primary" type="button">
	                  <i class="fas fa-search fa-sm"></i>
	                </button>
	              </div>
	            </div>
	          </form>
          </div>
	
	


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
	$('#accordionSidebar').children('li.nav-item').eq(0).addClass('active');
</script>
</body>
</html>
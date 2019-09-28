<%@page import="com.kh.declare.model.vo.Declare"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#listArea,#viewArea{
		display:inline-block;
		vertical-align:top;
	}
	#listArea{
		width:60%;
	}
	#viewArea{
		width:30%;
	}
</style>
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
            <h1 class="h1 mb-0 text-gray-800">게시글 신고 관리</h1>
          </div>
          

<div id="manageBoard">
	<div id="listArea">
		<table class="table table-hover table-sm">
			<thead>
				<tr>
					<th><input type=checkbox></th>
					<th>no</th>
					<th>b</th>
					<th>m</th>
					<th>content</th>
					<th>등록일</th>
					<th>처리일</th>
					<th>상태</th>
					<th>보기</th>
					<th>처리</th>
				</tr>
			</thead>
			<tbody>
				<%	ArrayList<Declare> blist=(ArrayList<Declare>)request.getAttribute("blist");
					for(Declare m:blist){%>
				<tr>
					<td><input type=checkbox data-mno="<%=m.getM_no()%>"></td>
					<td><%=m.getDe_no() %></td>
					<td><%=m.getB_no() %></td>
					<td><%=m.getM_no() %></td>
					<td><%=m.getContents() %></td>
					<td><%=m.getEnroll_date() %></td>
					<td><%=m.getComp_date() %></td>
					<td><%=m.getStatus() %></td>
					<td><button onclick="view(<%=m.getB_no()%>)">보기</button></td>
					<td><button>처리완료</button></td>
				</tr>
				<%	} %>
			</tbody>
		</table>
	</div>
	<div id="viewArea">
		내용이 보여질꺼야
	</div>
</div>
<script>
	function view(b_no){
		$('#viewArea').load("<%=request.getContextPath()%>/get.bo.ad?bno="+b_no+" #content")
	}
</script>
<hr>
<h1>게시판 신고</h1>
<table border=1>
	<thead>
		<tr>
			<th><input type=checkbox></th>
			<th>no</th>
			<th>b</th>
			<th>re</th>
			<th>noti</th>
			<th>m</th>
			<th>content</th>
			<th>등록일</th>
			<th>처리일</th>
			<th>상태</th>
		</tr>
	</thead>
	<tbody>
		<%	ArrayList<Declare> rlist=(ArrayList<Declare>)request.getAttribute("rlist");
			for(Declare m:rlist){%>
		<tr>
			<td><input type=checkbox data-mno="<%=m.getM_no()%>"></td>
			<td><%=m.getDe_no() %></td>
			<td><%=m.getB_no() %></td>
			<td><%=m.getRe_no() %></td>
			<td><%=m.getNoti_no() %></td>
			<td><%=m.getM_no() %></td>
			<td><%=m.getContents() %></td>
			<td><%=m.getEnroll_date() %></td>
			<td><%=m.getComp_date() %></td>
			<td><%=m.getStatus() %></td>
		</tr>
		<%	} %>
	</tbody>
</table>
<hr>
<h1>공고 신고</h1>
<table border=1>
	<thead>
		<tr>
			<th><input type=checkbox></th>
			<th>no</th>
			<th>b</th>
			<th>re</th>
			<th>noti</th>
			<th>m</th>
			<th>content</th>
			<th>등록일</th>
			<th>처리일</th>
			<th>상태</th>
		</tr>
	</thead>
	<tbody>
		<%	ArrayList<Declare> nlist=(ArrayList<Declare>)request.getAttribute("nlist");
			for(Declare m:nlist){%>
		<tr>
			<td><input type=checkbox data-mno="<%=m.getM_no()%>"></td>
			<td><%=m.getDe_no() %></td>
			<td><%=m.getB_no() %></td>
			<td><%=m.getRe_no() %></td>
			<td><%=m.getNoti_no() %></td>
			<td><%=m.getM_no() %></td>
			<td><%=m.getContents() %></td>
			<td><%=m.getEnroll_date() %></td>
			<td><%=m.getComp_date() %></td>
			<td><%=m.getStatus() %></td>
		</tr>
		<%	} %>
	</tbody>
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
	var dlendud=$('#accordionSidebar').children('li').eq(5).children();
	dlendud.eq(0).removeClass('collapsed').attr('aria-expanded','true')
	dlendud.eq(1).addClass('show').children('div').children('a').eq(0).addClass('active')
</script>
</body>
</html>
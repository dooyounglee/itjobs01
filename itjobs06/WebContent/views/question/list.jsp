<%@page import="com.kh.question.model.vo.Question"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
   .col-md-3{
   width:10px;
   }
</style>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- import jobx -->
<%@ include file="/views/include/user/style.jsp" %>
<!-- End of import from jobx -->

</head>
<body>


   <header id="home" class="hero-area">
   <%@ include file="/views/include/user/header_nav.jsp" %>
   </header>

   <!-- page-header -->
   <%@ include file="/views/include/user/page_header.jsp" %>
   <script>
      var page_header_title='문의사항'
   </script>
   <!-- end of page-header -->





<div id="faq" class="section pb-45">

<div class="container">

<div class="row">
   
            <!-- left -->
            <%@ include file="/views/include/user/mypage_menu.jsp" %>
            <!-- End of left -->
            
   
   
   <div class="col-lg-8 col-md-12 col-xs-12">
   <div class="job-alerts-item">
   <h3 class="alerts-title">나의 문의</h3>
   <div class="col-md-3">
   <p><span class="full-time"><a href="<%= contextPath %>/insertForm.qu">문의하기</a></span></p>
   </div>
   <div class="alerts-list">
   <div class="row">
   <div >
   
   <p><input type="checkbox"></p>
   </div>
   
   <div class="col-md-3">
   <p>내용</p>
   </div>
   <div class="col-md-3">
   <p>작성자</p>
   </div>
   <div class="col-md-3">
    <p>등록일</p>
   </div>
   <div class="col-md-3">
    <p>처리일</p>
   </div>
   <div class="col-md-3">
    <p>상태</p>
   </div>
   </div>
   </div>


   
   <%   ArrayList<Question> list =(ArrayList<Question>)request.getAttribute("list");
      for(Question q:list){%>
   <div class="alerts-content">
   <div class="row">
   
   <div class="col-md-3">
   <p><input type="checkbox"></p>
   </div>
   <div class="col-md-3">
   <p><a href="get.qu?qno=<%=q.getQ_no()%>"><%=q.getContents() %></a></p>
   </div>
   <div class="col-md-3">
   <p><%=q.getM_no() %></p>
   </div>
   <div class="col-md-3">
   <p><%=q.getEnroll_date() %></p>
   </div>
   <div class="col-md-3">
   <p><%=q.getEnd_date() %></p>
   </div>
   <div class="col-md-3">
   <p><%=q.getStatus() %></p>
   </div>
   </div>
   </div>
<%} %>   
   

</div>
</div>
</div>
</div> 
   </div>
   <!--container  -->
   </div>
   <!--end container -->






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
   <%@ include file="/views/include/user/js.jsp" %>
   <!-- End of import of jobx -->
   
<script>
   $('.inner-header').children('h3').text(page_header_title)
</script>


<!-- -------------------------------------------- -->


<h1>문의 게시판</h1>
<button onclick="location.href='<%=request.getContextPath()%>/views/question/write.jsp'">문의하기</button>
<select>
   <option>제목</option>
   <option>작성자</option>
   <option>내용</option>
</select>
<input>
<button>검색</button>
<table border=1>
   <tr>
      <th><input type=checkbox></th>
      <th>내용</th>
      <th>작성자</th>
      <th>등록일</th>
      <th>처리일</th>
      <th>상태</th>
   </tr>
<%--    <%   ArrayList<Question> list1 =(ArrayList<Question>)request.getAttribute("list");
      for(Question q:list1){%>
   <tr>
      <td><input type=checkbox></td>
      <td><a href="get.qu?qno=<%=q.getQ_no()%>"><%=q.getContents() %></a></td>
      <td><%=q.getM_no() %></td>
      <td><%=q.getEnroll_date() %></td>
      <td><%=q.getEnd_date() %></td>
      <td><%=q.getStatus() %></td>
   </tr>
   <%   } %> --%>
</table>
<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
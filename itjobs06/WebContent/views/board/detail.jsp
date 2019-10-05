<%@page import="com.kh.board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Board b = (Board)request.getAttribute("b");
	Board prev = (Board)request.getAttribute("prev");
	Board next = (Board)request.getAttribute("next");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        width:900px;
        height:600px;
        background:lightpink;
        color:black;
        margin-left:auto;
        margin-right:auto;
        margin-top:50px;
    
    }
    #inner{
        width:700px;
        height:600px;
        background:white;
        margin-left:auto;
        margin-right:auto;
        margin-top:auto;
        overflow:auto;
        
    }
    #topArea{
        width:100%;
        height:25px;
        margin-left:auto;
        margin-right:auto;
        margin-top:20px;
     
    }
    #headArea{
        width:150px;
        height:25px;
        text-align: left;
        float:left;
        font-size: 20px;
        font-weight: bold;
        
    }
    #topBtn{
        width:200px;
        height:25px;
        float:right;
      
    }
    #topBtn div{
        display:inline-block;
        background:lightblue;
        width:60px;
        height:25px;
        text-align:center;
        border-radius: 10px;
    } 
    #topBtn div:hover{
    	cursor:pointer;
    }
    #content{
        width:698px;
        height:150px;
        border:1px solid black;
        overflow:auto;
    }
    #title{
        font-size: 25px;
        width:500px;
        height:35px;
        position: absolute;
    }
    #nickname{
        font-size: 15px;
    }
    #bottomArea{
        width:100%;
        height:35px;
        position:relative;
    }
    #img1{
        background:url("<%=request.getContextPath()%>/resources/img/eye.jpg");
        background-size:cover;
        width:27px;
        height:25px;
        float:right;
        position:absolute;
        top:3px;
        right:130px;
    }
    #img2{
        background:url("<%=request.getContextPath()%>/resources/img/review.jpg");
        background-size:cover;
        width:25px;
        height:25px;
        float:right;
        position:absolute;
        top:3px;
        right:50px;
    }
    #img1_1{
        float:right;
        position:absolute;
        top:3px;
        right:105px;

    }
    #img2_1{
        float:right;
        position:absolute;
        top:3px;
        right:25px;
    }
    #nextArea{
        width:100%;
        height:45px;
        border:1px solid black;
    }
</style>
</head>
<body>
	<%@ include file="/views/include/header.jsp" %>
	
	
	 <div class="outer">
        <div id="inner">
            <div id="topArea">
                <div id="headArea"><%= b.getHead() %></div>
                <div id="topBtn">
                
                	<%if(mem != null && mem.getM_no() == b.getM_no()) { %>
                    <div onclick="deleteBtn()">삭제</div>
                    <div onclick="location.href='<%=contextPath %>/updateForm.bo?bId=<%=b.getB_no()%>';">수정</div>
                    <%}else{ %>
                    <div onclick="location.href='<%=contextPath %>/insertForm.de?bId=<%=b.getB_no()%>&title=<%=b.getTitle()%>&boardNick=<%=b.getNickname()%>&head=<%=b.getHead()%>';">신고</div>
                   	<%}%>
                   	
                </div>
            </div>
            <br>
            <div id="bottomArea">
	            <div id="title"><%=b.getTitle() %></div>
	            <div id="img1"></div>
	            <div id="img1_1"><%=b.getCount() %></div>   
	            <div id="img2"></div>
	            <div id="img2_1">30</div>
            </div>
            <div id="nickname"><%=b.getNickname() %></div>
            <div id="updateDate"><%=b.getUpdate_date() %></div>
            
            <br>
            <div id="content"><%=b.getContents() %><br><br>
            <%if(b.getEditFile() != null){ %>
            	<img id="img" src="<%= contextPath %>/resources/fileupload_board/<%= b.getEditFile()%>">
            <% } %>
            </div>
        
        	<br>
            <div id="nextArea">
            <%if(prev.getTitle() != null){ %>
                <div>이전글 - <%=prev.getTitle() %> </div>
             <%}else { %>
             	<div>이전글 - 이전 글이 없습니다.</div>
             <%} %>
             <%if(next.getTitle() != null){ %>
                <div>다음글 - <%=next.getTitle() %> </div>
              <%}else { %>
             	 <div>다음글 - 다음 글이 없습니다.</div>
              <%} %>
            </div>
        	<button onclick="location.href='<%= contextPath %>/download.bo?bId=<%=b.getB_no()%>';">다운로드</button>
        	<div>다운로드 횟수 - <%= b.getDown_count() %></div>
        
        
        </div>
    </div>


	<script>
		function deleteBtn(){

			if(confirm("정말 삭제하시겠습니까?") == true){
				
				location.href="<%=contextPath%>/delete.bo?bId=<%=b.getB_no()%>&head=<%=b.getHead()%>";
			}else{
				return;
			}
		}
	</script>

</body>
</html>
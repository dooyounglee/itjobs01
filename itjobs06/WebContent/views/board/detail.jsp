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
                    	<div onclick="deBtn();">신고</div>
                   	<%}%>
                   	
                </div>
            </div>
            <br>
            <div id="bottomArea">
	            <div id="title"><%=b.getTitle() %></div>
	            <div id="img1"></div>
	            <div id="img1_1"><%=b.getCount() %></div>   
	            <div id="img2"></div>
	            <div id="img2_1"><%=b.getReply_count() %></div>
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
        	
        	<div id="replyArea">
        		<div id="replyWrite">
        		 <div>댓글작성</div>
				 <textarea rows="2" cols="80" id="replyContent" style="resize: none; overflow:auto;"></textarea>  
				 <button id="addReply">댓글등록</button>      		
        		</div>
        	
        		<div id="replySelect">
        			
        		
        		</div>
        	
        	</div>
        
        
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
		
	<%-- 	function deBtn(){
		
			if(<%= mem.getM_no() %> != null){
				window.open("<%=contextPath %>/insertForm.de?bId=<%=b.getB_no()%>&title=<%=b.getTitle()%>&boardNick=<%=b.getNickname()%>&head=<%=b.getHead()%>", "ITJOBS_게시글 신고", "width=500, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no");

			}else{
				alert("로그인해주세요");
			} 
		} 
		 --%>
		 
		 $(function(){
				// 화면 로딩 시 댓글 출력
				selectRlist();
				
				setInterval(function(){
					selectRlist();
				}, 4000);
				
				$("#addReply").click(function(){
					
					<%if(mem != null) { %>
					var content = $("#replyContent").val();
					var bId = <%= b.getB_no()%>;
					var m_no = <%= mem.getM_no()%>;
					
					$.ajax({
						url:"brinsert.bo",
						type:"post",
						data:{content:content, bId:bId, m_no:m_no},
						success:function(status){
							if(status == "success"){
								selectRlist();
								$("#replyContent").val("");
							}else{
								alert("댓글 작성 실패");
							}
						},error:function(){
							console.log("서버 통신 실패");
						}
	
					});
					
				<% }else{%>
				alert("로그인해야 댓글작성이 가능합니다.");
				<%}%>
				});
		 });
		 
		function selectRlist(){
			$.ajax({
				url:"brlist.bo",
				data:{bId:<%=b.getB_no() %>},
				dataType:"json",
				success:function(list){
					console.log(list);
					
					var replySelect = $("#replySelect");
					
					replySelect.html("");
					
					$.each(list,function(index, value){
						var div = $("<div>");
						var writer = $("<div>").text(value.nickname).css("width","100px");
						var content = $("<div>").text(value.contents).css("width","400px");
						var date = $("<div>").text(value.update_date).css("width","200px");
						
						div.append(writer);
						div.append(content);
						div.append(date);
						
						replySelect.append(div);
					});
					
					
					
				},error:function(){
					console.log("서버와의 통신실패!!");
				}
			});
		}
		
	</script>

</body>
</html>
<%@page import="com.kh.board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Board b = (Board)request.getAttribute("b");

	String[] ca = new String[4];
	
	switch(b.getHead()){
		case "자유" : ca[0]="selected"; break;
		case "스터디" : ca[1]="selected"; break;
		case "프로젝트" : ca[2]="selected"; break;
		case "공지" : ca[3]="selected"; break;
	}
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
		/*background:lightpink;*/
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	.tableArea{
		width:700px;
		height:500x;
		margin-left:auto;
		margin-right:auto;
		border:1px solid black;
	}
	table{
		margin-left:auto;
		margin-right:auto;
	}
	#headArea{
		width:425px;
		margin-left:auto;
		margin-right:auto;
	}
	
	.addBtnArea>div{
		width:60px;
		height:25px;
		background:lightblue;
		text-align:center;
		border-radius:8px;
		display:inline-block;
	}
	#addBtn:hover, #cancelBtn:hover{
		cursor:pointer;
	}
	#fileAddArea{
		width:280px;
		height:20px;
		border:1px solid lightgray;
	}
	#time{
		width:280px;
	}
</style>
</head>
<body>
	<%@ include file="/views/include/header.jsp" %>

	<div class="outer">
	<br>
	<div id="headArea"><h1 align="left">글 수정</h1></div>
	
	<form action="<%=contextPath%>/update.bo" method="post" enctype="multipart/form-data" id="form">
	<input type="hidden" value="<%=b.getB_no() %>" name="b_no">
	<input type="hidden" value="<%=b.getM_no() %>" name="m_no">
		<div id="tableArea">
			<table>
				<tr>
					<td>제 목 : 
					
						<select name="writehead" id="writehead">
							<option>-------</option>
							<option value="자유" <%= ca[0] %>>자유</option>
							<option value="스터디" <%= ca[1] %>>스터디</option>
							<option value="프로젝트" <%= ca[2] %>>프로젝트</option>
							<option value="공지" <%= ca[3] %>>공지</option>
						</select>
					</td>
					<td colspan="2"><input type="text" name="title" value="<%=b.getTitle() %>" style="width:280px;"></td>
				</tr>
				<tr>
					<td colspan="3"></td>
				</tr>
				<tr>
					<td colspan="3"><textarea rows="20" cols="60" name="content"><%=b.getContents() %></textarea></td>
				</tr>
				<tr id="time">
					<td>모집기간 : </td>
					<td colspan="2"><input type="text" name="time" id="time" value="<%=b.getTime() %>" placeholder="ex)2019.09.29~2019.10.05 형식으로 입력하세요"></td>
				</tr>
				<tr id="fileAdd">
					<td>파일첨부 : </td>
					<td><div id="fileAddArea" ><%=b.getFile()%></div></td>
				</tr>
			</table>
			<br>
				<div class="addBtnArea" align="center">
					<div id="cancelBtn" onclick="window.history.back();">취   소</div>
					<div id="addBtn" onclick="return writeAdd()">수   정 </div>
				</div>
				<div id="fileArea"><input type="file" name="file1" id="file1" onchange="fileName(this);"></div>
			</div>
		</form>
	</div>
	
	<script>
		function writeAdd(){
			var title = $("#tableArea input[name=title]");
			var content = $("#tableArea textarea[name=content]");
			
			if(title.val().trim().length == 0){
				alert("제목을 입력해주세요.");
				title.focus();
				return false;
			}
			if(content.val().trim().length == 0){
				alert("내용을 입력해주세요.") 
				content.focus();
				return false;
				
			}else{
				$("#form").submit();
			}	
		};
		$(function(){
			$("#writehead").change(function(){
				var select = $("select[name=writehead]").val();

				if(select == "자유" || select == "공지"){
					$("#time").hide();
				}else{
					$("#time").show();
				}
			});
		});
		$(function(){
			$("#fileArea").hide();
		
			$("#fileAdd").click(function(){
				$("#file1").click();
			});
		});
		
		function fileName(value){
			if(value.files && value.files[0]){
				var filename = $("#file1").val();
				
					$("#fileAddArea").text(filename);
				
				
			}
			
		}
		
	</script>

	<%@ include file="/views/include/footer.jsp" %>
</body>
</html>
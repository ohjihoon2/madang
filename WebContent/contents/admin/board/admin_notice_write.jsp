<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/dycgv/js/jquery-3.4.1.min.js"></script>
<style>
*{
	font-family:"나눔스퀘어라운드";
	margin:0px;
	padding:0px;
}

div.admin_content{
	width:70%;
	height:1400px;
	margin:auto;
	float:left;
	padding:130px 0px 0px 100px;
}


div.admin_content h1{
	font-size:40pt;
}






div#admin_notice_write section form table{
	margin:30px 0px 20px 0px;
	width:80%;
	height:500px;
	border-collapse: collapse;
}

div#admin_notice_write section form table th{
	background-color:rgb(195,195,195);
	width:100px;
	height:32px;
	border:1px solid gray;
}
div#admin_notice_write section form table tr td{
	border:1px solid gray;
}

div#admin_notice_write section form table tr:nth-child(1) td:nth-child(2){
	width:520px;
}

div#admin_notice_write section form table tr:nth-child(3) td{
	height:460px;
  
}
div#admin_notice_write section form table input[type=text],
div#admin_notice_write section form table input[type=file]{
	width:100%;
	height:31px;
	border:none;
	padding-left:10px;
	box-sizing:border-box;
}
div#admin_notice_write section form table tr:nth-child(3) td textarea{
  	margin-top:10px;
  	overflow: auto;
	height:450px;
	width:100%;
	word-break:break-all;
	border:none;
	padding:10px;
	box-sizing:border-box;
}
div#admin_notice_write section article {
	width:80%;
	text-align :right;
}
div#admin_notice_write section article button{
	width:100px;
	height:35px;
	border:none;
}

div#admin_notice_write section article button:first-child {
	background-color:rgb(5,135,94);
	color:white;
}


</style>
<script>
$(document).ready(function(){
	$("#adboard_cancel_notice_btn").click(function(){
		 var cancel = confirm("수정을 취소하시겠습니까?");
		 if(cancel==1){
			 location.replace("admin_notice.jsp");
		 }
	 });//작성취소 클릭
	 /**유효성 검사**/
	 $("#adboard_writenotice_btn").click(function(){
		 if($("div#admin_notice_write input#ad_nt_title").val() == ""){
		 	alert("제목을 입력하세요");
	 	 }else if($("div#admin_notice_write textarea#ad_nt_contents").val() == ""){
		 	alert("내용을 입력하세요");
	 	 }else{
	 		notice_write.submit();
	 	 }
	 });
});
</script>
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_notice_write" class="admin_content">
	<h1>공 지 사 항</h1>	
	<section>
		<form action="admin_board_multi_proce.jsp" mehtod="post" name="notice_wirte" enctype="multipart/form-data"/>
		<input type="hidden" name="situation" value="notice_write"/>
		<table>
			<tr>
				<th>제목</th>
				<td><input type="text" name="nt_title" id="ad_nt_title"/> </td>
			</tr>
			<tr>
				<th colspan="2">내용</th>
			</tr>
			<tr>
				<td colspan="2">
				<textarea name="nt_contents" id="ad_nt_contents"></textarea>
				</td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><input type="file" name="nt_file"></td>
			</tr>
		</table>
		<article>
			<button type="button" id="adboard_writenotice_btn">작성완료</button>
			<button type="button" id="adboard_cancel_notice_btn">작성취소</button>
		</article>
	</section>
</div>
</body>
</html>
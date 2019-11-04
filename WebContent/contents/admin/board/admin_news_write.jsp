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






div#admin_news_write section form table{
	margin:30px 0px 20px 0px;
	width:80%;
	height:100px;
	border-collapse: collapse;
	table-layout:fixed;
}

div#admin_news_write section form table th{
	background-color:rgb(195,195,195);
	width:130px;
	height:32px;
	border:1px solid gray;
}
div#admin_news_write section form table tr td{
	border:1px solid gray;
}

div#admin_news_write section form table input[type=text]{
	width:100%;
	height:31px;
	border:none;
	padding-left:10px;
	box-sizing:border-box;
}



div#admin_news_write section article {
	width:80%;
	text-align :right;
}
div#admin_news_write section article button{
	width:100px;
	height:35px;
	border:none;
}
div#admin_news_write section article button:first-child{
	color:white;
	}



</style>
<script>
 $(document).ready(function(){
	 $("#adboard_cancel_news_btn").click(function(){
		 var cancel = confirm("수정을 취소하시겠습니까?");
		 if(cancel==1){
			 location.replace("admin_news.jsp");
		 }
	 });//작성취소 클릭
	 /**유효성 검사**/
	 $("#adboard_writenw_btn").click(function(){
		 alert("dd");
		 if($("div#admin_news_write input#ad_nw_title").val() == ""){
		 	alert("제목을 입력하세요");
	 	 }else if($("div#admin_news_write input#ad_nw_url").val() == ""){
		 	alert("기사 url을 입력하세요");
	 	 }else if($("div#admin_news_write input#ad_nw_press").val() == ""){
		 	alert("언론사를 입력하세요");
	 	 }else{
	 		event_update.submit();
	 	 }
	 });

	 
	 
 });
</script>

</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_news_write" class="admin_content">
	<h1>언 론 보 도</h1>	
	<section>
		<form action="admin_board_proce.jsp" method="post" name="news_write">
		<input type="hidden" name="situation" value="event_wirte"/>
		<table>
			<tr>
				<th>제목</th>
				<td><input type="text" name="nw_title" id="ad_nw_title"/></td>
			</tr>
			<tr>
				<th>기사 url</th>
				<td><input type="text" name="nw_url" id="ad_nw_url"></td>
			</tr>
			<tr>
				<th>언론사</th>
				<td><input type="text" name="nw_press" id="ad_nw_press"></td>
			</tr>
		</table>
		</form>
		<article>
			<button type="button" style="background-color:rgb(5,135,94)" id="adboard_writenw_btn">작성하기</button>
			<button type="button" id="adboard_cancel_news_btn">수정취소</button>
		</article>
	</section>
</div>
</body>
</html>
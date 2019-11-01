<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://211.63.89.214:9090/dycgv/js/jquery-3.4.1.min.js"></script>
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






div#admin_notice_contents section table{
	margin:30px 0px 20px 0px;
	width:70%;
	height:500px;
	border-collapse: collapse;
}

div#admin_notice_contents section table th{
	background-color:rgb(195,195,195);
	width:100px;
	height:32px;
	border:1px solid gray;
}
div#admin_notice_contents section table tr td{
	padding-left:10px;
	border:1px solid gray;
}

div#admin_notice_contents section table tr:nth-child(1) td:nth-child(2),
div#admin_notice_contents section table tr:nth-child(2) td:nth-child(2){
	width:520px;
}

div#admin_notice_contents section article {
	width:70%;
	text-align :right;
}
div#admin_notice_contents section article button{
	width:100px;
	height:35px;
	border:none;
}



</style>

<script>
	//이미지를 파일선택하기로 올리면 테이블에 그 이미지를 작은사이지로 올리고 클릭시 새창뜨게 하기
	$(document).ready(function(){
		if($("#admin_ev_detail").val() != ""){
			$("#admin_ev_detail").on("change paste keyup")
				
				alert("test");
			});
		}
		
	});
</script>

</head>
<body>
<jsp:include page="admin_left_nav.jsp"/>
<div id="admin_notice_contents" class="admin_content">
	<h1>이 벤 트</h1>	
	<section>
		<table>
			<tr>
				<th>제목</th>
				<td>d</td>
				<th>코드</th>
				<td>d</td>
			</tr>
			<tr>
				<th>이벤트 기간</th>
				<td>d</td>
				<th>상태</th>
				<td>d</td>
			</tr>
			<tr>	
				<th>작성일자</th>
				<td>d</td>
				<th>조회수</th>
				<td>d</td>
			</tr>
			<tr>
				<td colspan="4">
					<a href=" 링크주소 target = "_blank"><img src="이미지경로" /></a>
				</td>
			</tr>
			<tr>
				<th>상세내용 이미지</th>
				<td colspan="3"><input type="file" id="admin_ev_detail"></td>
			</tr>
			<tr>
				<th>썸네일 이미지</th>
				<td colspan="3"><input type="file" id="admin_ev_thumbnail"></td>
			</tr>
		</table>
		<article>
			<a herf="#"><button type="button" style="background-color:rgb(5,135,94)">수정하기</button></a>
			<button type="button" id="admin_del_btn">삭제하기</button>
			<a herf="admin_notice.jsp"><button type="button">목록으로</button></a>
		</article>
	</section>
</div>
</body>
</html>
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






div#admin_event_contents section table{
	margin:30px 0px 20px 0px;
	width:80%;
	height:800px;
	border-collapse: collapse;
	table-layout:fixed;
}

div#admin_event_contents section table th{
	background-color:rgb(195,195,195);
	width:130px;
	height:32px;
	border:1px solid gray;
}
div#admin_event_contents section table tr td{
	padding-left:10px;
	border:1px solid gray;
}

div#admin_event_contents section table tr:nth-child(1) td:nth-child(2),
div#admin_event_contents section table tr:nth-child(2) td:nth-child(2){
	overflow:auto;
	width:400px;
}



div#admin_event_contents section table tr:nth-child(5) td div{
	overflow:auto;
	width:100%;
	height:600px;
}

div#admin_event_contents section table tr:nth-child(5) td div img{
	width:100%;
	margin-bottom:10px;
}


div#admin_event_contents section article {
	width:70%;
	text-align :right;
}
div#admin_event_contents section article button{
	width:100px;
	height:35px;
	border:none;
}
div#admin_event_contents section article a:first-child button{
	color:white;
	}



</style>

<script>
	//이미지를 파일선택하기로 올리면 테이블에 그 이미지를 작은사이지로 올리고 클릭시 새창뜨게 하기
	$(document).ready(function(){
		
	});
</script>

</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_event_contents" class="admin_content">
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
				<th colspan="4">내용</th>
			</tr>
			<tr>
				<td colspan="4">
					<!-- 이미지 부터 출력 -->
					<div>
						<img src="../admin_event_temp.gif"/> <br>
						내용내
					</div>
				</td>
			</tr>
			<tr>
				<th>썸네일 이미지</th>
				<td colspan="3">
					<img src="#"/>
				</td>
			</tr>
		</table>
		<article>
			<a herf="#"><button type="button" style="background-color:rgb(5,135,94)">수정하기</button></a>
			<a herf="#"><button type="button" id="admin_del_btn">삭제하기</button></a>
			<a herf="admin_notice.jsp"><button type="button">목록으로</button></a>
		</article>
	</section>
</div>
</body>
</html>
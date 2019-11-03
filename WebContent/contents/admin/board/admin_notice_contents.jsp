<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

div#admin_notice_contents section table tr:nth-child(4) td{
	height:460px;
  
}
div#admin_notice_contents section table tr:nth-child(4) td div{
  	margin-top:10px;
  	overflow: auto;
	height:450px;
	width:98%;
	word-break:break-all;
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
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_notice_contents" class="admin_content">
	<h1>공 지 사 항</h1>	
	<section>
		<table>
			<tr>
				<th>제목</th>
				<td>d</td>
				<th>코드</th>
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
				<div>
					dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
				</div>
				</td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td colspan="3"><input type="file"></td>
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
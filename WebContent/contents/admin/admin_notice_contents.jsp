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
	border:1px solid red;
}

aside.amdmin_left ul li:nth-child(8){
	color:black;
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
div#admin_notice_contents section table tr:nth-child(4) td{
	height:450px;
  
}
div#admin_notice_contents section table tr:nth-child(4) td div{
  	margin-top:10px;
  	overflow: auto;
	height:100%;
	width:1000px;
}


</style>
</head>
<body>
<jsp:include page="admin_left_nav.jsp"/>
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
			<button type="button">수정하기</button>
			<button type="button">삭제하기</button>
			<button type="button">목록으로</button>
		</article>
	</section>
</div>
</body>
</html>
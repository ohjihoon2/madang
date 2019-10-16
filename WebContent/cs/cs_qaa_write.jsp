<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
* {
	font-family: "나눔스퀘어라운드";
	padding: 0px;
	margin: 0px;
}

body, div {
	margin: auto;
	/* text-align:center; */
}

/** 타이틀 **/
div#main_title {
	width: 900px;
	border-bottom: 3px solid rgb(5, 135, 94);
	border-left: 15px solid rgb(5, 135, 94);
	display: inline-block;
	margin: 100px 0px 0px 70px;
	font-size: 30pt;
	font-weight: bold;
	font-family: "나눔스퀘어라운드";
	text-align: left;
}

/** 왼쪽 nav **/
#left_nav {
	width: 180px;
	margin: 180px -20px 0px 200px;
	padding-right: 30px;
	display: inline-block;
	float: left;
	text-decoration: none;
	color: rgb(34, 34, 34);
}

div#left_nav>ul {
	border-right:2px solid #9b9b9b;
	text-align: center;
	list-style-type: none;;
	color: rgb(5, 135, 94);
}

div#left_nav>ul>li{
	height:50px;
}

div#left_nav>ul>li:nth-child(1) {
	font-size: 20pt;
	font-style: bold;
	margin-bottom: 10px;
	margin-right: 20px;
}

div#left_nav>ul>li>a {
	text-decoration: none;
}

/** 중앙 concert contents **/
div#qaa_wirte_table {
	/* border:1px solid red; */
	width:850px; /* height:600px; */
	margin-top:40px;
}

div#qaa_wirte_table table {
	width:90%;
	border-right:none;
	border-left:none;
}

div#qaa_wirte_table table, div#qaa_wirte_table tr, div#qaa_wirte_table td {
	border-collapse: collapse;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
}

div#qaa_wirte_table tr > th, div#qaa_wirte_table tr > td {
	font-size:14pt;
	padding:8px;
	text-align:center;
}

div#qaa_wirte_table tr > td:nth-child(2) { /* 각 행 2열: */
	text-align:left;
}

input#qaa_title { /* 제목 입력칸 */
	height:25px; width:95%;
	border:1px solid lightgray;
	border-radius:10px;
}

textarea#qaa_content { /* 내용 입력칸 */
	height:200px; width:95%;
	border:1px solid lightgray;
	border-radius:10px;
	overflow:scroll;
}

div#qaa_wirte_table tr:last-child span {
	display:inline-block;
	color:#ccc;
	font-size:10pt;
	margin-top:3px;
}

div#qaa_wirte_table button { /* 목록 버튼 */
	margin-top:40px;
	width:50px; height:40px;
	font-size:13pt;
	border-radius:10px;
	background:lightgray;
	/* float:right; */
	/* margin-right:90px; */
	margin-right:10px;
	
}

div#qaa_wirte_table div {
	text-align:center;
	width:90%;
	margin:0px;
}

</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a href="cs_main.jsp">고객센터</a></li>
				<li><a href="cs_faq.jsp">F&Q</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="cs_qaa.jsp">1:1 상담</a></li>
			</ul>
		</div>

		<div id="main_title">Q&A 1:1 상담</div>
		
		<div id="qaa_wirte_table">
			<form action="#" method="get" name="qaa_write_form">
				<table border=1>
					<tr>
						<td>제목</td>
						<td><input type="text" name="qaa_title" id="qaa_title"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="qaa_content" id="qaa_content"></textarea></td>
					</tr>
					<tr>
						<td>첨부파일</td>
						<td>
							<input type="file"><br>
							<span>필요한 경우 파일을 첨부해주세요.</span>
						</td>
					</tr>
				</table>
				<div>
					<button type="button" id="qaa_write">등록</button>
					<a href="cs_qaa.jsp"><button type="button" id="qaa_write">목록</button></a>
				</div>
			</form>
		</div>
		
	</div>
</body>
</html>
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
div#qaa_table {
	/* border:1px solid red; */
	width:850px;
	margin-top:40px;
	
}

div#qaa_table table {
	width:90%;
	border-right:none;
	border-left:none;
}

div#qaa_table table, div#qaa_table tr, div#qaa_table td {
	border-collapse: collapse;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
}

div#qaa_table tr > th, div#qaa_table tr > td {
	font-size:14pt;
	padding:8px;
}

div#qaa_table tr > th, div#qaa_table tr:nth-child(1) td { /* 제목 */
	font-weight:bold;
}

div#qaa_table tr > th, div#qaa_table tr:nth-child(2) td,
div#qaa_table tr > th, div#qaa_table tr:nth-child(4) td { /* 내용, 답변 */
	height:300px;
	vertical-align:top;
}

div#qaa_table tr > th, div#qaa_table tr:nth-child(4) { /* 답변 행 */
	border-top:10px double #9b9b9b;
}

div#qaa_table button { /* 목록 버튼 */
	margin-top:40px;
	width:50px; height:40px;
	font-size:13pt;
	border-radius:10px;
	background:lightgray;
}

div#qaa_table div {
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
		
		<div id="qaa_table">
			<table border=1>
				<tr>
					<td>제목 어쩌구</td>
				</tr>
				<tr>
					<td>내용 저쩌구</td>
				</tr>
				<tr>
					<td>첨부파일</td>
				</tr>
				<tr>
					<td>답변내용</td>
				</tr>
			</table>
			<div>
				<a href="cs_qaa.jsp"><button type="button" id="qaa_write">목록</button></a>
			</div>
		</div>
		
	</div>
</body>
</html>
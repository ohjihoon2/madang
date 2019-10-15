<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src=""></script>
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
div#faq_list {
	/* border:1px solid red; */
	width:850px; /* height:600px; */
	margin-top:40px;
}

div#faq_list li {
	/* border:1px solid green; */
	margin:5px;
	list-style-type:none;
	width:90%;
}

div#faq_list li span.faq_list_category { /* 카테고리 */
	border-right:1px dashed #9b9b9b;
	display:inline-block;
	font-size:14pt;
	font-weight:bold;
	width:10%;
	padding:8px;
	text-align:center;
}

div#faq_list li span.faq_list_title { /* 제목 */
	/* border:1px solid yellow; */
	display:inline-block;
	font-size:14pt;
	padding:8px;
}

div#faq_list li span.faq_list_title a {
	color:black;
	text-decoration:none;
}

div#faq_list li span.faq_list_title a:hover {
	text-decoration:underline;
	color:#323232;
}

div#faq_list li > div:first-child { /* 카테고리+제목 */
	border:1px solid #9b9b9b;
}

div.faq_slide {	/* 내용 */
	border:1px solid cyan;
	width:87.4%; height:100px;
	margin-left:12.4%;
	display:none;
}

/* div#faq_table table {
	width:90%;
	border-right:none;
	border-left:none;
}

div#faq_table table, div#faq_table tr, div#faq_table td {
	border-collapse: collapse;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
}

div#faq_table tr > td {
	font-size:13pt;
	padding:15px;
}

div#faq_table tr> td > a {
	text-decoration: none;
	color:black;
}

div#faq_table tr> td > a:hover {
	text-decoration:underline;
	color:#323232;
}

div#faq_table tr> td:first-child { //각 행 1열: 카테고리
	text-align:center;
	font-weight:bold;
	width:18%;
} */

div#faq_search {
	/* border:1px solid cyan; */
	margin-top:50px;
	text-align:center;
}

div#faq_search input { /* 검색 입력창 */
	border-radius:10px;
	width:300px; height:30px;
	margin-right:15px;
	font-size:12pt;
	padding-left:5px;
}

div#faq_search img { /* 검색 이미지 */
	width: 20px; height: 20px;
	margin-bottom: -5px;
	opacity: 0.5;
}

div#faq_search img:hover {
	opacity: 0.6;
}

</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a href="cs_main.jsp">고객센터</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="cs_faq.jsp">F&Q</a></li>
				<li><a href="cs_qaa.jsp">1:1 상담</a></li>
			</ul>
		</div>

		<div id="main_title">FAQ 자주 묻는 질문</div>
			
		
		
		<div id="faq_list">
			<ul>
				<li>
					<div>
						<span class="faq_list_category">공연</span>
						<span class="faq_list_title"><a href="#">공연시간에 늦어도 입장할 수 있나요?</a></span>
					</div>
					<div class="faq_slide">1</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">전시</span>
						<span class="faq_list_title"><a href="#">전시장 안에서 촬영이 가능한가요?</a></span>
					</div>
					<div class="faq_slide">2</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">예매</span>
						<span class="faq_list_title"><a href="#">회원이 아니어도 티켓 예매가 가능한가요?</a></span>
					</div>
					<div class="faq_slide">3</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">환불/취소</span>
						<span class="faq_list_title"><a href="#">티켓 예매 취소 후 환불은 어떻게 되나요?</a></span>
					</div>
					<div class="faq_slide">4</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">사이트</span>
						<span class="faq_list_title"><a href="#">아이디, 비밀번호를 잊어버렸어요.</a></span>
					</div>
					<div class="faq_slide">5</div>
				</li>
			</ul>
		
		</div>
		
		<!-- <div id="faq_table">
			<table border=1>
				<tr>
					<td>공연</td>
					<td><a href="#">공연시간에 늦어도 입장할 수 있나요?</a></td>
				</tr>
				<tr>
					<td>전시</td>
					<td><a href="#">전시장 안에서 촬영이 가능한가요?</a></td>
				</tr>
				<tr>
					<td>예매</td>
					<td><a href="#">회원이 아니어도 티켓 예매가 가능한가요?</a></td>
				</tr>
				<tr>
					<td>환불/취소</td>
					<td><a href="#">티켓 예매 취소 후 환불은 어떻게 되나요?</a></td>
				</tr>
				<tr>
					<td>사이트</td>
					<td><a href="#">아이디, 비밀번호를 잊어버렸어요.</a></td>
				</tr>
				
			</table>
		</div> -->
		
		
		<div id="faq_search">
			<input type="text" name="faq_search" placeholder="검색어를 입력해주세요">
			<a href="#"><img src="http://localhost:9090/images/search.png"></a>
		</div>

	</div>
</body>
</html>
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
div.faq_icon, div.qaa_icon { /* FAQ Q&A 버튼 */
	border:2px solid #9b9b9b;
	/* background: lightgray; */
	width:600px; height:130px;
	margin:auto;
	margin-top:60px;
	text-align:left;
	padding:0px;
	border-radius:20px;
}

div.faq_icon > a > div:first-child,
div.qaa_icon > a > div:first-child { /* FAQ 제목, Q&A 제목 */
	border-right:1px dashed #9b9b9b;
	display:inline-block;
	width:25%; height:130px;
	padding:0px 40px 0px 20px;
	font-weight:bold;
	font-size:18pt;
	vertical-align: middle;
	color:black;
}

div.faq_icon > a >  div:last-child,
div.qaa_icon > a >  div:last-child { /* FAQ 설명, Q&A 설명 */
	/* border:1px solid blue; */
	display:inline-block;
	height:130px;
	font-size:14pt;
	position:relative;
	left:15px;
	vertical-align: middle;
	color:black;
}

</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="cs_main.jsp">고객센터</a></li>
				<li><a href="cs_faq.jsp">F&Q</a></li>
				<li><a href="cs_qaa.jsp">1:1 상담</a></li>
			</ul>
		</div>

		<div id="main_title">고객센터</div>
		
		<div class="faq_icon">
			<a href="cs_faq.jsp">
				<div>
					<p><br>FAQ<br><br>
					자주 묻는 질문</p>
				</div>
				<div>
					<p><br><br>궁금증을 해결해드립니다.<br>
					자주 묻는 질문과 답변을 확인하세요.</p>
				</div>
			</a>
		</div>
		
		<div class="qaa_icon">
		<a href="cs_qaa.jsp">
			<div>
				<p><br><br>1:1 상담</p>
			</div>
			<div>
				<p><br><br>궁금한 내용이 FAQ에 없으신가요?<br>
				로그인 후, 1:1 상담을 이용해주세요.</p>
			</div>
		</a>
		</div>

	</div>
</body>
</html>
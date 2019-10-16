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
div.mod_icon, div.reserv_icon, div.bmark_icon { /* 버튼 */
	border:2px solid #9b9b9b;
	/* background: lightgray; */
	width:600px; height:130px;
	margin:auto;
	margin-top:60px;
	text-align:left;
	padding:0px;
	border-radius:20px;
}

div.mod_icon > a > div:first-child,
div.reserv_icon > a > div:first-child,
div.bmark_icon > a > div:first-child { /* 제목 */
	border-right:1px dashed #9b9b9b;
	display:inline-block;
	width:25%; height:130px;
	padding:0px 40px 0px 20px;
	font-weight:bold;
	font-size:18pt;
	vertical-align: middle;
	color:black;
}

div.mod_icon > a >  div:last-child,
div.reserv_icon > a >  div:last-child,
div.bmark_icon > a > div:last-child { /* 설명 */
	/* border:1px solid blue; */
	display:inline-block;
	height:130px;
	font-size:14pt;
	position:relative;
	left:15px;
	vertical-align: middle;
	color:black;
}

div.mod_icon > a >  div:last-child span,
div.reserv_icon > a >  div:last-child span {
	font-size:14px;
	color:#9b9b9b;
}


</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_gen.jsp">회원정보 수정</a></li>
				<li><a href="#">예매내역 확인</a></li>
				<li><a href="#">찜한 공연/전시</a></li>
			</ul>
		</div>

		<div id="main_title">마이페이지</div>
		
		<div class="mod_icon">
			<a href="mypage_mod_gen.jsp">
				<div>
					<p><br><br>회원정보 수정</p>
				</div>
				<div>
					<p><br><br>정보를 수정하고 관리하세요.</p>
					<span><br>회원정보 수정 | 회원탈퇴</span>
				</div>
			</a>
		</div>
		
		<div class="reserv_icon">
		<a href="#">
			<div>
				<p><br><br>예매내역 확인</p>
			</div>
			<div>
				<p><br><br>예매하신 내역을 확인하세요.</p>
				<span><br>예매내역 확인 | 예매취소</span>
			</div>
		</a>
		</div>
		
		<div class="bmark_icon">
		<a href="#">
			<div>
				<p><br><br>찜한 공연/전시</p>
			</div>
			<div>
				<p><br><br>찜해두신 공연 및 전시에 대한 정보를<br>
				모아서 확인하세요.</p>
			</div>
		</a>
		</div>

	</div>
</body>
</html>
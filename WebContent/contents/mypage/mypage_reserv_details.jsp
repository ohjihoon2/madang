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


div.ticket_box_3 {
	/* border:1px solid blue; */
	width:850px;
	margin-top:40px;
}

div.ticket_box_3 table { /* 공연정보 */
	width:100%;
	border-right:none;
	border-left:none;
	font-size:18px;
}

div.ticket_box_3 table, div.ticket_box_3 th, div.ticket_box_3 tr, div.ticket_box_3 td {
	border-collapse: collapse;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	padding:8px;
	text-align:center;
}

div.ticket_box_3 table tr td:nth-child(1) {
	text-align:center;
	font-weight:bold;
	width:20%;
}

div.ticket_box_2 {
	width:850px;
	margin-top:40px;
}

div.ticket_box_2 table { /* 결제내역 1 */
	width:100%;
	border-right:none;
	border-left:none;
	font-size:18px;
}

div.ticket_box_2 table, div.ticket_box_2 tr, div.ticket_box_2 td {
	border-collapse: collapse;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	padding:8px;
}

div.ticket_box_2 table tr td:nth-child(3) { /* 중간 라인 */
	border-left:1pt solid gray;
}

div.ticket_box_2 table tr td:nth-child(1),
div.ticket_box_2 table tr td:nth-child(3) {
	text-align:center;
	font-weight:bold;
	width:20%;
}

div.ticket_box_2 table tr td:nth-child(4) {
	width:30%;
}

div.ticket_box_1 {
	/* border:1px solid blue; */
	width:850px;
	margin-top:40px;
}

div.ticket_box_1 table { /* 결제내역 2 */
	width:100%;
	border-right:none;
	border-left:none;
	font-size:18px;
}

div.ticket_box_1 table, div.ticket_box_1 th, div.ticket_box_1 tr, div.ticket_box_1 td {
	border-collapse: collapse;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	padding:8px;
}

div.ticket_box_1 table tr td:nth-child(1) {
	text-align:center;
	font-weight:bold;
	width:20%;
}

body > div > div:last-child button { /* 버튼 */
	margin-top:40px;
	width:80px; height:40px;
	font-size:13pt;
	border-radius:10px;
	background:lightgray;
	margin-right:10px;
}

body > div > div:last-child {
	text-align:center;
	margin:0px;
}

div.ticket_box_3 div#poster {
	border:1px solid gray;
	display:inline-block;
	width:230px; height:265px;
	float:left;
	margin-left:25px;
	margin-right:60px;
}

div.ticket_box_3 > table {
	width:500px;
	float:left;
}

div.clear {
	clear:both;
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
				<li><a style="color: rgb(5, 135, 94)" href="mypage_reserv_list.jsp">예매내역 확인</a></li>
				<li><a href="#">찜한 공연/전시</a></li>
			</ul>
		</div>

		<div id="main_title">예매내역 확인</div>
		
		<div class="ticket_box_3">
			<h2>공연정보</h2>
			<br>
			<div id="poster">
				공연포스터
			</div>
			<table border=1>
				<tr>
					<td>예매번호</td>
					<td>T45621</td>
				</tr>
				<tr>
					<td>공연명</td>
					<td>bbbb</td>
				</tr>
				<tr>
					<td>관람일</td>
					<td>2019-10-31</td>
				</tr>
				<tr>
					<td>장소</td>
					<td>베토벤홀</td>
				</tr>
				<tr>
					<td>좌석</td>
					<td>1층 6열 10, 1층 6열 11</td>
				</tr>
				<tr>
					<td>예매자</td>
					<td>김예술</td>
				</tr>
				<tr>
					<td>배송지</td>
					<td>서울시 강남구 역삼동 12-3 4층</td>
				</tr>
			</table>
		</div>
		
		<div class="clear"></div>
		
		<div class="ticket_box_2">
			<h2>결제내역</h2>
			<br>
			<table border=1>
				<tr>
					<td>예매일</td>
					<td>2019-09-30</td>
					<td>예매상태</td>
					<td>예매</td>
				</tr>
				<tr>
					<td>결제수단</td>
					<td>카드</td>
					<td>결제상태</td>
					<td>결제</td>
				</tr>
			</table>
		</div>
		
		<div class="ticket_box_1">
			<table border=1>
				<tr>
					<td>예매번호</td>
					<td>T45621</td>
				</tr>
				<tr>
					<td>좌석등급</td>
					<td>R석</td>
				</tr>
				<tr>
					<td>가격</td>
					<td>200,000</td>
				</tr>
				<tr>
					<td>할인금액</td>
					<td>20,000</td>
				</tr>
				<tr>
					<td>예매수수료</td>
					<td>500</td>
				</tr>
				<tr>
					<td>배송비</td>
					<td>2,500</td>
				</tr>
				<tr>
					<td>총 결제금액</td>
					<td>183,000</td>
				</tr>
			</table>
		</div>
		
		<div>
			<a href="mypage_reserv_list.jsp"><button type="button" id="out_btn">목록</button></a>
			<a href="mypage_reserv_cc.jsp"><button type="button" id="out_btn">예매취소</button></a>
		</div>
		
	</div>
</body>
</html>
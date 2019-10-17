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
div.ticket_box_2 {
	/* border:1px solid blue; */
	width:850px;
	margin-top:40px;
}

div.ticket_box_2 table {
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

div.out_box {
	border:1px solid #9b9b9b;
	width:810px; height:200px;
	padding:20px;
	margin-top:50px;
	margin-bottom:20px;
	font-size:13pt;
}

div.out_cfm { /* 확인 체크 */
	/* border:1px solid blue; */
	width:38%;
	margin-bottom:10px;
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

		<div id="main_title">예매 취소</div>
		
		<div class="ticket_box_2">
			<h2>티켓정보</h2>
			<br>
			<table border=1>
				<tr>
					<td>예매번호</td>
					<td>T45621</td>
					<td>공연명</td>
					<td>bbbb</td>
				</tr>
				<tr>
					<td>관람일</td>
					<td>2019-10-31</td>
					<td>좌석</td>
					<td>1층 6열 10, 1층 6열 11</td>
				</tr>
				<tr>
					<td>예매일</td>
					<td>2019-09-30</td>
					<td>결제수단</td>
					<td>카드</td>
				</tr>
				<tr>
					<td>결제금액</td>
					<td>183,000</td>
					<td>환불금액</td>
					<td>180,000</td>
				</tr>
			</table>
		</div>
		
		<div class="out_box">
			<h2>유의사항</h2>
			<br>
			<br>예매수수료는 예매일 이후 취소시에는 환불되지 않습니다.
			<br>
			<br>이미 배송이 시작된 티켓의 경우 인터넷 및 전화로 취소할 수 없습니다. 반드시 취소 마감 시간 이전에 티켓이 고객센터로 반송되어야 취소가능하며, 취소수수료는 도착일자 기준으로 부과됩니다.
			<br>예매취소시점과 해당 카드사의 환불 처리기준에 따라 취소금액의 환급방법과 환급일은 다소 차이가 있을 수 있습니다.
		</div>
		
		<div class="out_cfm">
			<input type="checkbox" id="out1"> 예매취소 완료 후에는 이전 상태로 되돌릴 수 없습니다.
		</div>
		<div  class="out_cfm">
			<input type="checkbox" id="out2"> 안내사항을 모두 확인하였으며, 이에 동의합니다.
		</div>
		
		<div>
			<button type="button" id="out_btn">예매취소</button>
			<a href="mypage_reserv_details.jsp"><button type="button" id="out_btn">취소</button></a>
		</div>

	</div>
</body>
</html>
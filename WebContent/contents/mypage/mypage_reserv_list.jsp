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
div.ticket_box_0 {
	/* border:1px solid blue; */
	width:850px;
	margin-top:40px;
}

div.ticket_box_0 table {
	width:100%;
	border-right:none;
	border-left:none;
	font-size:18px;
}

div.ticket_box_0 table, div.ticket_box_0 th, div.ticket_box_0 tr, div.ticket_box_0 td {
	border-collapse: collapse;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	padding:8px;
	text-align:center;
}

div.ticket_box_0 table td.rnum a { /* 예매번호 */
	text-decoration:none;
	color:black;
}

div.ticket_box_0 table td.rnum a:hover {
	text-decoration:underline;
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
		
		<div class="ticket_box_0">
			<h2>공연</h2>
			<br>
			<table border=1>
				<tr>
					<th>예매일</th>
					<th>예매번호</th>
					<th>상품명</th>
					<th>관람일</th>
					<th>매수</th>
					<th>현재상태</th>
				</tr>
				<tr>
					<td>2019-09-30</td>
					<td class="rnum"><a href="mypage_reserv_details.jsp">T45621</a></td>
					<td>bbbb</td>
					<td>2019-11-30</td>
					<td>2매</td>
					<td>결제완료</td>
				</tr>
			</table>
		</div>
		
		<div class="ticket_box_0">
			<h2>전시</h2>
			<br>
			<table border=1>
				<tr>
					<th>예매일</th>
					<th>예매번호</th>
					<th>상품명</th>
					<th>관람일</th>
					<th>매수</th>
					<th>현재상태</th>
				</tr>
				<tr>
					<td>2019-09-25</td>
					<td class="rnum"><a href="#">T12211</a></td>
					<td>cccc</td>
					<td>2019-11-16</td>
					<td>1매</td>
					<td>예약완료</td>
				</tr>
			</table>
		</div>
		

	</div>
</body>
</html>
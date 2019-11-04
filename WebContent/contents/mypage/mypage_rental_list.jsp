<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>
<style>
/* mypage.css 연결이 안됨 학원가면 바꿔두기 */
div.rental_box_0 {
	width:850px;
	margin-top:40px;
}

div.rental_box_0 table {
	width:100%;
	border-right:none;
	border-left:none;
	font-size:18px;
}

div.rental_box_0 table, div.rental_box_0 th, div.rental_box_0 tr, div.rental_box_0 td {
	border-collapse: collapse;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	padding:8px;
	text-align:center;
}

div.rental_box_0 table tr:hover {
	color:#05875e;
	text-decoration:underline;
}

div.rental_box_0 table tr:first-child:hover {
	color:black;
	text-decoration:none;
}

div.rental_box_0 table td:nth-child(1),
div.rental_box_0 table td:nth-child(2),
div.rental_box_0 table td:nth-child(6) {
	width:10%;
}

div.rental_box_0 table td:nth-child(4),
div.rental_box_0 table td:nth-child(5) {
	width:20%;
}
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_grp.jsp">회원정보 수정</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_rental_list.jsp">대관 확인</a></li>
			</ul>
		</div>
		
		<div id="main_title">대관 확인</div>
		
		<div class="rental_box_0">
			<h2>대관 신청 내역</h2>
			<br>
			<table border=1>
				<tr>
					<th>유형</th>
					<th>대관번호</th>
					<th>공연/전시명</th>
					<th>대관일</th>
					<th>대관장소</th>
					<th>현재상태</th>
				</tr>
				<tr onClick="location.href='mypage_rental_details.jsp'">
				<!-- 한 행 전체에 링크 확인~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
					<td>공연</td>
					<td>T45621</td>
					<td>bbbb타이틀</td>
					<td>2019-11-30 ~ 2019-11-30</td>
					<td>오지훈특별관</td>
					<td>진행중</td>
				</tr>
			</table>
		</div>
		
		
	</div>
</body>
</html>
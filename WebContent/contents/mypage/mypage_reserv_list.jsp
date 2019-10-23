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

</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_gen.jsp">회원정보 수정</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_reserv_list.jsp">예매내역 확인</a></li>
				<li><a href="mypage_bmark.jsp">찜한 공연/전시</a></li>
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
				<tr onClick="location.href='mypage_reserv_details.jsp'">
				<!-- 한 행 전체에 링크 확인~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
					<td>2019-09-30</td>
					<td> <!--class="rnum">> <a href="mypage_reserv_details.jsp"> -->T45621<!-- </a> --></td>
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
					<td>T12211</td>
					<td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㄴㄴㄴㄴ15</td>
					<td>2019-11-16 ~ 2019-11-16</td>
					<td>1매</td>
					<td>예약완료</td>
				</tr>
			</table>
		</div>
		
	</div>
</body>
</html>
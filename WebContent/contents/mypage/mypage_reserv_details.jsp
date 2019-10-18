<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>

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
		
		<div class="button">
			<a href="mypage_reserv_list.jsp"><button type="button" id="out_btn">목록</button></a>
			<a href="mypage_reserv_cc.jsp"><button type="button" id="out_btn">예매취소</button></a>
		</div>
		
	</div>
</body>
</html>
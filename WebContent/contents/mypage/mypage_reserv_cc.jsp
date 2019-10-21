<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>   
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>
<script>

</script>
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
		<div class="out_cfm">
			<input type="checkbox" id="out2"> 안내사항을 모두 확인하였으며, 이에 동의합니다.
		</div>
		
		<div id="out_pw_cfm">
			<input type="password" name="out_pw_cfm" id="out_pw_cfm" placeholder="비밀번호를 입력해주세요">
		</div>
		
		<div class="button">
			<button type="button" id="out_btn" class="button_a">예매취소</button>
			<a href="mypage_reserv_details.jsp"><button type="button" id="out_btn" class="button_b">취소</button></a>
		</div>

	</div>
</body>
</html>
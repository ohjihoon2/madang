<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예술의 마당 Ticketing Page</title>
</head>
<body>
	<div class="ticketing_main">
		<div class="ticketing_step">
			<ul>
				<li>1.관림일/회차선택</li>
				<li>2.좌석선택</li>
				<li>3.가격/할인선택</li>
				<li>4.배송/주문자선택</li>
				<li>5. 결제하기</li>
			</ul>
		</div>
		<div class="ticketing_left">
			<div class="day_choice">
				<span>관람일 선택</span>
				<div class="calender">달력</div>
			</div>
			<div class="time_table">
				<span>17 : 00</span>
				<span>19 : 00</span>
				<span>21 : 00</span>
			</div>
			<div class="ticketing_notice">
				<h1>유의사항</h1>
			</div>
		</div>
		<div class="ticketing_right">
			<div class="ticketing_info">
				<div class="ticketing_info_choice">
					<img src="http://localhost:9090/images/ticketing/ticketing_small_img.gif">
					<h3>창작가무극〈다윈 영의 악의 기원</h3>
					<div id="text_space">		
						<span>2019.10.15 ~ 2019.10.27
							예술의마당 CJ 토월극장
							14세 이상 관람가
							관람시간 : 155분
						</span>
					</div>
				</div>
				<div class="ticketing_info_my_ticket">
					<table>
						<tr>
							<th scope="row">일시</th>
							<td>
									2019.09.21(토) ~ 2019.10.13(일)
							</td>
						</tr>
						<tr>
							<th scope="row">선택좌석</th>
							<td>
							</td>
						</tr>
						<tr>
							<th scope="row">티켓금액</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">수수료</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">배송료</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">할인</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">취소기한</th>
							<td>2019년 10월 25일(금) 23:59</td>
						</tr>
						
						<tr>
							<th scope="row">취소수수료</th>
							<td>티켓금액의 0~10% </td>
						</tr>
						<tr>
							<th scope="row">총 결제 금액</th>
							<td>0원</td>
						</tr>
					</table>
					<button type="button">다음단계</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
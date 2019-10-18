<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- jQuery 기본 js파일 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- jQuery UI 라이브러리 js파일 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <!-- jQuery UI CSS파일 --> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<title>예술의 마당 Ticketing Page</title>
<style>
	*{
		font-family: "나눔스퀘어라운드";
	}
	.ticketing_main{
		margin:0px;
	}
	/****************
	        ticket step 
	  ****************/
	.ticketing_step{
		background:rgb(34,34,34);
	}
	.ticketing_step>span{
		display:block;
		font-size:15pt;
		padding:10px;
		color:white;
	}
	.ticketing_step>ul{
		list-style-type:none;
	}
	.ticketing_step>ul>li{
		display:inline-block;
	}
		/****************
	          ticket left -side
	 	 ****************/
	.ticketing_left{
		width:600px;
		height:550px;
		float:left;
		padding-left:30px;
	}
	.day_choice{
		display:inline-block;
		width:400px;
		height:250px;
		/* background:rgb(230, 230, 230); */
	}
	
	.day_choice>span{
		display:block;
		border-bottom:2px solid black;
	}
	
	.time_table{
		width:150px;
		height:250px;	
		float:right;
	}
	.time_table>a{
		text-decoration:none;	
		background:rgb(255, 127, 39);
		/* background:rgb(237, 28, 36); */
		color:white;
		display:block;
		margin-top:5px;
		text-align:center;
		padding:5px 20px 5px 20px;
	}
	.time_table>div{
		border-bottom:2px solid black;
	}
	.ticketing_notice{
		display:inline-block;
		border:1px solid rgb(230, 230, 230);
		margin-top:20px;
		width:600px;
		height:300px;
		overflow:scroll;
	}
	.ticketing_notice>div{
		border-bottom:1px solid rgb(230, 230, 230);
		font-size:13pt;
		padding:5px;
		margin-left:30px;
	}
	.ticketing_notice>ul>li{
		font-size:10pt;
		margin:10px 0px 10px 0px;
		color:rgb(155, 155, 155);
	}
		/****************
	          ticket right -side
	 	 ****************/
	.ticketing_right{
		background:rgb(230, 230, 230);
		width:300px;
		height:550px;
		float:right;
	}
	.ticketing_info_choice_text{
		width:160px;
		height:160px;
		border:1px solid red;
		float:right;
	}
	.ticketing_info_choice_text>span{
		font-size:14pt;
	}
	
	.ticketing_info_choice_text>div#text_space>ul>li{
		list-style-type:none;
		margin-left:-30px;
		font-size:10pt;
	}
	.ticketing_info_choice_img>img{
		width:120px;
		height:160px;
		float:left;
	}
	.ticketing_info_my_ticket{
		display:inline-block;
		border:1px solid blue;
		width:300px;
		height:300px;
	}
	.ticketing_info_my_ticket>table{
		border:1px solid red;
	}
</style>
</head>
<body>
	<div class="ticketing_main">
		<div class="ticketing_step">
			<span>예술의마당 티켓 예매</span>
			<ul>
				<li><img src="http://localhost:9090/images/ticketing/05_step_01_on.gif"></li>
				<li><img src="http://localhost:9090/images/ticketing/05_step_02_off.gif"></li>
				<li><img src="http://localhost:9090/images/ticketing/05_step_03_off.gif"></li>
				<li><img src="http://localhost:9090/images/ticketing/05_step_04_off.gif"></li>
				<li><img src="http://localhost:9090/images/ticketing/05_step_05_off.gif"></li>
			</ul>
		</div>
		<div class="ticketing_left">
			<div class="day_choice">
				<span>관람일 선택</span>
				<div class="calender">
					날짜 : <input type="text" id="datepicker">
	    
				    <script>
				        $("#datepicker").datepicker();
				    </script>
			    </div>
			</div>
			<div class="time_table">
				<div>회차(관람시간)</div>
				<a href="#"><span>17 : 00</span></a><br>
				<a href="#"><span>19 : 00</span></a><br>
				<a href="#"><span>21 : 00</span></a><br>
			</div>
			<div class="ticketing_notice">
				<div>유의사항</div>
				<ul>
				    <li>증빙이 필요한 할인 (장애인, 국가유공자, 싹틔우미/노블 회원, 학생 등)을 받은 경우, 해당자 본인이 직접 증빙 자료를 제시해야 하며 미지참시 할인받은 만큼 차액을 지불해야 합니다.</li>
				    <li>예매 변경은 결제 건을 취소 후 재예매하는 절차이므로 환불과 동일한 수수료가 부과됩니다. (할인은 재예매 시점에 적용되는 할인율로만 적용 가능합니다.)</li>
				    <li>취소수수료와 취소 가능 일자는 상품별로 다르니, 오른쪽 하단 My예매정보를 확인해주시기 바랍니다.</li>
				    <li>ATM 기기에서 가상 계좌 입금이 안 될 수 있으니, 무통장 입금 외 다른 결제수단을 선택해주세요.</li>
				    <li>8세 이상 공연장 입장 가능합니다. (공연 별 입장 연령 확인)</li>
				    <li>승용차 이용 시 전당 주변의 교통체증과 주차장 혼잡으로 정시입장이 어려울 수 있습니다. 가급적 대중교통을 이용해주시기 바랍니다. 주차장 혼잡 및 입차 불가로 인한 지연입장, 티켓환불 불가합니다.</li>
				    <li><span class="txtu">조세특례제한법 제126조2에 따른 도서·공연비 소득공제 적용으로 예술의전당 공연 예매 시 신용카드 등 사용금액에 대해 추가 소득공제를 받으실 수 있습니다. (2018.7.1 시행, 관련 세부사항은 별도 확인)</span></li>
				</ul>
			</div>
		</div>
		<div class="ticketing_right">
			<div class="ticketing_info">
				<div class="ticketing_info_choice">
					<div class="ticketing_info_choice_img">
						<img src="http://localhost:9090/images/ticketing/ticketing_small_img.gif">
					</div>
					<div class="ticketing_info_choice_text">
						<span>창작가무극[다윈 영의 악의 기원]</span>
						<div id="text_space">		
							<ul>
	                            <li>2019.10.15 ~ 2019.10.27</li>
	                            <li><span title="예술의전당 CJ 토월극장">예술의전당 CJ 토...</span></li>
	                            <li>14세 이상 관람가</li>
	                            <li>관람시간 : 155분</li>
	                        </ul>
						</div>
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
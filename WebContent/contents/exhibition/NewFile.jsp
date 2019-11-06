<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
	
	.time_table>span{
		display:block;
		border-bottom:2px solid black;
	}
	.time_table>div{
		text-decoration:none;	
		background:rgb(255, 127, 39);
		/* background:rgb(237, 28, 36); */
		color:white;
		margin-top:10px;
		margin-bottom:10px;
		text-align:center;
		padding:5px 20px 5px 20px;
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
	
	.ticketing_right{
		background:rgb(230, 230, 230);
		width:300px;
		height:550px;
		float:right;
	}
	.ticketing_info_choice_text{
		width:160px;
		height:160px;
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
		width:300px;
		height:400px;
	}
	.ticketing_info_my_ticket>span{
		display:block;
		padding:10px;
	}
	.ticketing_info_my_ticket>table.myticket_t{
		border-top:2px solid rgb(34, 34, 34);
		border-bottom:2px solid rgb(34, 34, 34);
		font-size:10pt;
		width:300px;
		height:300px;
		text-align: left;
	}
	table.myticket_t > tr, th{
		border-bottom:1px solid rgb(155, 155, 155);
	}
	table.myticket_t > tbody > tr > td{
		border-bottom:1px solid rgb(155, 155, 155);
		background: white;
		width:200px;
	}
	
	table.myticket_t > tbody > tr:nth-child(2) > td{
		word-break : keep-all;
	}
	
	.btn_next1{
		margin-top:10px;
		display:block;
		border:1px solid rgb(255, 127, 39);
		width:300px;
		height:50px;
		text-align:center;
		/* background:rgb(255, 127, 39); */
		background:rgb(237, 28, 36);
	}
	
	.btn_next2, .btn_back, .btn_payment{
		margin:10px 4px 0px 4px;
		display:inline-block;
		border:1px solid rgb(255, 127, 39);
		width:140px;
		height:50px;
		text-align:center;
		/* background:rgb(255, 127, 39); */
		background:rgb(237, 28, 36);
	}
</style>
</head>
<body>
<div class="ticketing_left" id="step1">
			<div class="day_choice">
				<span>관람일 선택</span>
				<div class="calender">
					<div id="datepicker"></div>
			    </div>
			</div>
			<div class="time_table">
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
</body>
</html>
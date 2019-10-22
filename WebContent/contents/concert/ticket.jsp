<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>

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
	.tab {
		overflow: hidden;
	}
	.tab li{
		 background-color: inherit;
		 cursor: pointer;
		 transition: 0.3s;	
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
	.ticketing_info_my_ticket>table{
		border-top:2px solid rgb(34, 34, 34);
		border-bottom:2px solid rgb(34, 34, 34);
		font-size:10pt;
		width:300px;
		height:300px;
		text-align: left;
	}
	tr, th{
		border-bottom:1px solid rgb(155, 155, 155);
	}
	td{
		border-bottom:1px solid rgb(155, 155, 155);
		background: white;
	}
	
	.ticketing_info_my_ticket>button{
		margin-top:10px;
		display:block;
		border:1px solid rgb(255, 127, 39);
		width:300px;
		height:50px;
		text-align:center;
		/* background:rgb(255, 127, 39); */
		background:rgb(237, 28, 36);
	}
	
	/***************** step3 *****************/
	
	.col1{
		color:rgb(237, 28, 36);
	}
	
	.Tb_price_Wp{
		width:600px;
		height:150px;
		border: 1px solid rgb(155, 155, 155);
	}
	
	.Tb_price_Wp>th{
	
		background:rgb(230, 230, 230);
	}
	td{
		border-left: 1px solid rgb(155, 155, 155);
	}
	td:nth-child(2){
		text-align:left;
		padding-left:10px;
	}
	td:nth-child(3) {
		text-align:right;
		padding-right:10px;
	}
	
	
	/***************** step4 *****************/
	.recive_method{
		width:200px;
		height:600px;
		float:left;
	}
	.recive_method>div{
		border-bottom:2px solid black;
	}
	.recive_method>span{
		display:inline-block;
	}
	
	.recive_method>input{
		margin:20px 10px 0px 10px;
	}
	
	.check_user{
		width:350px;
		height:600px;
		float:right;
	}
	
	.check_user>table{
		font-size:10pt;
	}
	
	th{
		width:100px;
	}
	
</style>
<script>
	$(document).ready(function(){
		$("div#step1").css("display","block");
		$("div#step2").css("display","none");
		$("div#step3").css("display","none");
		$("div#step4").css("display","none");
		$("div#step5").css("display","none");
		
		$(".step").click(function(){
			var step = $(this).attr("id");
			
			 if(step == 'step1'){
				$("div#step1").css("display","block");
				$("div#step2").css("display","none");
				$("div#step3").css("display","none");
				$("div#step4").css("display","none");
				$("div#step5").css("display","none");
				
			}else if(step == 'step2'){
				$("div#step1").css("display","none");
				/* var src = $("div#step1").attr("src");
				alert(src); */
				/* "http://localhost:9090/images/ticketing/05_step_01_off.gif"); */
				$("div#step2").css("display","block");
				$("div#step3").css("display","none");
				$("div#step4").css("display","none");
				$("div#step5").css("display","none");
			}else if(step == 'step3'){
				$("div#step1").css("display","none");
				$("div#step2").css("display","none");
				$("div#step3").css("display","block");
				$("div#step4").css("display","none");
				$("div#step5").css("display","none");
			}else if(step == 'step4'){
				$("div#step1").css("display","none");
				$("div#step2").css("display","none");
				$("div#step3").css("display","none");
				$("div#step4").css("display","block");
				$("div#step5").css("display","none");
			}else if(step == 'step5'){
				$("div#step1").css("display","none");
				$("div#step2").css("display","none");
				$("div#step3").css("display","none");
				$("div#step4").css("display","none");
				$("div#step5").css("display","block");
			} 
		});
	});
</script>

</head>
<body>
	<div class="ticketing_main">
		<div class="ticketing_step">
			<span>예술의마당 티켓 예매</span>
			<ul class=tab>
				<li><img src="http://localhost:9090/images/ticketing/05_step_01_on.gif" id="step1" class="step"></li>
				<li><img src="http://localhost:9090/images/ticketing/05_step_02_off.gif" id="step2" class="step"></li>
				<li><img src="http://localhost:9090/images/ticketing/05_step_03_off.gif" id="step3" class="step"></li>
				<li><img src="http://localhost:9090/images/ticketing/05_step_04_off.gif" id="step4" class="step"></li>
				<li><img src="http://localhost:9090/images/ticketing/05_step_05_off.gif" id="step5" class="step"></li>
			</ul>
		</div>
		<div class="ticketing_left" id="step1">
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
		
		<!-- #################################################### -->
		<div class="ticketing_left" id="step2">
			<div class="concert_seats">
				<img src="http://localhost:9090/images/concert_main/small1_seat.gif">
			</div>
		</div>
		
		<!-- #################################################### -->
		<div class="ticketing_left" id="step3">
			<div class="price">
            	<p class="stit"><span class="col1">좌석 1매</span>를 선택하셨습니다.</p>
	            <table class="Tb_price_Wp">
	                	<tr>
		                    <th>
		                    	기본가<span class="pt"></span>
		                    </th>
	                   		<td>일반</td>
                            <td class="taR">90,000원</td>
                            <td class="taL">
								<select name="SeatCount">
                                    <option value="0">0매</option><option value="1">1매</option>
                                </select>
                            </td>
                      	</tr>
                      	<tr>
		                    <th>
		                    	기본할인<span class="pt"></span>
		                    </th>
	                   		<td>장애인 할인(동반1인까지)50%</td>
                            <td class="taR">45,000원</td>
                            <td class="taL">
								<select name="SeatCount">
                                    <option value="0">0매</option><option value="1">1매</option>
                                </select>
                            </td>
                      	</tr>
                      	<tr>
		                    <th>
		                    	기본할인<span class="pt"></span>
		                    </th>
	                   		<td>국가유공자 할인(동반1인까지)50%</td>
                            <td class="taR">45,000원</td>
                            <td class="taL">
								<select name="SeatCount">
                                    <option value="0">0매</option><option value="1">1매</option>
                                </select>
                            </td>
                      	</tr>
            	</table>
        	</div>
		</div>
		
		<!-- #################################################### -->
		<div class="ticketing_left" id="step4">
			<div class="recive_method">
				<div>티켓수령방법</div>
				<input type="radio" name="ticket_recive" value="현장수령" checked="checked" class="ticket_recive"><span>현장수령</span>
				<input type="radio" name="ticket_recive" value="문자" class="ticket_recive"><span>문자</span>
			</div>	
			<div class="check_user">
				<span>예매자 확인</span>
				<table>
					 <tr>
	                    <th>이름</th>
	                    <td>
	                    	<input type="text" value="홍길동" maxlength="6" readonly="">  <span style="font-size:11px;"></span>                    
                    	</td>
	                </tr>
	                <tr>
	                    <th>생년월일</th>
	                    <td>
	                    	<input type="text" value="920111" maxlength="6" readonly="">  <span style="font-size:11px;">예) 850101 (YYMMDD)</span>                    
                    	</td>
	                </tr>
                    <tr>
                        <td colspan="2">현장수령 및 고객문의시 본인확인을 위해 정확한 정보를 입력해주세요.</td>
                    </tr>
                    <tr>
                        <th>전화번호</th>
                        <td>
	                        <input type="text" id="PhoneNo1" value="010">&nbsp;-&nbsp;
	                        <input type="text" id="PhoneNo2" value="4229" >&nbsp;-&nbsp;
	                        <input type="text" id="PhoneNo3" value="5793">
                        </td>
                    </tr>
                    <tr>
                        <th>휴대폰</th>
                            <td>
                            	<input type="text" id="HpNo1" value="010" style="width:36px;" class="txt1" maxlength="3" >
                            	 - <input type="text" id="HpNo2" value="4229" style="width:41px;" class="txt1" maxlength="4"> 
                            	 - <input type="text" id="HpNo3" value="5793" style="width:41px;" class="txt1" maxlength="4">
                           	 </td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>
                        	<input type="text" id="Email" value="" style="width:170px;" class="txt1">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="fs">SMS 문자와 이메일로 예매 정보를 보내드립니다.</td>
                    </tr>
                </table>
			</div>
		</div>
		
		<!-- #################################################### -->
		<div class="ticketing_left" id="step5">
			<div class="payment_L">
				<span>결제방식선택</span>
	            <table>
	                <tbody>
	                    <tr id="Payment_1" class="selected">
							<td><input type="radio" class="chk" name="Payment" value="1">
								<label for="">신용카드</label></td>
	                        <!-- 선택되었을때 -->
	                    </tr>
	                    <tr id="Payment_2" class="">
							<td><input type="radio" class="chk" name="Payment" value="2">
								<label for="">무통장입금</label></td>
	                    </tr>
	                    <tr id="Payment_3" class="">
							<td><input type="radio" class="chk" name="Payment" value="3">
								<label for="">휴대폰결제</label></td>
	                    </tr>
	                    <tr id="Payment_4" style="display: block;" class="">
							<td><input type="radio" class="chk" name="Payment" value="4">
								<label for="">SAC포인트</label></td>
	                    </tr>
	            </table>
       		</div>
       		<div class="payment_R">
            <span>결제수단 입력</span>
            
            <!-- //신용카드 -->
            <div class="input" style="display: block;" id="PaymentArea_22003">
                <p class="stit">신용카드정보</p>
                <ul>
                    <div>
                    	<input type="radio" class="chk" name="PaymentSelect" id="PaymentSelect" value="C1" >       
                    	<label for="">일반신용카드</label>       
                    	<select id="DiscountCard" onchange="fnCardSelect(this.value);"><option value="">카드종류를 선택하세요.</option><option value="62">KB국민카드</option><option value="67">BC카드</option><option value="65">삼성카드</option><option value="26006">현대카드</option><option value="26010">신한카드</option><option value="26008">롯데카드</option><option value="26011">하나카드</option><option value="63">외환카드</option><option value="26013">NH카드</option><option value="64">우리카드</option><option value="53">씨티카드</option><option value="73">수협카드</option><option value="37">전북카드</option><option value="34">광주카드</option><option value="35">제주카드</option><option value="26016">문화누리카드</option></select> <div id="divCardDetail01"></div>
                   	</div>
                </ul>
            </div>

            <!-- //무통장입금   -->
            <div class="input" style="display: none;" id="PaymentArea_22004">
                <p class="stit">무통장입금</p>
                <div id="Input_22004"></div>
            </div>

            <!-- 무통장입금 //-->

            <!-- //휴대폰결제   -->
            <div class="input" style="display: none;" id="PaymentArea_22027">
                <p class="stit">휴대폰 결제 시 유의사항을 확인 하신 후 <br>[다음단계] 버튼으로 이동해주세요.</p>
                <dl class="method2">
                    <dt>휴대폰결제 유의사항</dt>
                    <dd>- 휴대폰 결제 시 전체 취소만 가능</dd>
                    <dd>- 통신사 별로 한도 금액 내에서 최대 20만원까지 결제 가능</dd>
                    <dd>- 당월 관람일 예매 시에만 결제 가능</dd>
                    <dd>- 미성년자 명의,법인명의,요금연체,선불요금제 가입,사용정지 휴대폰은 사용 불가</dd>
                </dl>
            </div>
        </div>
    </div>
       		
		</div>
		<div class="ticketing_right">
			<div class="ticketing_info">
				<div class="ticketing_info_choice">
					<div class="ticketing_info_choice_img">
						<img src="http://localhost:9090/images/ticketing/ticketing_small_img.gif">
					</div>
					<div class="ticketing_info_choice_text">
						<span>창작가무극[다윈영의 악의 기원]</span>
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
					<span>My 예매정보</span>
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
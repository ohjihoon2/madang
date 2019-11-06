<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.madang.service.*, com.madang.vo.*, com.madang.dao.*"%>
    
<%
	String code = request.getParameter("code");
	System.out.println(code);
	String id = (String)session.getAttribute("generalID");
	
	ConcertService service = new ConcertService();
	ConcertVO cvo = service.getConcertDetail(code);
	String place =cvo.getC_place().trim();
	String time = cvo.getC_stime();
	String[] timelist = time.split(";");
	
	
	
	//티켓팅 날짜
		
	//티케팅 좌석
/* 	String seat = tvo.getTc_cseat();
	System.out.println("좌석 : "+seat);
	
	String[] seatlist = seat.split("석 /"); 
	
	for(int i =0; i<seatlist.length;i++){
		System.out.println("좌석리스트 : "+seatlist[i]);
	}
	*/	
	//로그인 계정 값 받아오기
	General_mem_VO mvo = new General_mem_VO(); 
	mvo = service.getResultMemInfo(id);
	
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>

<!-- jQuery UI CSS파일 --> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- jQuery 기본 js파일 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- jQuery UI 라이브러리 js파일 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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
	/***************** step2 *****************/	
	.concert_seats{
		margin-left:15px;
	}
	.seat_all{
		padding-left:15px;
		display:inline-block;
	}
	.seat_section{
		display:inline-block;
		padding:50px 20px 0px 25px;
	}
	.seat_section>span{
		display:block;
		text-align:center;
	}
	.seat_num{
		display:inline-block;
		text-align:center;
		border-radius:5px;
		border:1px solid rgb(34,34,34);
		border-bottom:10px solid rgb(34,34,34);
		width:15px;
		height:18px;
		margin:5px 0px 5px 0px;
		font-size:5pt;
	}
	.seat_all_b{
		padding-left:35px;
		display:inline-block;
	}
	.seat_all_b > .seat_section{
		display:inline-block;
		padding:10px 30px 0px 30px;
	}
	.seat_all_b > .seat_section>span{
		display:block;
		text-align:center;
	}
	
	.bseat_num{
		display:inline-block;
		text-align:center;
		border-radius:5px;
		border:1px solid rgb(34,34,34);
		border-bottom:10px solid rgb(34,34,34);
		width:18px;
		height:18px;
		margin:3px 0px 3px 0px;
		font-size:5pt;
	}
	/***************** step3 *****************/
	
	.col1{
		color:rgb(237, 28, 36);
	}
	
	table.Tb_price_Wp{
		width:600px;
		height:150px;
		border: 1px solid rgb(155, 155, 155);
	}
	
	.Tb_price_Wp>th{
	
		background:rgb(230, 230, 230);
	}
	table.Tb_price_Wp td{
		border-left: 1px solid rgb(155, 155, 155);
		border-bottom: 1px solid rgb(155, 155, 155);
	}
	table.Tb_price_Wp td:nth-child(2){
		text-align:left;
		padding-left:10px;
	}
	table.Tb_price_Wp td:nth-child(3) {
		text-align:right;
		padding-right:10px;
	}
	
	
	/***************** step4 *****************/
	.recive_method{
		width:200px;
		height:500px;
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
		height:500px;
		float:right;
	}
	
	.check_user>table{
		font-size:10pt;
	}
	.check_user>div{
		border-bottom:2px solid black;
	}
	table.user_checkT th{
		width:70px;
	}
	.exp{
		font-size:9pt;
	}
	/***************** step5 *****************/	
	.payment_L{
		width:250px;
		height:200px;
		float:left;
	}
	.payment_L>div{
		border-bottom:2px solid black;
	}
	
	table.paymentT td{
		padding:10px;
		width:250px;
	}
	
	.payment_inputT{
		
	}
	
	#Payment_1 td{
		background:rgb(220,220,220);
	}
	.payment_R{
		width:300px;
		height:200px;
		float:right;
	}
	
	.pay_input{
		border-bottom:2px solid black;
	}
	
	#agreement_box{
		border:2px solid rgb(220,220,220);
		overflow: hidden;
	}
	
	.agreement{
		font-size:8pt;
	}
	#accountNum{
		font-size:9pt;
	}
</style>
<script>
	$(document).ready(function(){
		var sd = <%=cvo.getSnday()%>;
		var ed = <%=cvo.getEnday()%>; 
		<%-- var a = new Date(<%=cvo.getSnday()%>);
		var b = new Date(<%=cvo.getEnday()%>);
		alert(<%=cvo.getSnday()%>);
		alert(a);
		alert(b); --%>
		//화면 상태 값 
		var status = 1;
		
		var countSum = 0;
		var choiceCount = 0;
		var cancelPrice = 0;
		//선택 좌석 개수
		var rows = 0;
		$("div#step1").css("display","block");
		$("div#step2").css("display","none");
		$("div#step3").css("display","none");
		$("div#step4").css("display","none");
		$("div#step5").css("display","none");
	 	$(".btn_back").hide();
		$(".btn_next2").hide();
		$(".btn_payment").hide();

		/**
		* datepicker 
		**/
	    $( function() {
	  		$("#datepicker").datepicker({
	      		dateFormat: 'yy- mm- dd ' //Input Display Format 변경
		        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
		        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
		        ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
		        ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
		        ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
		        ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
		        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
		        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
		        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
		        /* ,minDate: new Date(sd) //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
		        ,maxDate:new Date(ed) //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후) */
		        ,minDate: new Date() //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
		        ,maxDate:new Date('<%=cvo.getEnday()%>') //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
		  		,onSelect: function(dateText, inst) { //클릭시에 date value 값 !!!!!!!!!!!!
		            var date = $(this).val();
		            var picdate = date;    
		            var yyyy = picdate.substr(0,4);
		            var mm = picdate.substr(6,2);
		            var dd = picdate.substr(10,2); 

		  			var seldate = new Date(yyyy, mm-1, dd-1);

		  	        var  month = (seldate.getMonth() + 1);
		  	        var day = seldate.getDate();
		  	       	var year = seldate.getFullYear();
		            var canceldate = year+'- '+month+'- '+day+' ';
		            
		            var dateText = $("table.myticket_t > tbody > tr:nth-child(1) > td");
		  			var cancelText = $("table.myticket_t > tbody > tr:nth-child(5) > td");
		  			
		  			dateText.empty();
		  			cancelText.empty();
		  			
		  			$("table.myticket_t > tbody > tr:nth-child(1) > td >span:nth-child(2)").empty();
		  			dateText.append("<span>"+date+"</span>");
		  			$("table.myticket_t > tbody > tr:nth-child(5) > td >span:nth-child(2)").empty();
		  			cancelText.append("<span>"+canceldate+"23:59 </span>");
		          
		       }
      		});    
		});//datepicker end 
		
		/**
		* 일시 - 시간 
		**/
		$(".time_table>div").click(function(){
			var time = $(this).text(); 
			var timeText =$("table.myticket_t > tbody > tr:nth-child(1) > td");
			$("table.myticket_t > tbody > tr:nth-child(1) > td > span.timeSpan").empty();
			timeText.append("<span class='timeSpan'>"+time+"</span>");
		});//일시 - 시간 end
	
	      /**
	      * 좌석 선택
	      **/
	      $(".seat_num").click(function(){
	         var anum = $(this).attr("id");
	         var seatText =$("table.myticket_t > tbody > tr:nth-child(2) > td");
	         var seatPic = $("#"+anum);
	         
	         //선택을 안했을경우
	         var flag = $("input#"+anum).val();
	         
	         var position1 = anum+"석 /";
	         var position2 =seatText.html();
	         var position3= position2.replace(position1,"");

	         
	         if(flag ==0){
	            seatPic.css({"border-bottom" :"10px solid rgb(155,155,155 )"});
	            $("input#"+anum).val("1"); 
	            seatText.append(anum+"석 /");
	         }else{
	            seatPic.css({"border-bottom" :"10px solid rgb(34,34,34)"});
	            $("input#"+anum).val("0"); 

	            seatText.empty();
	            seatText.text(position3);
	         }
	     	/**
	 		* 선택 좌석 개수 구하기
	 		**/
			rows = seatText.text().split('석').length;
		 	
		});
		
	      $(".bseat_num").click(function(){
		         var anum = $(this).attr("id");
		         var seatText =$("table.myticket_t > tbody > tr:nth-child(2) > td");
		         var seatPic = $("#"+anum);
		         
		         //선택을 안했을경우
		         var flag = $("input#"+anum).val();
		         
		         var position1 = anum+"석 /";
		         var position2 =seatText.html();
		         var position3= position2.replace(position1,"");

		         
		         if(flag ==0){
		            seatPic.css({"border-bottom" :"10px solid rgb(155,155,155 )"});
		            $("input#"+anum).val("1"); 
		            seatText.append(anum+"석 /");
		         }else{
		            seatPic.css({"border-bottom" :"10px solid rgb(34,34,34)"});
		            $("input#"+anum).val("0"); 

		            seatText.empty();
		            seatText.text(position3);
		         }
		     	/**
		 		* 선택 좌석 개수 구하기
		 		**/
				rows = seatText.text().split('석').length;
			 	
			});
		
		
  		/**
 		* step3 가격/할인 선택 validation
 		**/
 		
		$(".SeatCount").click(function(){
			var genCount = Number($("#SeatCount1").val());
			var disCount1 = Number($("#SeatCount2").val());
			var disCount2 = Number($("#SeatCount3").val());
			
			countSum = genCount+disCount1+disCount2;
			choiceCount = rows-1;
			
			//콤마풀기
			function uncomma(str) {
			    str = String(str);
			    return str.replace(/[^\d]+/g, '');
			}
			
			//금액을 숫자로 변형 
			var transPrice1 = uncomma($("td#taR1").text());
			var transPrice2 = uncomma($("td#taR2").text());
			var transPrice3 = uncomma($("td#taR3").text());
			
			//금액 * 표 매수
			var genPrice = genCount * transPrice1;
			var disPrice1 = disCount1 * transPrice2;
			var disPrice2 = disCount2 * transPrice3;
			
			//금액, 할인, 총가격 
			var nonDiscountPrice = transPrice1 * choiceCount;
			var discountPrice = disPrice1+disPrice2;
			var sumPrice = genPrice+disPrice1+disPrice2;
			var cancelPrice = sumPrice* 0.1;
			
			//금액이 찍히는 selector
			var price_text = $("table.myticket_t > tbody > tr:nth-child(3) > td");
			var discount_text = $("table.myticket_t > tbody > tr:nth-child(4) > td");
			var cancel_price = $("table.myticket_t > tbody > tr:nth-child(6) > td");
			var final_price = $("table.myticket_t > tbody > tr:nth-child(7) > td");
			
			// 티켓 선택 갯수 validation
			if(countSum > choiceCount){
				$("#SeatCount1").val("0");
				$("#SeatCount2").val("0");
				$("#SeatCount3").val("0");
				
				
				alert("총 "+choiceCount+"매를 선택하였습니다.\n현재 선택한 매수는 "+countSum+"매 입니다. 다시 선택해 주세요.");
			}
			
			//지우기
			price_text.empty();
			discount_text.empty();
			cancel_price.empty();
			final_price.empty();
			
			price_text.append(nonDiscountPrice);
			discount_text.append(discountPrice);
			cancel_price.append(cancelPrice);
			final_price.append(sumPrice);
			
		});
  		
		/**
		* step5
		**/
		
		$('input[name="Payment"]').change(function() {
			var val = $(this).val();
			var checked = $(this).prop('checked');
			
			if(val =="1"){
				$("#PaymentArea_1").css("display", "block");
				$("#PaymentArea_2").css("display", "none");
			}else if(val =="2"){
	 			$("#PaymentArea_1").css("display", "none");
				$("#PaymentArea_2").css("display", "block");
			} 
		});
		


		
		//버튼 클릭시 페이지 이동
		$("button").click(function(){
			var val = $(this).attr("id");
  		    if(status == 1){
  		    	//유효성 검사
  		    	//if(일시에 날짜/시간이 두개다 적힌다면 다음페이지로 이동)
  		    	if($("table.myticket_t > tbody > tr:nth-child(1) > td >span").length == 2){
  		    		//CONCERT_CODE=? AND TC_CDATE
  		    		var dateText = $("table.myticket_t > tbody > tr:nth-child(1) > td");
  		    		var datetime = dateText.text();
  		    		$.ajax({
  		    			url :"ticket_concert_process.jsp?concert_code=<%=code%>&datetime="+datetime,
 		    			success : function(data){
 		    				var jsonObj = JSON.parse(data)
 		    				//function을 사용하여서 ajax 밖에서 사용하기 
  		    				seat_check(jsonObj);
  		    			}
  		    		});
	   		  		status = 2;
  		    	} else{
  		    		alert("날짜와 시간을 선택해 주세요.");
  		    	}
   	 		}else if(status ==2){
   	 			if(val == "btn_back"){
   	 				status = 1;
   	 			}else{
   	 				//validation 
	   	 			 if($("table.myticket_t > tbody > tr:nth-child(2) > td").text().length >= 5){
		   	 			for(i = 0;i<rows;i++){
		   	 		 		$(".SeatCount").append("<option value="+i+" class='optionCheck'>"+i+"매</option>");
		   	 	 		}
			   			status = 3;
	   	 			}else{
	   	 				alert("좌석을 선택해주세요.");
	   	 			}
   	 			}
    	  	}else if(status ==3){
   	 			if(val == "btn_back"){
   	 				$(".SeatCount").empty();
   	 				status = 2;
   	 			}else{
   	 				 if(countSum != 0){
   	 					if(countSum == choiceCount){
			   			status = 4;
   	 					}
   	 				}else{
   	 					alert("티켓의 가격/할인을 선택해주세요.");
   	 				}
   	 			}
    	  	}else if(status ==4){
   	 			if(val == "btn_back"){
					status = 3;
   	 			}else{
   	 			
   	 				// 이메일 유효성 정규식검사 
 				 	var email = $('#Email');
   	 				var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
					if( !email.val() ){
				         alert('이메일주소를 입력 해 주세요');
				         email.focus();
				         return false;
			     	} else {
				         if(!regEmail.test(email.val())) {
				             alert('이메일 주소가 유효하지 않습니다');
				             email.focus();
				             return false;
				         }
			     	}
   	 				//빈 값 체크
	   	 			if($("#Email").val()!="" 
	   	 					&& $("#PhoneNo1").val()!="" 
	   	 					&& $("#PhoneNo2").val()!="" 
	   	 					&& $("#PhoneNo3").val()!="" 
	   	 					&& $("#HpNo1").val()!="" 
	   	 					&& $("#HpNo2").val()!="" 
	   	 					&& $("#HpNo3").val()!=""){
				   			status = 5;
		   	 		}else{
		   	 				alert("주문자 정보를 빠짐없이 입력하세요.");
		   	 		}
   	 			}
    	  	}else if(status ==5){
    	  		if(val == "btn_back"){
   	 				status = 4;
   	 			}else{
 					if($("input:checkbox[id='CancelAgree']").is(":checked")){
 						//DB연결 !!!!!
 						<%--  window.location = "ticket_process.jsp?code=<%=code%>"; --%> 
						<%-- <%response.sendRedirect("ticket_process.jsp");%> --%>
						<%-- //var concert_code = <%=code%>; --%> 
						//선택관람일
						var tc_cdate= $("table.myticket_t > tbody > tr:nth-child(1) > td").text();
						//선택좌석
						var tc_cseat= $("table.myticket_t > tbody > tr:nth-child(2) > td").text();
						//취소기한
						var tc_canceld= $("table.myticket_t > tbody > tr:nth-child(5) > td").text();
						//취소수수료
						var tc_cancelc= $("table.myticket_t > tbody > tr:nth-child(6) > td").text();
						//총결제금액
						var tc_price= $("table.myticket_t > tbody > tr:nth-child(7) > td").text();
						//티켓 수령방법
						var tc_recive = $(':radio[name="ticket_recive"]:checked').val();
						//휴대폰
						var tc_phone1 = $("#HpNo1").val();
						var tc_phone2 = $("#HpNo2").val();
						var tc_phone3 = $("#HpNo3").val();
						//이메일
						var tc_email = $("#Email").val();
						//결제방식
						var tc_paym = $(':radio[name="Payment"]:checked').val();
						//결제수단
						var tc_payw = $('#DiscountCard option:selected').val();
						var tc_pays = '';
						//결제상태
						if(tc_paym == 1){
							tc_pays ='complete';
						}else{
							tc_pays = 'wait';
						}
						$.ajax({
							url :"ticket_process.jsp?code=<%=code%>&tc_cdate="+tc_cdate+"&tc_cplace=<%=place%>+&tc_cseat="+tc_cseat+"&tc_canceld="+tc_canceld+"&tc_cancelc="+tc_cancelc+"&tc_price="+tc_price+"&tc_recive="+tc_recive+"&tc_id=<%=mvo.getId() %>&tc_name=<%=mvo.getName() %>&tc_birth=<%=mvo.getBirth() %>&tc_phone1="+tc_phone1+"&tc_phone2="+tc_phone2+"&tc_phone3="+tc_phone3+"&tc_email="+tc_email+"&tc_paym="+tc_paym+"&tc_payw="+tc_payw+"&tc_pays="+tc_pays,
									
							success : function(data){
								data2 = $.trim(data) 
								alert(data2);
								if(data2 == 'true'){
									alert("예매가 완료 되었습니다.")
									window.close();									
								}else if(data2='false'){
									alert("결제에 실패하여 새로고침 합니다.")
									location.reload();
								}
							}
						});
 					}else{
 						alert("개인정보 제3자 정보제공에 동의해야합니다.")
 					}
   	 			}
    	  	}
  		  
	  		if(status ==1){
				$("div#step1").css("display","block");
				$("div#step2").css("display","none");
				$("div#step3").css("display","none");
				$("div#step4").css("display","none");
				$("div#step5").css("display","none");
				
				$("#step1").attr("src", "http://localhost:9090/images/ticketing/05_step_01_on.gif");	
				$("#step2").attr("src", "http://localhost:9090/images/ticketing/05_step_02_off.gif");	
				$("#step3").attr("src", "http://localhost:9090/images/ticketing/05_step_03_off.gif");	
				$("#step4").attr("src", "http://localhost:9090/images/ticketing/05_step_04_off.gif");	
				$("#step5").attr("src", "http://localhost:9090/images/ticketing/05_step_05_off.gif");
				$(".btn_next1").show();
				$(".btn_back").hide();
				$(".btn_next2").hide();
				$(".btn_payment").hide();
			}else if( status ==2){
				$("div#step1").css("display","none");
				$("div#step2").css("display","block");
				$("div#step3").css("display","none");
				$("div#step4").css("display","none");
				$("div#step5").css("display","none");
				
				$("#step1").attr("src", "http://localhost:9090/images/ticketing/05_step_01_off.gif");	
				$("#step2").attr("src", "http://localhost:9090/images/ticketing/05_step_02_on.gif");	
				$("#step3").attr("src", "http://localhost:9090/images/ticketing/05_step_03_off.gif");	
				$("#step4").attr("src", "http://localhost:9090/images/ticketing/05_step_04_off.gif");	
				$("#step5").attr("src", "http://localhost:9090/images/ticketing/05_step_05_off.gif");	
				$(".btn_next1").hide();
				$(".btn_back").show();
				$(".btn_next2").show();
				$(".btn_payment").hide();
				
			}else if(status ==3){
				$("div#step1").css("display","none");
				$("div#step2").css("display","none");
				$("div#step3").css("display","block");
				$("div#step4").css("display","none");
				$("div#step5").css("display","none");
				
				$("#step1").attr("src", "http://localhost:9090/images/ticketing/05_step_01_off.gif");	
				$("#step2").attr("src", "http://localhost:9090/images/ticketing/05_step_02_off.gif");	
				$("#step3").attr("src", "http://localhost:9090/images/ticketing/05_step_03_on.gif");	
				$("#step4").attr("src", "http://localhost:9090/images/ticketing/05_step_04_off.gif");	
				$("#step5").attr("src", "http://localhost:9090/images/ticketing/05_step_05_off.gif");	
				$(".btn_next1").hide();
				$(".btn_back").show();
				$(".btn_next2").show();
				$(".btn_payment").hide();
			}else if(status ==4){
				$("div#step1").css("display","none");
				$("div#step2").css("display","none");
				$("div#step3").css("display","none");
				$("div#step4").css("display","block");
				$("div#step5").css("display","none");
				
				$("#step1").attr("src", "http://localhost:9090/images/ticketing/05_step_01_off.gif");	
				$("#step2").attr("src", "http://localhost:9090/images/ticketing/05_step_02_off.gif");	
				$("#step3").attr("src", "http://localhost:9090/images/ticketing/05_step_03_off.gif");	
				$("#step4").attr("src", "http://localhost:9090/images/ticketing/05_step_04_on.gif");	
				$("#step5").attr("src", "http://localhost:9090/images/ticketing/05_step_05_off.gif");	
				$(".btn_next1").hide();
				$(".btn_back").show();
				$(".btn_next2").show();
				$(".btn_payment").hide();
			}else if(status ==5){
				$("div#step1").css("display","none");
				$("div#step2").css("display","none");
				$("div#step3").css("display","none");
				$("div#step4").css("display","none");
				$("div#step5").css("display","block");
				
				$("#step1").attr("src", "http://localhost:9090/images/ticketing/05_step_01_off.gif");	
				$("#step2").attr("src", "http://localhost:9090/images/ticketing/05_step_02_off.gif");	
				$("#step3").attr("src", "http://localhost:9090/images/ticketing/05_step_03_off.gif");	
				$("#step4").attr("src", "http://localhost:9090/images/ticketing/05_step_04_off.gif");	
				$("#step5").attr("src", "http://localhost:9090/images/ticketing/05_step_05_on.gif");	
				$(".btn_next1").hide();
				$(".btn_back").show();
				$(".btn_next2").hide();
				$(".btn_payment").show();
			}
    	});  
  		
		function seat_check(seat){
			for(i=0;i<seat.length;i++){
				$("#"+seat[i]).css("border-radius", "5px");
				$("#"+seat[i]).css("border", "1px solid red");
				$("#"+seat[i]).css("pointer-events", "none");
				$("#"+seat[i]).css("border-bottom", "10px solid red");
			}
		}
	});//document.ready() end
	

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
					<div id="datepicker"></div>
					<script>
						
					</script>
			    </div>
			</div>
			<div class="time_table">
				<span>회차(관람시간)</span>
				<%for(int i=0;i<timelist.length;i++){ %>
				<div id="time1"><%=timelist[i]%></div>
				<%} %>
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
			<%if(place.equals("모짜르트홀")){ %>
			<div class="concert_seats">
				<img src="http://localhost:9090/images/concert_main/stage.png">
			</div>
			<div class="seat_all">
				<div class="seat_section">
					<span>A</span>
					<%
						int num =1;
						int z =1;
						while(z<7) {
							for(int i=1; i<7;i++) { %>	
					<a href=#>
						<span class="seat_num" id="A<%=num%>"><%=num %></span>
						<input type="hidden" id="A<%=num%>" class="seat_num_flag" value="0">
					</a>
					<%num++;
							} %>
							<br>
				<%	z++;
						} %>
				</div>
				<div class="seat_section">
					<span>B</span>
					<%
						num =1;
						z =1;
						while(z<7) {
							for(int i=1; i<10;i++) { %>
					<a href=#>
						<span class="seat_num" id="B<%=num%>" onclick=""><%=num %></span>
						<input type="hidden" id="B<%=num%>" class="seat_num_flag" value="0">
					</a>
					<%num++;
							} %>
							<br>
				<%	z++;
						} %>
				</div>
				<div class="seat_section">
					<span>C</span>
					<%
						num =1;
						z =1;
						while(z<7) {
							for(int i=1; i<7;i++) { %>
					<a href=#>
						<span class="seat_num" id="C<%=num%>"><%=num %></span>
						<input type="hidden" id="C<%=num%>" class="seat_num_flag" value="0">
					</a>
					<%num++;
							} %>
							<br>
				<%	z++;
						} %>
				</div>
			</div>
			<%}else if(place.equals("베토벤홀")){ %>
			<div class="concert_seats">
				<img src="http://localhost:9090/images/concert_main/concert_front2.png">
			</div>
			<div class="seat_all_b">	
				<div class="seat_section">
					<span>A</span>
					<%
						int num =1;
						int z =0;
						while(z<14) {
							for(int i=1; i<9;i++) { %>
					<a href=#>
						<span class="bseat_num" id="A<%=num%>"><%=num %></span>
						<input type="hidden" id="A<%=num%>" class="seat_num_flag" value="0">
					</a>
					<%num++;
							} %>
							<br>
				<%	z++;
						} %>
				</div>
				<div class="seat_section">
					<span>B</span>
					<%
						num =1;
						z =0;
						while(z<14) {
							for(int i=1; i<9;i++) { %>
					<a href=#>
						<span class="bseat_num" id="B<%=num%>"><%=num %></span>
						<input type="hidden" id="B<%=num%>" class="seat_num_flag" value="0">
					</a>
					<%num++;
							} %>
							<br>
				<%	z++;
						} %>
				</div>
			</div>
		<%} %>
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
                            <td class="taR" id="taR1">90,000원</td>
                            <td class="taL">
								<select name="SeatCount" class="SeatCount" id="SeatCount1">
                                    <!-- <option value="0">0매</option><option value="1">1매</option> -->
                                </select>
                            </td>
                      	</tr>
                      	<tr>
		                    <th>
		                    	기본할인<span class="pt"></span>
		                    </th>
	                   		<td>장애인 할인(동반1인까지)50%</td>
                            <td class="taR" id="taR2">45,000원</td>
                            <td class="taL">
								<select name="SeatCount" class="SeatCount" id="SeatCount2">
                                    <!-- <option value="0">0매</option><option value="1">1매</option> -->
                                </select>
                            </td>
                      	</tr>
                      	<tr>
		                    <th>
		                    	기본할인<span class="pt"></span>
		                    </th>
	                   		<td>국가유공자 할인(동반1인까지)50%</td>
                            <td class="taR" id="taR3">45,000원</td>
                            <td class="taL">
								<select name="SeatCount" class="SeatCount" id="SeatCount3">
                                    <!-- <option value="0">0매</option><option value="1">1매</option> -->
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
				<input type="radio" name="ticket_recive" value="1" checked="checked" class="ticket_recive"><span>현장수령</span>
				<input type="radio" name="ticket_recive" value="2" class="ticket_recive"><span>문자</span>
			</div>	
			<div class="check_user">
				<div>예매자 확인</div>
				<table class=user_checkT>
					 <tr>
	                    <th>이름</th>
	                    <td>
	                    	<input type="text" value="<%=mvo.getName() %>" maxlength="6" readonly="">  <span style="font-size:11px;"></span>                    
                    	</td>
	                </tr>
	                <tr>
	                    <th>생년월일</th>
	                    <td>
	                    	<input type="text" value="<%=mvo.getBirth() %>" maxlength="6" readonly="">  <span style="font-size:11px;">예) 850101 (YYMMDD)</span>                    
                    	</td>
	                </tr>
                    <tr class="exp">
                        <td colspan="2">현장수령 및 고객문의시 본인확인을 위해 정확한 정보를 입력해주세요.</td>
                    </tr>
                    <tr>
                        <th>휴대폰</th>
                            <td>
                            	<input type="text" id="HpNo1" value="<%=mvo.getPhone1() %>" style="width:36px;" class="txt1" maxlength="3" >
                            	 - <input type="text" id="HpNo2" value="<%=mvo.getPhone2() %>" style="width:41px;" class="txt1" maxlength="4"> 
                            	 - <input type="text" id="HpNo3" value="<%=mvo.getPhone3() %>" style="width:41px;" class="txt1" maxlength="4">
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
				<div>결제방식선택</div>
	            <table class="paymentT">
                    <tr id="Payment_1">
						<td><input type="radio"  name="Payment" value="1" checked="checked">
							<label>신용카드</label></td>
                    </tr>
                    <tr id="Payment_2">
						<td><input type="radio"  name="Payment" value="2">
							<label>무통장입금</label></td>
                    </tr>
	            </table>
       		</div>
       		<div class="payment_R">
            <div class="pay_input">결제수단 입력</div>
            <!-- //신용카드 -->
            <div class="input" style="display: block;" id="PaymentArea_1">
                <div>
                	<table class="payment_inputT">
	                	<tr>
	                		<td>신용카드정보</td>
	                	</tr>
	                	<tr>
	                		<td>
			                 	<input type="radio" checked="checked" name="PaymentSelect" id="PaymentSelect" value="C1" >       
			                 	<label for="">일반신용카드</label>       
			                 	<select id="DiscountCard" onchange="fnCardSelect(this.value);"><option value="62">KB국민카드</option><option value="67">BC카드</option><option value="65">삼성카드</option><option value="26006">현대카드</option><option value="26010">신한카드</option><option value="26008">롯데카드</option><option value="26011">하나카드</option><option value="63">외환카드</option><option value="26013">NH카드</option><option value="64">우리카드</option><option value="53">씨티카드</option><option value="73">수협카드</option><option value="37">전북카드</option><option value="34">광주카드</option><option value="35">제주카드</option><option value="26016">문화누리카드</option></select> <div id="divCardDetail01"></div>
	                		</td>
	                	</tr>
	                	<tr>
	                		<td>결제금액 : 150,000원</td>
	                	</tr>
                 	</table>
               	</div>
            </div>

            <!-- //무통장입금   -->
            <div class="input" style="display: none;" id="PaymentArea_2">
                <p class="stit">무통장입금</p>
                <div id="accountNum">
      				농협은행(123-02-037411, 예금주 : 예술의마당(주))<br>
      				우리은행(156-04-124510, 예금주 : 예술의마당(주))<br>
      				국민은행(342-22-548621, 예금주 : 예술의마당(주))<br>
      				신한은행(886-45-578945, 예금주 : 예술의마당(주))<br>
          		</div>
            </div>
            <!-- 무통장입금 //-->
        </div>
        <div id="agreement" class="agreement">
				<h3><img src="//ticketimage.interpark.com/TicketImage/onestop/txt_agree.gif" alt="개인정보 제3자 정보제공"></h3>
				<div class="btn_top">
					<a href="#agreement" class="btn_close2" id="btn_a_close2" onclick="layerClose()" style="display: none;"><img src="//ticketimage.interpark.com/TicketImage/onestop/btn_close1.gif" alt="상세닫기"></a>
					<a href="#agreement" class="btn_open" id="btn_a_open" onclick="layerOpen()" style="display: block;"><img src="//ticketimage.interpark.com/TicketImage/onestop/btn_open.gif" alt="상세보기"></a>				
				</div>
				<div id="agreement_box" class="box" style="height: 55px;">
					<br>
					예술의전당 입장권 판매 대행사인 (주)인터파크가 제공하는 서비스를 통하여 이용자간 거래관계가 이루어진 경우 고객응대 및 공연정보 안내 등을 위하여 관련한 정보는 필요한 범위내에서 거래 당사자에게 아래와 같이 제공됩니다.<br>
					<br>
					1. 개인정보 제공 동의<br>
					인터파크는 정보통신망 이용촉진 및 정보보호 등에 관한 법률에 따라 이용자의 개인정보에 있어<br>아래와 같이 알리고 동의를 받아 상품의 기획사 및 인터파크 고객센터에 제공합니다.<br>
					<br>
					2. 개인정보 제공받는자 <br>
					<span class="text_emphasis">인터파크 고객센터, (재) 국립오페라단</span><br>
					<br>
					3. 개인정보 이용 목적<br>
					<span class="text_emphasis">인터파크 고객센터 : 예매내역 확인 및 고객응대<br>
					기획사 : 티켓 현장발권, 캐스팅 변경, 공연취소 등에 대한 고객 안내, 티켓 정당 예매 확인 및 관련 업무 수행<br>
				</span>
					<br>
					4. 개인정보 제공 항목<br>
					<span class="text_emphasis">성명,아이디,전화번호,휴대폰번호,이메일주소,주문/배송 정보</span><br>
					<br>
					5. 개인정보 보유 및 이용 기간<br>
					<span class="text_emphasis">개인정보 이용목적 달성 시까지(단, 관계 법령의 규정에 의해 보존의 필요가 있는 경우 및 사전 동의를 득한 경우 해당 보유기간까지</span>
					<br><br>
				</div>
				<a href="#agreement" class="btn_close" id="btn_a_close" onclick="layerClose()" style="display: none;"><img src="//ticketimage.interpark.com/TicketImage/onestop/btn_close1.gif" alt="상세닫기"></a>
				<script>					
					function layerOpen(){
						document.getElementById('agreement_box').style.height = 'auto';
						document.getElementById('btn_a_close').style.display = 'block';
						document.getElementById('btn_a_close2').style.display = 'block';
						document.getElementById('btn_a_open').style.display = 'none';
					}
					function layerClose(){
						document.getElementById('agreement_box').style.height = '55px';
						document.getElementById('btn_a_close').style.display = 'none';
						document.getElementById('btn_a_close2').style.display = 'none';
						document.getElementById('btn_a_open').style.display = 'block';
					}
				</script>
			</div>
			<p class="check">
				<input id="CancelAgree"  type="checkbox">
				<label for="CancelAgree" class="check2">제3자 정보제공 내용에 동의합니다.</label>				
			</p>
    	</div>
	</div>
	<div class="ticketing_right">
		<div class="ticketing_info">
			<div class="ticketing_info_choice">
				<div class="ticketing_info_choice_img">
					<img src="http://localhost:9090/images/concert_main/<%=cvo.getC_poster()	%>">
				</div>
				<div class="ticketing_info_choice_text">
					<span><%=cvo.getC_title() %></span>
					<div id="text_space">		
						<ul>
                            <li><%=cvo.getC_sdate() %> ~ <%=cvo.getC_edate() %></li>
                            <li><span title="예술의전당 CJ 토월극장"><%=cvo.getC_place() %></span></li>
                            <li><%=cvo.getC_rating() %></li>
                            <li>관람시간 : <%=cvo.getC_time() %></li>
                        </ul>
.					</div>
				</div>
			</div>
			<div class="ticketing_info_my_ticket">
				<span>My 예매정보</span>
				<table class="myticket_t">
					<tr>
						<th scope="row">일시</th>
						<td></td>
					</tr>
					<tr>
						<th scope="row">선택좌석</th>
						<td></td>
					</tr>
					<tr>
						<th scope="row">티켓금액</th>
						<td></td>
					</tr>
					<tr>
						<th scope="row">할인</th>
						<td></td>
					</tr>
					<tr>
						<th scope="row">취소기한</th>
						<td></td>
					</tr>
					<tr>
						<th scope="row">취소수수료</th>
						<td></td>
					</tr>
					<tr>
						<th scope="row">총 결제 금액</th>
						<td>0원</td>
					</tr>
				</table>
				<button type="button" class="btn_next1" id="btn_next1">다음단계</button>
				<button type="button" class="btn_back" id="btn_back">이전단계</button>
				<button type="button" class="btn_next2" id="btn_next2">다음단계</button>
				<button type="button" class="btn_payment" id="btn_payment">결제하기</button>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Reservation_Service, com.madang.vo.*" %>
<%
	String id=(String)session.getAttribute("generalID");
	String tc_code=request.getParameter("tc_code");
	
	Reservation_Service service=new Reservation_Service();
	Concert_Reserv_VO cvo=service.getConcertReservContent(id, tc_code);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>
<script>
	$(document).ready(function(){
		
		var pw_msg="";
		
		//예매취소 체크박스/비밀번호 체크
		$("button#cc_btn").click(function(){
			if($("input:checkbox[id='out']").is(":checked")) {
				if($("input#out_pw_cfm").val()=="") {
					alert("비밀번호를 입력해주세요");
					$("input#out_pw_cfm").focus();
				} else {
					
					if(pw_msg=="비밀번호 확인이 완료되었습니다.") {
						alert("d");
						//location.href="reserv_cc_process.jsp?tc_code=";
						
					} else {
						alert("비밀번호를 다시 입력해주세요")
						$("input#out_pw_cfm").focus();
					}
					
				}
			} else {
				alert("동의 후 진행해주세요");
			}
		});
		
		
		//비밀번호 확인
		$("input#out_pw_cfm").blur(function(){
			var u_pw=$("input#out_pw_cfm").val();
			
			$.ajax({
				url:"mem_pw_process.jsp?pw="+u_pw,
				success:function(result){
					if(u_pw!="") {
						if(result!=0) { //비밀번호 일치
							$("span#pw_check_result").text("비밀번호 확인이 완료되었습니다.");
							pw_msg=$("span#pw_check_result").text();
						} else {
							$("span#pw_check_result").text("비밀번호가 일치하지 않습니다.");
							pw_msg=$("span#pw_check_result").text();
						}
					}
				}
			});
			
		});
		
	});
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
				<li><a href="mypage_bookmark.jsp">찜한 공연/전시</a></li>
			</ul>
		</div>

		<div id="main_title">예매 취소</div>
		
		<div class="ticket_box_2">
			<h2>티켓정보</h2>
			<br>
			<table border=1>
				<tr>
					<td>공연명</td>
					<td colspan=3><%= cvo.getC_title() %></td>
				</tr>
				<tr>
					<td>좌석</td> <!-- 전시: 매수 -->
					<td colspan=3><%= cvo.getTc_cseat() %></td>
				</tr>
				<tr>
					<td>관람일</td>
					<td><%= cvo.getTc_cdate() %></td>
					<td>취소기한</td>
					<td><%= cvo.getTc_canceld() %></td>
				</tr>
				<tr>
					<td>예매번호</td>
					<td><%= cvo.getTc_code() %></td>
					<td>예매일</td>
					<td><%= cvo.getTc_time() %></td>
				</tr>
				<tr>
					<td>결제일</td>
					<td><%= cvo.getP_date() %></td>
					<td>결제수단</td> <!-- 0 무통장, 나머지 카드 -->
					<% if(cvo.getTc_payw().equals("0")) { %>
						<td>가상계좌</td>
					<% } else { %>
						<td>신용카드</td>
					<% } %>
				</tr>
				<tr>
					<td>결제금액</td>
					<td><%= cvo.getTc_price2() %>원</td>
					<td>환불금액</td>
					<td><%= (int)(cvo.getTc_price2()*0.9) %>원</td>
				</tr>
				
				
			</table>
		</div>
		
		<div class="out_box">
			<h2>유의사항</h2>
			<br>취소수수료는 총 결제액의 10%로 산정되며, 수수료를 제외한 금액이 환불됩니다.
			<br>예매취소시점과 해당 카드사의 환불 처리기준에 따라 취소금액의 환급방법과 환급일은 다소 차이가 있을 수 있습니다.
			<br>
			<br>예매취소 완료 후에는 이전 상태로 되돌릴 수 없습니다.
		</div>
		
		<div class="out_cfm">
			<input type="checkbox" id="out"> 안내사항을 모두 확인하였으며, 이에 동의합니다.
		</div>
		
		<div id="out_pw_cfm">
			<input type="password" name="out_pw_cfm" id="out_pw_cfm" placeholder="비밀번호를 입력해주세요">
			<br><br><span id="pw_check_result"></span>
		</div>
		
		<div class="button">
			<button type="button" id="cc_btn" class="button_a">예매취소</button>
			<a href="mypage_reserv_details.jsp?tc_code=<%= cvo.getTc_code() %>"><button type="button" id="out_btn" class="button_b">취소</button></a>
		</div>

	</div>
</body>
</html>
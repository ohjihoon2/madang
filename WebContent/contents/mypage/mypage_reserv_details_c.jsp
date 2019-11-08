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

		<div id="main_title">예매내역 확인</div>
		
		<div class="body">
		
		<div class="ticket_box_3">
			<h2>공연정보</h2>
			<br>
			<a href="http://localhost:9090/contents/concert/concert_detail.jsp?concert_code=<%= cvo.getConcert_code() %>">
				<img id="poster" src="http://localhost:9090/images/concert_main/<%= cvo.getC_sposter() %>" class="bmark_poster">
			</a>
			<table border=1>
				<tr>
					<td>예매번호</td>
					<td><%= cvo.getTc_code() %></td>
				</tr>
				<tr>
					<td>공연명</td>
					<td><%= cvo.getC_title() %></td>
				</tr>
				<tr>
					<td>관람일</td>
					<td><%= cvo.getTc_cdate() %></td>
				</tr>
				<tr>
					<td>장소</td>
					<td><%= cvo.getC_place() %></td>
				</tr>
				<tr>
					<!-- 전시: 매수 -->
					<td>좌석</td>
					<td><%= cvo.getTc_cseat() %></td>
				</tr>
				<tr>
					<td>예매자</td>
					<td><%= cvo.getTc_name() %></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td><%= cvo.getTc_phone() %></td>
				</tr>
			</table>
		</div>
		
		<div class="clear"></div>
		
		<div class="ticket_box_1">
			<h2>결제정보</h2>
			<br>
			<table border=1>
				<tr>
					<td>예매번호</td>
					<td><%= cvo.getTc_code() %></td>
				</tr>
				<tr>
					<td>예매일</td>
					<td><%= cvo.getTc_time() %></td>
				</tr>
				<tr>
					<td>예매상태</td> <!-- 결제상태 가공 -->
					<% if(cvo.getTc_pays().equals("wait")) { %>
						<td>결제대기</td>
					<% } else if(cvo.getTc_pays().equals("complete")) { %>
						<% if(cvo.getStatus()<1) { %> <!-- 관람 당일까지 -->
							<td>예매완료</td>
						<% } else if(cvo.getStatus()>=1) { %> <!-- 관람일 이후 -->
							<td>관람완료</td>
						<% } %>
					<% } %>
				</tr>
				<tr>
					<td>티켓수령</td>
					<% if(cvo.getTc_recive().equals("1")) { %>
						<td>현장수령</td>
					<% } else if(cvo.getTc_recive().equals("2")) { %>
						<td>문자</td>
					<% } %>
				</tr>
				<tr>
					<td>결제일</td>
					<td><%= cvo.getP_date() %></td>
				</tr>
				<tr>
					<td>결제수단</td> <!-- 0 무통장, 나머지 카드 -->
					<% if(cvo.getTc_payw().equals("0")) { %>
						<td>가상계좌</td>
					<% } else { %>
						<td>신용카드</td>
					<% } %>
				</tr>
				<tr>
					<td>결제상태</td>
					<% if(cvo.getTc_pays().equals("wait")) { %>
						<td>결제대기</td>
					<% } else if(cvo.getTc_pays().equals("complete")) { %>
						<td>결제완료</td>
					<% } %>
				</tr>
				<!-- <tr>
					<td>가격</td>
					<td>200,000</td>
				</tr>
				<tr>
					<td>할인금액</td>
					<td>20,000</td>
				</tr> -->
				<tr>
					<td>총 결제금액</td>
					<td><%= cvo.getTc_price2() %>원</td>
				</tr>
				<tr>
					<td>취소기한</td>
					<td><%= cvo.getTc_canceld() %></td>
				</tr>
			</table>
		</div>
		
		<div class="button">
			<a href="mypage_reserv_list.jsp"><button type="button" id="out_btn" class="button_b">목록</button></a>
			<a href="mypage_reserv_cc_c.jsp?tc_code=<%= cvo.getTc_code() %>"><button type="button" id="out_btn" class="button_b">예매취소</button></a>
		</div>
		
		</div>
		
	</div>
	<jsp:include page="../../footer.jsp" />
</body>
</html>
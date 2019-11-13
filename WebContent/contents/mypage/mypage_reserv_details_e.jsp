<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Reservation_Service, com.madang.vo.*" %>
<%
	String id=(String)session.getAttribute("generalID");
	String te_code=request.getParameter("te_code");
	
	System.out.println("details_e");
	System.out.println(id);
	System.out.println(te_code);
	System.out.println();
	
	Reservation_Service service=new Reservation_Service();
	Exhib_Reserv_VO evo=service.getExhibReservContent(id, te_code);
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
			<a href="http://localhost:9090/contents/exhibition/exhibition_detail.jsp?exhibition_code=<%= evo.getExhibition_code() %>">
				<img id="poster" src="http://localhost:9090/images/exhibition/<%= evo.getE_sposter() %>" class="bmark_poster">
			</a>
			<table border=1>
				<tr>
					<td>예매번호</td>
					<td><%= evo.getTe_code() %></td>
				</tr>
				<tr>
					<td>전시명</td>
					<td><%= evo.getE_title() %></td>
				</tr>
				<tr>
					<td>관람일</td>
					<td><%= evo.getE_sdate() %> ~ <%= evo.getE_edate() %></td>
				</tr>
				<tr>
					<td>장소</td>
					<td><%= evo.getE_place() %></td>
				</tr>
				<tr>
					<td>매수</td>
					<td><%= evo.getTe_cticket() %>매</td>
				</tr>
				<tr>
					<td>예매자</td>
					<td><%= evo.getTe_name() %></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td><%= evo.getTe_phone() %></td>
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
					<td><%= evo.getTe_code() %></td>
				</tr>
				<tr>
					<td>예매일</td>
					<td><%= evo.getTe_time() %></td>
				</tr>
				<tr>
					<td>예매상태</td> <!-- 결제상태 가공 -->
					<% if(evo.getTc_pays().equals("wait")) { %>
						<td>결제대기</td>
					<% } else if(evo.getTc_pays().equals("complete")) { %>
						<% if(evo.getStatus()<1) { %> <!-- 관람 당일까지 -->
							<td>예매완료</td>
						<% } else if(evo.getStatus()>=1) { %> <!-- 관람일 이후 -->
							<td>관람완료</td>
						<% } %>
					<% } %>
				</tr>
				<tr>
					<td>티켓수령</td>
					<% if(evo.getTe_recive().equals("1")) { %>
						<td>현장수령</td>
					<% } else if(evo.getTe_recive().equals("2")) { %>
						<td>문자</td>
					<% } %>
				</tr>
				<tr>
					<td>결제일</td>
					<td><%= evo.getP_date() %></td>
				</tr>
				<tr>
					<td>결제수단</td> <!-- 0 무통장, 나머지 카드 -->
					<% if(evo.getTc_payw().equals("0")) { %>
						<td>가상계좌</td>
					<% } else { %>
						<td>신용카드</td>
					<% } %>
				</tr>
				<tr>
					<td>결제상태</td>
					<% if(evo.getTc_pays().equals("wait")) { %>
						<td>결제대기</td>
					<% } else if(evo.getTc_pays().equals("complete")) { %>
						<td>결제완료</td>
					<% } %>
				</tr>
				<tr>
					<td>총 결제금액</td>
					<td><%= evo.getTe_price() %></td>
				</tr>
				<tr>
					<td>취소기한</td>
					<td><%= evo.getTe_canceld() %></td>
				</tr>
			</table>
		</div>
		
		<div class="button">
			<a href="mypage_reserv_list.jsp"><button type="button" id="out_btn" class="button_b">목록</button></a>
			<a href="mypage_reserv_cc_e.jsp?te_code=<%= evo.getTe_code() %>"><button type="button" id="out_btn" class="button_b">예매취소</button></a>
		</div>
		
		</div>
		
	</div>
	<jsp:include page="../../footer.jsp" />
</body>
</html>
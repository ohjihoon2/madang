<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Reservation_Service, com.madang.vo.*, java.util.ArrayList" %>
<%
	String id=(String)session.getAttribute("generalID");
	Reservation_Service service=new Reservation_Service();
	
	ArrayList<Concert_Reserv_VO> clist=new ArrayList<Concert_Reserv_VO>();
	clist=service.getConcertReservList(id);
	
	ArrayList<Exhib_Reserv_VO> elist=new ArrayList<Exhib_Reserv_VO>();
	elist=service.getExhibReservList(id);
	
%>
document.write(<%= id %>);
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
		
		<div class="ticket_box_0">
			<h2>공연</h2>
			<br>
			<table border=1>
				<tr>
					<th>예매일</th>
					<th>예매번호</th>
					<th>공연명</th>
					<th>관람일</th>
					<th>매수</th>
					<th>현재상태</th>
				</tr>
				<!-- 
				<tr onClick="location.href='mypage_reserv_details.jsp'">
				한 행 전체에 링크 확인~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					<td>2019-09-30</td>
					<td> class="rnum">> <a href="mypage_reserv_details.jsp">T45621</a></td>
					<td>bbbb</td>
					<td>2019-11-30</td>
					<td>2매</td>
					<td>결제완료</td>
				</tr>
				 -->
				<% for(Concert_Reserv_VO cvo:clist) { %>
					<tr onClick="location.href='mypage_reserv_details_c.jsp?tc_code=<%= cvo.getTc_code() %>'">
						<td><%= cvo.getTc_time() %></td>
						<td><%= cvo.getTc_code() %></td>
						<td><%= cvo.getC_title() %></td>
						<td><%= cvo.getTc_cdate() %></td>
						
						<!-- 좌석 매수 -->
						<% String seats=cvo.getTc_cseat(); String[] seat=seats.split(" /"); int num=seat.length;%>
						<td><%= num %>매</td>
						
						<!-- 현재상태 -->
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
				<% } %>
				
			</table>
		</div>
		
		<div class="ticket_box_0">
			<h2>전시</h2>
			<br>
			<table border=1>
				<tr>
					<th>예매일</th>
					<th>예매번호</th>
					<th>전시명</th>
					<th>관람일</th>
					<th>매수</th>
					<th>현재상태</th>
				</tr>
				
				<% for(Exhib_Reserv_VO evo : elist) { %>
					<tr onClick="location.href='mypage_reserv_details_e.jsp?te_code=<%= evo.getTe_code() %>'">
						<td><%= evo.getTe_time() %></td>
						<td><%= evo.getTe_code() %></td>
						<td><%= evo.getE_title() %></td>
						<td><%= evo.getE_sdate() %> ~ <%= evo.getE_edate() %></td>
						<td><%= evo.getTe_cticket() %>매</td>
						
						<!-- 현재상태 -->
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
				<% } %>
				
			</table>
		</div>
		
	</div>
</body>
</html>
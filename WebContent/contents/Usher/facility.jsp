<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/usher.css"/>
<script src="http://localhost:9090/js/madang.js"></script>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="location.jsp">이용안내</a></li>
				<li><a href="location.jsp">오시는길</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="facility.jsp">시설안내</a></li>
				<li><a href="utility_concert.jsp">편의시설</a></li>
				<li><a href="etiquette_concert.jsp">관람매너</a></li>
				<li><a href="respecting_ticket.jsp">우대사항</a></li>
			</ul>
		</div>

		<div id="main_title">시설안내</div>
		<br>

		<div class="facility_map">안내도</div>
		<div class="img_div">
<!-- 			<img class="etiquette_img"
				src="http://localhost:9090/MyJSP/sns_icon/facility_map.png" /> -->		
		</div>
		

		<div class="facility_map">시설안내</div>
		<section> 
			<a href="../concert/concert_seat_beethoven.jsp"><article class="facility_img"> 
				<img src="http://localhost:9090/images/comm_usher_img/f_operahall.gif"/>
				<label>베토벤홀</label><p>관람석 총 1,004석 | 일반판매 915석 | 판매유보 9석</p></article></a>
			
			<a href="../concert/concert_seat_mozart.jsp"><article class="facility_img">
				<img src="http://localhost:9090/images/comm_usher_img/f_concerthall.gif"/> 
				<label>모차르트홀</label><p>관람석 총 600석 | 일반판매 594석 | 휠체어석 6석</p></article></a>
				
			<a href="../exhibition/exhibition_view_picasso.jsp"><article class="facility_img"> 
				<img src="http://localhost:9090/images/comm_usher_img/f_picaso.gif"/> 
				<label>피카소관</label><p>본관 전체 3층 총 6개 전시실</p></article></a>
				 
			<a href="../exhibitionexhibition_view_davinci.jsp"><article class="facility_img"> 
				<img src="http://localhost:9090/images/comm_usher_img/f_davinch.gif"/> 
				<label>다빈치관</label><p>본관 전체 3층 중 1층 총 3개 전시실</p></article></a> 
				
			<a href="../exhibitionexhibition_view_jihoon.jsp"><article class="facility_img"> 
				<img src="http://localhost:9090/images/comm_usher_img/f_ojihoon.gif"/> 
				<label>오지훈관</label><p>비타민스테이션 내 소규모 전시공간</p></article></a> 
		</section>

	</div>
</body>
</html>
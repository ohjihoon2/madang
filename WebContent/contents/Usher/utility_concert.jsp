<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/usher.css"/>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="location.jsp">이용안내</a></li>
				<li><a href="location.jsp">오시는길</a></li>
				<li><a href="facility.jsp">시설안내</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="utility_concert.jsp">편의시설</a></li>
				<li><a href="etiquette_concert.jsp">관람매너</a></li>
			</ul>
		</div>

		<div id="main_title">편의시설</div>
		
		<br><br><br><br>		
		<div id="Sub_btn">
			<a href="http://localhost:9090/contents/Usher/utility_exhibition.jsp"><span style="color:rgb(5, 135, 94);background:white" id="EE">전시장 편의시설</span></a>
			<a href="http://localhost:9090/contents/Usher/utility_concert.jsp"><span style="color:white;background:rgb(5, 135, 94)" id="CE">공연장 편의시설</span></a>
			
		</div>
		<br><br>
		
<div id="content">
		<div id="utility_list">공연장 편의 시설 안내</div>
		<div id="utility_list1">오페라글라스, 물품보관소, 키즈라운지, 수유실, 주차요금 사전정산기,
			은행 ATM</div>
		<div id="utility_list2">*이용문의 02-580-1300 (09:00~20:00)</div>
		<div>
			<section> <article class="utility_ariticle"> <img
				src="http://localhost:9090/images/comm_usher_img/utility_glasses.gif"> <label class="u_lb">오페라글라스</label>
			<p>대여료 3,000원 / 신분증을 맡기고 대여</p><p>운영시간 공연 시작 30분 전 ~ 공연 종료 후 10분간</p></article> <article class="utility_ariticle"> <img
				src="http://localhost:9090/images/comm_usher_img/utility_cabinet.gif"> <label class="u_lb">물품보관소</label><p>객석 내 가지고 들어갈 수 없는 물품이나
두꺼운 외투 등을 맡아 드립니다.</p><p>운영시간 공연 시작 30분 전 ~ 공연 종료 후 10분간</p>
			</article> <article class="utility_ariticle"> <img
				src="http://localhost:9090/images/comm_usher_img/utility_kidzRound.gif"> <label class="u_lb">키즈라운지</label><p>36개월 ~ 8세 미만 어린이</p><p>당일 공연 입장권과 신분증 지참 요망</p>
			</article> </section>
			<section> <article class="utility_ariticle"> <img
				src="http://localhost:9090/images/comm_usher_img/utility_mroom.gif"> <label class="u_lb">수유실</label><p>베토벤하우스 2층 : 09:00 ~ 23:00</p><p>한가람미술관 1층 : 09:00 ~ 20:00</p>
			</article> <article class="utility_ariticle"> <img
				src="http://localhost:9090/images/comm_usher_img/utility_parkingfee.gif"> <label class="u_lb">주차요금
				사전정산기</label><p>베토벤관*모차르트관 1층</p><p>피카소관*다비치관 1층</p></article> <article class="utility_ariticle"> <img
				src="http://localhost:9090/images/comm_usher_img/utility_atm.gif"> <label class="u_lb">은행ATM</label><p>우리은행 ATM : 오지훈관 로비</p><p>IBK 기업은행 ATM : 야외 광장</p>
			</article> </section>
		</div>
</div>		
	</div>
</body>
</html>
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

		<div id="utility_list">전시장 편의 시설 안내</div>
		<div id="utility_list1">오디오 가이드, 사물함, 휠체어/유모차 대여, 수유실, 주차사전정산</div>
		<div id="utility_list2">*이용문의 02-580-1300 (09:00~20:00)</div>
		<div id="section">
			<section> <article class="utility_ariticle"> <img
				src="http://localhost:9090/images/comm_usher_img/u_odio.gif"> <label>오디오
				가이드</label> <p>신분증 제시 + 소정의 대여료</p>
			<p>각 전시장 입구 대여소</p> </article> <article class="utility_ariticle">
			<img src="http://localhost:9090/images/comm_usher_img/utility_cabinet.gif">
			<label>사물함</label> <p>비타민스테이션, 피카소관 1층,</p>
			<p>다빈치관 2층, 09:00 ~ 20:00 (동절기 19:00)</p> </article> <article
				class="utility_ariticle"> <img
				src="http://localhost:9090/images/comm_usher_img/u_wheelchair.gif"> <label>휠체어/유모차
				대여</label><p>신분증 제시 + 소정의 대여료</p><p>각 전시장 입구 대여소</p></article></section>

			<section> <article class="utility_ariticle"> <img
				src="http://localhost:9090/images/comm_usher_img/utility_mroom.gif"><label>수유실</label> <p>신분증 제시 + 소정의 대여료</p>
			<p>각 전시장 입구 대여소</p>
			</article> <article class="utility_ariticle"> <img
				src="http://localhost:9090/images/comm_usher_img/utility_parkingfee.gif"><label>주차요금정산소
				가이드</label> <p>신분증 제시 + 소정의 대여료</p>
			<p>각 전시장 입구 대여소</p>
		</div>
	</div>
</body>
</html>
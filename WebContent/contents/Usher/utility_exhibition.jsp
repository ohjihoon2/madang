<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/usher.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	$("p").hide();
	$("img#audio").click(function(){
		$("p.audio").toggle();
	});
	$("img#cabinet").click(function(){
		$("p.cabinet").toggle();
	});
	$("img#wheelchair").click(function(){
		$("p.wheelchair").toggle();
	});
	$("img#momroom").click(function(){
		$("p.momroom").toggle();
	});
	$("img#parkingfee").click(function(){
		$("p.parkingfee").toggle();
	});
});
</script>
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
				<li><a href="respecting_ticket.jsp">우대사항</a></li>
			</ul>
		</div>

		<div id="main_title">편의시설</div>

		<br><br><br><br>		
		<div id="Sub_btn">
			<a href="http://localhost:9090/contents/Usher/utility_concert.jsp"><span style="color:rgb(5, 135, 94);background:white" id="CE">공연장 편의시설</span></a>
			<a href="http://localhost:9090/contents/Usher/utility_exhibition.jsp"><span style="color:white;background:rgb(5, 135, 94)" id="EE">전시장 편의시설</span></a>
		</div>
		<br><br>


		<div id="utility_list">전시장 편의 시설 안내</div>
		<div id="utility_list1">오디오 가이드, 사물함, 휠체어/유모차 대여, 수유실, 주차사전정산</div>
		<div id="utility_list2">*이용문의 02-580-1300 (09:00~20:00)</div>
		<div id="section">
			<section> 
			<article class="utility_ariticle"> <img id="audio"
				src="http://localhost:9090/images/comm_usher_img/utility_audio.gif"> <label>오디오
				가이드</label> <p class="audio">신분증 제시 + 소정의 대여료</p><p class="audio">각 전시장 입구 대여소</p> </article> 
			<article class="utility_ariticle">
				<img id="cabinet" src="http://localhost:9090/images/comm_usher_img/utility_cabinet.gif">
				<label>사물함</label> <p class="cabinet">비타민스테이션, 피카소관 1층,</p><p class="cabinet">다빈치관 2층, 09:00 ~ 20:00 (동절기 19:00)</p> </article>
			<article
				class="utility_ariticle"> <img id="wheelchair"
				src="http://localhost:9090/images/comm_usher_img/utility_wheelchair.gif"> <label>휠체어/유모차
				대여</label><p class="wheelchair">신분증 제시 + 소정의 대여료</p><p class="wheelchair">각 전시장 입구 대여소</p></article></section>

			<section> <article class="utility_ariticle"> <img id="momroom"
				src="http://localhost:9090/images/comm_usher_img/utility_mroom.gif"><label>수유실</label> <p class="momroom">신분증 제시 + 소정의 대여료</p>
			<p class="momroom">각 전시장 입구 대여소</p>
			</article> <article class="utility_ariticle"> <img id="parkingfee"
				src="http://localhost:9090/images/comm_usher_img/utility_parkingfee.gif"><label>주차요금정산소</label> <p class="parkingfee">신분증 제시 + 소정의 대여료</p>
			<p class="parkingfee">각 전시장 입구 대여소</p>
		</div>
	</div>
</body>
</html>
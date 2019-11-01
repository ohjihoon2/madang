<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>		
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/usher.css"/>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="location.jsp">이용안내</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="location.jsp">오시는길</a></li>
				<li><a href="facility.jsp">시설안내</a></li>
				<li><a href="utility_concert.jsp">편의시설</a></li>
				<li><a href="etiquette_concert.jsp">관람매너</a></li>
			</ul>
		</div>

		<div id="main_title">오시는길</div>

		<div id="location_path">예술의 마당 오시는 길</div>
		<div id="location_addr_div">
			<span id="location_addr">주소</span> <span id="location_addr1">도로명
				서울특별시 강남구 테헤란로 132</span>
		</div>
		<div id="location_addr_div">
			<span id="location_addr2">지번 서울특별시 강남구 역삼동 735</span>
		</div>
		<div id="location_building_div">
			<span id="location_building">건물명</span><span id="location_building1">예술의
				마당 : 베트벤홀 모차르트홀 피카소관 다빈치관 오지훈관</span>
		</div>
		
		<div id="btnFindingPath_div">
		<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3165.3748167059625!2d127.0312321744784!3d37.49907704085682!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1z7ZWc64-F67mM65Sp!5e0!3m2!1sko!2skr!4v1571614812695!5m2!1sko!2skr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
		</div>
		<div class="notice_div">
			<img src="http://localhost:9090/images/comm_usher_img/etiquette_bottom.PNG" />
		</div>
	</div>
</body>
</html>
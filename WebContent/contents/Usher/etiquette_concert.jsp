<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
				<li><a href="facility.jsp">시설안내</a></li>
				<li><a href="utility_concert.jsp">편의시설</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="etiquette_concert.jsp">관람매너</a></li>
				<li><a href="respecting_ticket.jsp">우대사항</a></li>
			</ul>
		</div>

		<div id="main_title">관람매너</div>
		<br>
		<div id="Sub_btn">
		<a href="http://localhost:9090/contents/Usher/etiquette_exhibition.jsp"><span style="color:rgb(5, 135, 94);background:white" id="EE">전시매너</span></a>
			<a href="http://localhost:9090/contents/Usher/etiquette_concert.jsp"><span style="color:white;background:rgb(5, 135, 94)" id="CE">관람매너</span></a>
			
		</div>

		<div id="sub_title">공연장 오기 전</div>
		<div class="etti_content">
			<img class="etiquette_img"
				src="http://localhost:9090/images/comm_usher_img/etiquette_before_consert.PNG" />
		</div>


		<div id="sub_title">공연장에서</div>
		<div class="etti_content">
			<img class="etiquette_img"
				src="http://localhost:9090/images/comm_usher_img/etiquette_in_consert.PNG" />
		</div>


		<div id="sub_title">박수매너</div>
		<div class="etti_content">
			<img class="etiquette_img"
				src="http://localhost:9090/images/comm_usher_img/etiquette_applauds.PNG" />
		</div>

		<div class="etti_content">
			<img class="etiquette_img"
				src="http://localhost:9090/images/comm_usher_img/etiquette_bottom.PNG" />
		</div>
	</div>
	
	<jsp:include page="../../footer.jsp"/>	
</body>
</html>
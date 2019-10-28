<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	*{
		font-family:"나눔스퀘어라운드";
		padding:0px;
		margin:0px;
	}
	body{
		margin:auto;
		/* text-align:center; */
	}
	
	/** 타이틀 & 공연날짜 **/
	div#main_title{
		width:900px;
		border-bottom:3px solid rgb(5,135,94);
		border-left:15px solid rgb(5,135,94);
		display:inline-block;
		margin:100px 0px 0px 70px;
		font-size:30pt;
		font-weight:bold;
		text-align:left;
	}
	div#date_info{
		display:inline-block;
		margin:30px 0px 50px 70px;
		
	}
	
	/** 왼쪽 nav **/
	
	#left_nav{
		width:180px;
		margin:180px -20px 0px 200px;
		padding-right:30px;
		display:inline-block;
		float:left;
		text-decoration:none;		
		color:rgb(34,34,34);
	}
	div#left_nav>ul{
		border-right:2px solid #9b9b9b;
		text-align:center;
		list-style-type:none;;		
	}
	div#left_nav>ul>li{
      height:50px;
   }
	div#left_nav>ul>li:nth-child(1) {
		font-size:20pt;
		font-style: bold;
		margin-bottom:10px;
		margin-right:20px;
	}
	
	div#left_nav>ul>li>a{
		text-decoration: none;
		color:black;
	}
		
	div#left_nav>ul>li>a:hover {
		color: rgb(155,155,155);
	}
	div#left_nav>ul>li>a:active {
		color: rgb(155,155,155);
	}
	
/** 중앙 concert contents **/
div#location_path, span#location_addr, span#location_addr1, span#location_addr2,
	span#location_building, span#location_building1 {
	font-size: 15pt;
	padding: 5px;
	text-align: center;
	margin: auto;
}

div#location_path {
	border-bottom: 1px solid #9b9b9b;
	width: 900px;
	font-size: 20pt;
	font-weight: bold;
	text-align: left;
	margin-top: 50px;
	margin-bottom: 50px;
	display: inline-block;
	margin-left: 80px;
}

div#location_addr_div, div#location_building_div, div#btnFindingPath_div
	{
	margin: auto;
	padding: 20px;
	width: 800px;
}

span#location_addr2 {
	padding-left: 100px;
}

button#btnFindingPath {
	background: white;
	color: rgb(5, 135, 94);
	font-weight: bold;
	font-size: 15pt;
	border: 2px solid #9b9b9b;
	border-radius: 7px;
	padding: 10px 15px 10px 15px;
	float: right;
}

span#location_addr, span#location_building {
	border: 1px solid #f5f5f5;
	border-radius: 7px;
	padding: 4px 20px 4px 20px;
	text-decoration: none;
}

span#location_addr {
	padding: 4px 26px 4px 26px;
}

a>button ##btnFindingPath {
	text-decoration: none;
}

div#btnFindingPath_div {
	border-bottom: 1px solid #9b9b9b;
	width: 900px;
	margin:auto;
	text_align:center;
}

div.img_div {
	border-bottom: 1px solid #9b9b9b;
	padding: 10px 0px 50px 0px;
	width: 1000px;
	margin: auto;
}

div.img_div>img {
	width: 1000px;
}

iframe {
	width:900px;
	border-radius: 10px;
}
</style>
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
		<div class="img_div">
			<img src="http://localhost:9090/images/comm_usher_img/etiquette_bottom.PNG" />
		</div>
	</div>
</body>
</html>
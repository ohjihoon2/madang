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
div#content{
	width: 1000px;
	margin:auto;
}
div#utility_list {
	width: 1000px;
	font-size: 20pt;
	text-align: left;
	margin-top: 50px;
	margin-bottom: 50px;
	padding-left: 50px;
}

div#utility_list1, div#utility_list2 {
	padding-left:70px;
	font-size: 10pt;
	text-align: left;
	color: #9b9b9b;
}

div.img_div {
	border-bottom: 1px solid #9b9b9b;
	padding: 10px 0px 50px 0px;
	width: 1000px;
	margin: auto;
}

article.utility_ariticle {
	border: 1px solid #ccc;
	width: 260px;
	height: 350px;
	display: inline-block;
	padding: 10px;
	margin: 20px;
	border-radius: 7px;
	text-align: center;
}

article.utility_ariticle>img:hover {
	opacity: 0.7;
}

article.utility_ariticle>img {
	width: 250px;
	height: 200px;
	margin-bottom: 5px;
	border: 1px solid #ccc;
}

section {
	text-align: center;
}

section label.u_lb{
	font-size:12pt;
	font-weight:bold;
	color:gray;
	margin:7px;
	padding:5px;
	border:1px solid #9b9b9b;
	border-radius:5px;
	display:inline-block;	
}

section p{
	font-size:9pt;
	color:gray;
	padding:5px;
}

</style>
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
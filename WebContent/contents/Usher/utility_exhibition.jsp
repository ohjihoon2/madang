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
div#utility_list {
	width: 1000px;
	font-size: 20pt;
	text-align: left;
	margin:50px;
	padding:30px;
	margin:auto;
}

div#utility_list1, div#utility_list2 {
	width: 900px;
	font-size: 10pt;
	text-align: left;
	color: #9b9b9b;
	margin:auto;
}

div.img_div {
	border-bottom: 1px solid #9b9b9b;
	padding: 10px 0px 50px 0px;
	width: 1000px;
	margin: auto;
}

div#section{
	margin:auto;
	width:1000px;
	padding:50px;
}

article.utility_ariticle {
	border:1px solid red;
	border: 1px solid #ccc;
	width: 260px;
	height: 300px;
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

section label{
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
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
div.facility_map {
	width: 1000px;
	font-size: 20pt;
	text-align: left;
	padding:50px;
	margin:auto;
}

div.img_div {
	border-bottom: 1px solid #9b9b9b;
	padding: 10px 10px 50px 10px;
	width: 1000px;
	height: 950px;
	margin: auto;
	background-image:url("http://localhost:9090/MyJSP/sns_icon/facility_map.PNG");
	background-repeat:no-repeat;
}


article.facility_img {
	border: 1px solid #ccc;
	width: 180px;
	display: inline-block;
	padding: 10px;
	border-radius: 7px;
	text-align: center;

}

article#facility_img1, article#facility_img2, article#facility_img3,
article#facility_img4, article#facility_img5{
	width: 180px;
	display: inline-block;
	padding: 10px;
	border-radius: 7px;
	text-align: center;
	background:rgb(5,135,94);
	color:white;
}

article#facility_img1{
	width: 160px;
}

article.facility_img>img:hover {
	opacity: 0.7;
}

article.facility_img>img {
	width: 180px;
	height: 150px;
	margin-bottom: 5px;
	border-radius: 5px;
	border: 1px solid #ccc;
}

section {
	text-align: center;
	margin-bottom:100px;
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
				<li><a style="color: rgb(5, 135, 94)" href="facility.jsp">시설안내</a></li>
				<li><a href="utility.jsp">편의시설</a></li>
				<li><a href="etiquette_concert.jsp">관람매너</a></li>
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
			<a href=""><article class="facility_img"> 
				<img src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png">
				<label>베트벤홀</label></article></a>
			<a href=""><article class="facility_img">
				<img src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png"> 
				<label>모차르트홀</label></article></a>
			<a href=""><article class="facility_img"> 
				<img src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png"> 
				<label>피카소관</label></article></a>
			<a href=""><article class="facility_img"> 
				<img src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png"> 
				<label>다빈치관</label></article></a> 
			<a href=""><article class="facility_img"> 
				<img src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png"> 
				<label>오지훈관</label></article></a> 
		</section>

	</div>
</body>
</html>
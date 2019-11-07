<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>
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
	.concert_button{
		width:80%;
		text-align:center;
		margin: 20px 0px 20px -40px;
	}
	
	.btn_hall{
		background:rgb(155,155,155);
		padding:10px;
		color:white;
	}
	div.exhibition_view{
		width:1000px;
		height:300px;
		margin:auto;
	}
	
	h1 , h2{
		text-align:center;
		padding:8px;
		margin:auto;
	}
	
	div.exhibition_view>img{
		display:block;
		margin:auto;
	}
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<img src="http://localhost:9090/images/concert_main/people-2590551_1920_1.jpg">
	<div id="left_nav">
		<ul>
			<li><a href="exhibition.jsp">전시</a></li>
			<li><a href="exhibition.jsp" >전시일정</a></li>
			<li><a href="exhibition_view_Picasso.jsp" style="color:rgb(5,135,94)" >전시장안내</a></li>
		</ul>
	</div>
	<div id="main_title">&nbsp;&nbsp; 예술의 마당 전시장 </div><br>
	<div class="concert_button">
		<a href="exhibition_view_picasso.jsp"><button type="button" class="btn_hall" style="background:rgb(5,135,94)">피카소 관</button></a>
		<a href="exhibition_view_davinci.jsp "><button type="button" class="btn_hall">다빈치 관</button></a>
		<a href="exhibition_view_jihoon.jsp "><button type="button" class="btn_hall">오지훈 관</button></a>
	</div>
	<div class="exhibition_view">
		<h1>피카소 홀</h1>
		<img src="http://localhost:9090/images/exhibition/hangaram_1.gif">
		<img src="http://localhost:9090/images/exhibition/hangaram_map_1.png">
	</div>
	<jsp:include page="../../footer.jsp"/>
</body>
</html>
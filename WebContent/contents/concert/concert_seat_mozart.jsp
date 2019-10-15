<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		border-right:1px solid #9b9b9b;
		text-align:center;
		list-style-type:none;;		
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
	div.concert_seat_guide{
		width:1000px;
		height:300px;
		margin:auto;
	}
	
	h1 , h2{
		text-align:center;
		padding:8px;
		margin:auto;
	}
	
	div.concert_seat_guide>img{
		display:block;
		margin:auto;
	}
	.theater_pic, .theater_seat{
		width:700px;
		height:400px;
	}
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>x
	<img src="http://localhost:9090/images/concert_main/people-2590551_1920_1.jpg">
	<div id="left_nav">
		<ul>
			<li><a href="concert.jsp">공연</a></li>
			<li><a href="concert.jsp">공연일정</a></li>
			<li><a href="concert_seat.jsp" style="color:rgb(5,135,94)">객석안내</a></li>
		</ul>
	</div>
	<div id="main_title">&nbsp;&nbsp; 예술의 마당 소극장 </div><br>
	<div class="concert_button">
		<a href="concert_seat_beethoven.jsp"><button type="button" class="btn_hall">베토벤홀</button></a>
		<a href="concert_seat_mozart.jsp"><button type="button" class="btn_hall" style="background:rgb(5,135,94)">모짜르트홀</button></a>
	</div>
	<div class="concert_seat_guide">
		<h1>모짜르트 홀</h1>
		<img src="http://localhost:9090/images/concert_main/소극장_pic.jpg" class="theater_pic">
		<div>
			<h2>공연장 좌석배치도<br>
					각 좌석도에서 좌석 버튼을 클릭하시면 해당 좌석에서 촬영한 무대시각선을 보실 수 있습니다.<br>
					촬영 시야(VIEW)이기 때문에 실제 눈으로 보는 것과는 약간의 차이가 있을 수 있습니다.<br>
			</h2>
		</div>
		<img src="http://localhost:9090/images/concert_main/소극장_seat.gif" class ="theater_seat">
	</div>
</body>
</html>
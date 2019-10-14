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
	div.concert_info{
		width:1000px;
		height:300px;
		margin:auto;
	}
	
	div.concert_info>a{
		float:left;
		padding:8px;
	}
	
	div.concert_info>a>img{
		width:220px; height:270px;
	}
	
	div.concert_info>div{
		border-bottom:1px solid green;
		width:650px;
		height:280px;
		margin-top:7px;
		float:left;
		
	}
	div.concert_info>div>h2{
		text-align:left;
		
		color:black;
		margin-left:10px;
	}
	div.concert_info>div>h2>a{
		text-decoration: none;
	}
	
	div.concert_info>div>#hide_space{
		width:550px;
		height:130px;
	}
	div.concert_info>div>#text_space{
		text-align:left;
		margin-left:10px;
	}
	div.concert_info>div>#text_space>div>a{
		display:inline-block;
		color:#e5002c;
		border:1px solid #e5002c;
		text-decoration:none;
		margin:-10px 20px 0px -30px;
		padding:5px 30px 5px 30px;
		border-radius: 5px;
		float:right;
		
	}
		
	div.concert_info>div>#text_space>div>a:hover{
	 
	  background-color: #e5002c;
	  color:white;
	}
		
		
/* 	div#concertInfo>div>#textSpace>div>div{
	border:1px solid gray;
	}
	div#concertInfo>div>#textSpace>div>span{
	border:1px solid gray;
	} */
	
	
	
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
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
		<button type="button" class="btn_hall">베토벤홀</button>
		<button type="button" class="btn_hall">모짜르트홀</button>
	</div>
	<div class="concert_info">
		<a href="concert_detail.jsp"><img src="http://localhost:9090/images/concert_main/20190823151229P.gif"></a>
		<div>
			<h2><a href="concert_detail.jsp">2019 연극 <늙은 부부이야기></a></h2>
			<div id="hide_space">
				<span></span>
			</div>
			<div id="text_space">
				<div>
					<div>베토벤 홀  <span>|</span>  2019.10.02(수) ~ 2019.10.03(목)</div>
					<span>R석 8만원 / S석 6만원 / A석 4만원 / B석 2만원</span>
					<a href="#">예매</a>
				</div>
			</div>
		</div>
	</div>
	<div class="concert_info">
		<a href="concert_detail.jsp"><img src="http://localhost:9090/images/concert_main/20190711113234P.gif"></a>
		<div>
			<h2><a href="concert_detail.jsp">SIDance2019-울티마&nbsp;베스&nbsp;</a></h2>
			<div id="hide_space">
				<span></span>
			</div>
			<div id="text_space">
				<div>
					<div>베토벤 홀  <span>|</span>  2019.10.02(수) ~ 2019.10.03(목)</div>
					<span>R석 8만원 / S석 6만원 / A석 4만원 / B석 2만원</span>
					<a href="#">예매</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
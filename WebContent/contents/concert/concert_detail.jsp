<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		/* border:1px solid blue; */
	}
	
	
	body{
		margin:auto;
		/* text-align:center; */
	}
	
	/** 타이틀 & 공연날짜 **/
	div#main_title{
		width:500px;
		border-bottom:3px solid rgb(5,135,94);
		border-left:15px solid rgb(5,135,94);
		display:inline-block;
		margin:100px 0px 0px 0px;
		font-size:30pt;
		font-weight:bold;
		font-family:"나눔스퀘어라운드";
		text-align:left;
	}
	div#date_info{
		display:inline-block;
		margin:30px 0px 50px 20px;
		
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
		color:rgb(5,135,94);
	}
	div#left_nav>ul>li:nth-child(1) {
		font-size:20pt;
		font-style: bold;
		margin-bottom:10px;
		margin-right:20px;
	}
	
	div#left_nav>ul>li>a{
		text-decoration: none;
	}
	
	/** 중앙 concert contents **/
	div#concert_info{
		border:1px solid purple;
		width:1000px;
		height:340px;
		margin:auto;
		margin-top:100px;
	}
	
	#Infoimg{
		width: 250px;
		heigh: 200px;
	}
	div#concert_info>a{
		float:left;
		padding:8px;
	}
	
	div#concert_info>a>img#Info_img{
		width:260px; 
		height:300px;
	}
	
	#content_right{
		width:900px;
		height:300px;
		margin:7px 0px 0px 100px;
	}
	
	div#concert_info>div>h2{
		text-align:left;
		color:black;
		margin-left:300px;
	}
	div#concert_info>div>h2>a{
		text-decoration: none;
	}
	
	div#concert_info>div>#hide_space{
		width:550px;
		height:130px;
	}
	div#concert_info>div>#text_space{
		text-align:left;
		margin-left:10px;
	}
	div#concert_info>div>#text_space>div>a{
		display:inline-block;	
		color:#e5002c;
		border:1px solid #e5002c;
		text-decoration:none;
		margin:-10px 20px 0px -30px;
		padding:5px 30px 5px 30px;
		border-radius: 5px;
		float:right;
		
	}
	div#concert_info>div>div#content_right>table{
		border:1px solid red;
		margin:0px 0px 20px 200px;
		text-align: left;
	}
	th{
		width:100px;
	}
		
	div#concert_info>div>#text_space>div>a:hover{
	 
	  background-color: #e5002c;
	  color:white;
	}
	
	#content_image{
		width:1000px;
	}
</style>
</head>
<body>
	<img src="http://localhost:9090/madang/images/concert_main/concert_main.png">
	<div id="left_nav">
		<ul>
			<li><a href="concert.html">공연</a></li>
			<li><a href="concert.html">공연일정</a></li>
			<li><a href="#">객석안내</a></li>
		</ul>
	</div>
	<div id="concert_info">
		<a href=#><img src="http://localhost:9090/madang/images/concert_main/20190823151229P.gif" id="Infoimg"></a>
		<div>
			<h2>SIDance2019-울티마&nbsp;베스&nbsp;</h2>
			<div id="content_right">
				<table>
					<tr>
						<th scope="row">기간</th>
						<td>
								2019.09.21(토) ~ 2019.10.13(일)
						</td>
					</tr>
					<tr>
						<th scope="row">시간</th>
						<td>
							화-금 20시 / 토 14시, 17시 / 일 15시 / * 월요일,10월 8일 공연 없음<br>
							(단, 9월 25일, 10월 2일, 10월 10일 2회 공연 : 15시, 20시)
						</td>
					</tr>
					<tr>
						<th scope="row">장소</th>
						<td>자유소극장</td>
					</tr>
					<tr>
						<th scope="row">관람등급</th>
						<td>14세이상</td>
					</tr>
					<tr>
						<th scope="row">관람시간</th>
						<td>90  분</td>
					</tr>
					<tr>
						<th scope="row">장르</th>
						<td>연극</td>
					</tr>
					<tr>
						<th scope="row">가격</th>
						<td>1층석 6만원 / 2층석 5만원 / 3층석 4만원</td>
					</tr>
					
					<tr>
						<th scope="row">주최</th>
						<td>예술의전당, (유)덕우기획</td>
					</tr>
					<tr>
						<th scope="row">문의</th>
						<td>02-580-1300</td>
					</tr>
				</table>
			</div>
			<div>
				<img src="http://localhost:9090/madang/images/concert_main/20190831163401061.gif" id="content_image">
			</div>
		</div>
	</div>
</body>
</html>
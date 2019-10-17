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
		width:500px;
		border-bottom:3px solid rgb(5,135,94);
		border-left:15px solid rgb(5,135,94);
		display:inline-block;
		margin:100px 0px 0px 0px;
		font-size:30pt;
		font-weight:bold;
		font-family:"궁서체";
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
	div.exhibition_detail_info{
		width:1000px;
		height:400px;
		margin:auto;
		margin-top:100px;
	}
	
	div.exhibition_detail_info>a{
		float:left;
		padding:8px;
	}
	
	div.exhibition_detail_info>a>img.Info_img{
		width:270px; 
		height:330px;
	}
	
	#exhibition_detail_right{
		width:900px;
		height:300px;
		margin:7px 0px 0px 100px;
	}
	
	div.exhibition_detail_info>div>h2{
		text-align:left;
		color:black;
		margin:50px 0px 0px 350px;
	}
	div.exhibition_detail_info>div>h2>a{
		text-decoration: none;
	}
	
	div.exhibition_detail_info>div>#hide_space{
		width:550px;
		height:130px;
	}
	div.exhibition_detail_info>div>#text_space{
		text-align:left;
		margin-left:10px;
	}
	div.exhibition_detail_info>div>#text_space>div>a{
		display:inline-block;	
		color:#e5002c;
		border:1px solid #e5002c;
		text-decoration:none;
		margin:-10px 20px 0px -30px;
		padding:5px 30px 5px 30px;
		border-radius: 5px;
		float:right;
		
	}
	div.exhibition_detail_info>div>div#exhibition_detail_right>table{
		margin:30px 0px 20px 250px;
		text-align: left;
	}
	div.exhibition_detail_info>div>div#exhibition_detail_right>a{
		display:inline-block;
		background:#e5002c;
		color:white;
		border:1px solid #e5002c;
		text-decoration:none;
		margin:20px 20px 0px 250px;
		padding:5px 55px 5px 55px;
		border-radius: 5px;
	}
	th{
		width:100px;
	}
		
	div.exhibition_detail_info>div>#text_space>div>a:hover{
	 
	  background-color: #e5002c;
	  color:white;
	}
	
	#content_image{
		width:1000px;
	}
	.exhibitition_text>span{
		font-size:15pt;
		display:inline-block;
		margin:20px;
	}
	
	.exhibitition_text>span:nth-child(1){
		color:red;
	}
	
	.exhibitition_text>span:nth-child(5){
		color:blue;
	}
	
	.exhibitition_text>span:nth-child(7){
		margin-bottom:50px;
	}
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<img src="http://localhost:9090/images/concert_main/concert_main.png">
	<div id="left_nav">
		<ul>
			<li><a href="exhibition.jsp">전시</a></li>
			<li><a href="exhibition.jsp" style="color:rgb(5,135,94)">전시일정</a></li>
			<li><a href="concert_seat_beethoven.jsp">전시장안내</a></li>
		</ul>
	</div>
	<div class="exhibition_detail_info">
		<a href=#><img src="http://localhost:9090/images/concert_main/20190823151229P.gif" class="Info_img"></a>
		<div>
			<h2>2019 연극 <늙은 부부이야기></h2>
			<div id="exhibition_detail_right">
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
				<a href="#">예매하기</a>
			</div>
			<div class="exhibitition_text">
				<span>[알립니다]</span><br>
				<span>* 본 전시 티켓은 현장(전시장)에서 10월 2일(수) 오전 11시부터 구매 가능합니다.</span><br>  
      			<span>[전시소개]   </span><br>
				<span>1933년 고전주의 문명의 발상지인 토스카나(Toscana) 지방의 피사(Pisa)에서 태어난 프랑코 아다미(Franco Adami)는 이 지방 고유의 평화로운 햇빛과 자연의 명쾌한 조화 속에 성장했다. 고대 미술의 영향을 받은 피렌체의 미술대학에서 수학한 후 스승의 조언에 따라 파리, 런던, 뉴욕 등 예술도시를 돌아보며 수준 높은 예술작품과 문화를 몸으로 체득했다.<br>
				'작은 아테네'라고 불리는 피에트라산타(Pietrasanta)는 15세기 미켈란젤로가 아틀리에를 차리고 작품 활동을 펼친 곳으로 최고급 대리석 생산지인 조각예술의 도시이다. 진귀한 피에트라산타와 카라라(Carrara)의 깊은 채굴장에서만 얻을 수 있는 특별한 대리석은 그의 작품에 더욱 풍부한 에너지를 불어넣는다.<br>
				현재 프랑코 아다미가 보유한 거장의 기술은 15세기부터 지금까지의 모든 이탈리아 예술가들의 위엄과 영혼을 포함하고 있으며, 재료와 영혼의 조화로부터 울려 퍼지는 풍요로운 화음을 담아내고 있다. <br>
				프랑코 아다미의 예술적 감각을 발현한 ‘조각 같은 회화’와 귀한 대리석, 국내 최초 공개되는 순銀으로 완성된 조각품들은 작품에 대한 그의 깊은 이해와 애정을 보여준다. 동시에 그 안에 살아 숨 쉬는 생명의 생동감을 느낄 수 있다.<br>  </span>
				<img src="http://localhost:9090/images/concert_main/20190831163401061.gif" id="content_image">
			</div>
		</div>
	</div>
</body>
</html>
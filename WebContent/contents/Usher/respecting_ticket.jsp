<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>	
<link rel="stylesheet" href="http://localhost:9090/css/madangcss.css"/>
<style>
	*{
		font-family:"나눔스퀘어라운드";
		padding:0px;
		margin:0px;

	}
	
	div.page_contents{
	
		width:1000px;
		height:1500px;
		margin:auto;
	}
	
	h1.page_title{
      width:700px;
      border-bottom:3px solid rgb(5,135,94);
      border-left:15px solid rgb(5,135,94);
      display:inline-block;
      margin:100px 0px 50px 0px;
      font-size:30pt;
      font-weight:bold;
      text-align:left;
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
	
	
/**우대사항안내폼 **/
	div#respecting_ticket div.page_contents section h2{
		margin-bottom:20px;
	}
	
	/*장애인 국가유공자 우대 안내쪽*/
	div#respecting_ticket div.page_contents section:nth-child(2) table td{
		width:400px;
		text-align:center;
	}
	div#respecting_ticket div.page_contents section:nth-child(2) table{
		margin-bottom:50px;
	}
	
	/*우대사항 상세표*/
	div#respecting_ticket div.page_contents section:nth-child(3) table{
		width:100%;
		 border-collapse: collapse;
	}
	div#respecting_ticket div.page_contents section:nth-child(3) table tr:nth-child(1){
		text-align:center;
		height:60px;
		background-color: rgb(200,200,200);
	}
	div#respecting_ticket div.page_contents section:nth-child(3) table tr:nth-child(2),
	div#respecting_ticket div.page_contents section:nth-child(3) table tr:nth-child(3){
		text-align:center;
		height:40px;

	}
	div#respecting_ticket div.page_contents section:nth-child(3) table td{
		border: 1px solid rgb(227,227,227);
	}
	div#respecting_ticket div.page_contents section:nth-child(3) article{
		margin:10px 0px 30px 0px;
		
	}
	div#respecting_ticket div.page_contents section:nth-child(3) div{
		height:50px;
	}

/*기타 공통 부분*/	
   	h2>span.font_circle{
   	 color:rgb(5,135,94)
   	 }
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
<div id="respecting_ticket">
	<!-- <img src="#"/> -->
	<div id="left_nav">
		<ul>
			<li><a href="location.jsp">이용안내</a></li>
			<li><a href="location.jsp">오시는길</a></li>
			<li><a href="facility.jsp">시설안내</a></li>
			<li><a href="utility_concert.jsp">편의시설</a></li>
			<li><a href="etiquette_concert.jsp">관람매너</a></li>
			<li><a href="#" style="color:rgb(5,135,94)">우대사항</a></li>
		</ul>
	</div><!-- left_nav -->
	<div class="page_contents">
		<h1 class="page_title">우대사항</h1>
		<section>
			<h2><span class="font_circle">●</span> 장애인 · 국가유공자 우대 안내</h2>
			<table>
				<tr>
					<th rowspan="2"><img src="http://localhost:9090/images/ect/respecting_ticket.png"/></th>
					<td><h3>장애인과 국가유공자의 공연전시 관람 시 <br>다음과 같은 우대 할인 혜택을 제공합니다.</h3></td>
				</tr>
				<tr>

					<td>* 본 혜택은 국가유공자 등 예우 및 지원에 관한 법률 시행령과 <br>장애인 복지법에 따른 권장사항으로 각 공연과 전시마다 
						<br>할인율이 상이할 수 있으므로 자세한 내용은 <br>해당 공연, 전시의 상세페이지를 참고 바랍니다.</td>
				</tr>
			</table>
			<div></div>
		</section>
		<section>
			<h3>장애인</h3>
				<table>
					<tr>
						<td>구분</td>
						<td>국가유공자 본인 및<br>동반1인</td>
						<td>국가유공자 유족증<br>소지자 본인</td>
						<td>국가유공자 배우자<br>(국가유공자 동반시)</td>
						<td>참전유공자 본인</td>
					</tr>
					<tr>
						<td>공연</td>
						<td>50%할인</td>
						<td>50%할인</td>
						<td>50%할인</td>
						<td>해당없음</td>
					</tr>
					<tr>
						<td>전시</td>
						<td>무료관람</td>
						<td>무료관람</td>
						<td>무료관람</td>
						<td>무료관람</td>
					</tr>
				</table>
				<article>
					법률에서 정한 국가유공자(독립유공자, 5·18민주유공자, 특수임무유공자), 참전유공자 기준으로 할인 제공
					<br>국가유공자 배우자는 가족관계증명서와 신분증을 함께 제시하여야 한다.
				</article>
			<h3>국가유공자</h3>
				<table>
						<tr>
							<td>구분</td>
							<td>장애인 복지카드 소지자(1급~3급 / 중증)</td>
							<td>장애인 복지카드 소지자(4급~6급 / 경증)</td>
						</tr>
						<tr>
							<td>공연</td>
							<td>본인 및 동반 1인 50%</td>
							<td>본인 50%</td>
						</tr>
						<tr>
							<td>전시</td>
							<td>무료관람</td>
							<td>무료관람</td>
						</tr>
					</table>
				<div> </div>
		</section>
		<section>
			<h2><span class="font_circle">●</span> 장애인, 국가유공자 예매 관련 유의사항</h2>
			<article>
				* 예매 후 공연 당일 티켓수령 시, 할인대상자 본인이 관련 증빙서류를 직접 현장매표소로 제시해야만 티켓 수령이 가능합니다. 
				<br>&nbsp;&nbsp;&nbsp;&nbsp;이를 제시하지 못할 경우 할인받은 만큼의 차액을 지불한 후 공연관람이 가능합니다.
				<br>
				* 휠체어석은 온라인(웹,모바일)예매를 받지 않으며, 방문 혹은 전화예매 (서비스플라자 02-580-1300)로만 가능합니다.
				<br>
				* 공연장 객석 내 휠체어석 예매 시 보호자 동반 여부를 반드시 알려주시기 바랍니다.
			</article>
		</section>
				
	</div> <!-- class=page_contents -->
	</div> <!-- rental_info -->
	
	<jsp:include page="../../footer.jsp"/>		
</body>
</html>
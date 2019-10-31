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
	
	div.page_contents2{
		width:1000px;
		height:3000px;
		margin:auto;
	}
	
	h1.page_title{
      width:900px;
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
	
/**대관안내폼 **/
	div#rental_hall div.page_contents2 h2{
		margin:20px 0px 30px 0px;
	}
	div#rental_hall div.page_contents2 >section {
		text-align:center;
	}
	/*이미지 아래 설명칸*/
	div#rental_hall div.page_contents2 section article{
		display:inline-block;
		text-align:left;
		width:650px;
		padding:30px 0px 30px 0px;
	}
	/*절차 안내 글귀*/
	div#rental_hall div.page_contents2 section article:nth-child(4) div{
		padding:10px 0px 20px 50px;
	}
	
	 /*기타 공통 부분*/	
   	h2>span.font_circle{
   	 color:rgb(5,135,94)
   	 }
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
<div id="rental_hall">
	<!-- <img src="#"/> -->
	<div id="left_nav">
		<ul>
			<li><a href="rentalInfo.jsp">대관안내</a></li>
			<li><a href="#" style="color:rgb(5,135,94)" >대관시설</a></li>
			<li><a href="retalrequest.jsp">대관신청</a></li>
		</ul>
	</div><!-- left_nav -->
	<div class="page_contents2">
		<h1 class="page_title">대관시설</h1>
		<h2><span class="font_circle">●</span> 베토벤홀</h2>   <!-- http://theater.arko.or.kr/Pages/SpaceInfo/Space_04.aspx -->
		<section>
				<img src="http://localhost:9090/images/rental_hall/beethoven_hall.png">
				<br>
			<article>
					블랙박스형 트랩무대로 폭 12.8m 깊이 14.8m 높이 5.4m로 자유로운 형식과 내용의 작품들을 
					<br>충분히 담아낼 수 있는 공간으로서, 다양한 공연 장르가 펼쳐질 수 있는 새로움이 넘쳐나는 
					<br>인큐베이팅 공간입니다. 
					<br>공연장 상부에는 Rigging System의 하나인 3열 4조의 포인트 호이스트가 있어 그룹운전이 
					<br>가능하며,	하부에는 가로/세로 각 1.5m 크기의 총 49조 트랩무대가 설치되어 있어 
					<br>또 하나의 공간연출이 가능합니다. 
			</article>
			<article>
				<h3> 대관절차</h3>
					<div>대관신청> 대관심의 > 승인통보 > (승인 후) 대관계약> 공연진행협의 > 입장권 검인 및 판매의뢰 > 기본대관료 납부 완료  > 
					입장권 발권 및 판매 가능 > 공연 준비 및 진행 >대관료정산> 공연종료 </div>
				
				<h3>대관료</h3>
					<div>풀세트: 50000000~80000000000원
						<br>(담당자 상의)
					</div>
				<h3>대관규약</h3>
						<div><a href="#">대관규약서 다운로드</a><!-- pdf다운로드 링크 걸 예정 -->
						</div>					
				<h3>무대기술자료</h3>
					<div><a href="#">무대 장비 목록 다운로드 <img src="http://localhost:9090/images/ect/pdf_icon.jpg"></a>
					<br><br><a href="#">무대 도면 다운로드<img src="http://localhost:9090/images/ect/pdf_icon.jpg"></a></div><!-- pdf다운로드 링크 걸 예정 -->
			</article>
		</section>
		<h2><span class="font_circle">●</span> 피카소관</h2>   <!-- http://theater.arko.or.kr/Pages/SpaceInfo/Space_04.aspx -->
		<section>
				<img src="http://localhost:9090/images/rental_hall/picasso_gallery.png"/>
				<br>
			<article>
					블랙박스형 트랩무대로 폭 12.8m 깊이 14.8m 높이 5.4m로 자유로운 형식과 내용의 작품들을 충분히 담아낼 수 있는 공간으로서, 
					다양한 공연 장르가 펼쳐질 수 있는 새로움이 넘쳐나는 인큐베이팅 공간입니다. 
					공연장 상부에는 Rigging System의 하나인 3열 4조의 포인트 호이스트가 있어 그룹운저이 가능하며, 
					하부에는 가로/세로 각 1.5m 크기의 총 49조 트랩무대가 설치되어 있어 또 하나의 공간연출이 가능합니다. 
			</article>
			<article>
				<h3> 대관절차</h3>
					<div>대관신청> 대관심의 > 승인통보 > (승인 후) 대관계약> 공연진행협의 > 입장권 검인 및 판매의뢰 > 기본대관료 납부 완료  > 
					입장권 발권 및 판매 가능 > 공연 준비 및 진행 >대관료정산> 공연종료 </div>
				
				<h3>대관료</h3>
					<div>풀세트: 50000000~80000000000원
						<br>(담당자 상의)
					</div>
				<h3>대관규약</h3>
						<div><a href="#">대관규약서 다운로드<img src="http://localhost:9090/images/ect/pdf_icon.jpg"></a><!-- pdf다운로드 링크 걸 예정 -->
						</div>					
				<h3>무대기술자료</h3>
					<div><a href="#">무대 장비 목록 다운로드<img src="http://localhost:9090/images/ect/pdf_icon.jpg"></a>
					<br><br><a href="#">무대 도면 다운로드<img src="http://localhost:9090/images/ect/pdf_icon.jpg"></a></div><!-- pdf다운로드 링크 걸 예정 -->
			</article>
		</section>		
		<section>
			보다 상세한 내역을 원하시면 아래로 연락부탁드립니다.
			<br>&nbsp;* 베토벤홀 담당 - 공연장운영부 고길동 : kogilldong@madang.com (021-5050-7851)
			<br>&nbsp;* 피카소관 담당 - 전시장운영부 반고흐 : teolover@madang.com (021-5050-7865)
			<br>&nbsp;* 매주 일, 월요일은 담당자 휴무일이며, 문의는 오전9시부터 5시까지 가능합니다.
		</section>

	</div> <!-- class=page_contents -->
	</div> <!-- rental_hall -->
</body>
</html>
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
/*대관신청 아래 폼*/
	div#rental_request div.page_contents h2{
		text-align:left;
		margin-bottom:20px;
	}

	div#rental_request div.page_contents section{
		text-align:center;
		padding:50px 0px 50px 0px;		
	}

	div#rental_request div.page_contents section table{
		display : inline-block;

	}
	div#rental_request div.page_contents section table th{
		width:200px;
		border-right:1px solid rgb(155,155,155);
	}
	div#rental_request div.page_contents section table td{
		width:400px;
		padding:20px 0px 20px 0px;
	
	}
	
/*신청서 제출안내 폼*/	

	div#rental_request div.page_contents button{
		background-color:rgb(5,135,94);
   		color:white;
   		width:400px;
   		height:50px;
   		border:none;
   		margin:20px 0px 30px 0px;
   		font-size:15pt;
	}
	div#rental_request div.page_contents section article{
		padding-top:10px;
		display:inline-block;
		text-align:left;
	}
	
/**대관안내폼 **/

	 /*기타 공통 부분*/	
   	h2>span.font_circle{
   	 color:rgb(5,135,94)
   	 }
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
<div id="rental_request">
	<!-- <img src="#"/> -->
	<div id="left_nav">
		<ul>
			<li><a href="rentalInfo.jsp">대관안내</a></li>
			<li><a href="rentalhall.jsp" >대관시설</a></li>
			<li><a href="#" style="color:rgb(5,135,94)">대관신청</a></li>
		</ul>
	</div><!-- left_nav -->
	<div class="page_contents">
		<h1 class="page_title">대관신청</h1>
		<h2><span class="font_circle">●</span> 대관신청</h2>
		<section>
			<table>
				<tr>
					<th>신청서식</th>
					<td>
					2019_베토벤홀_대관신청서.hwp <!-- 파일링크예정 -->
					<br>2019_피카소관_대관신청서.hwp
					</td>
				</tr>
				<tr>
					<th>담당자</th>
					<td>공연장운영부 김마당
						<br>Tel. 021-123-4567
						<br>Fax. 021-123-9876
						<br>artart@madang.com
					</td>
				</tr>
			</table>
		</section>
		<section>
			<h2><span class="font_circle">●</span> 온라인 신청</h2>
			<button type = "button"> 신청서 업로드 </button> <!-- 로그인한 사람만 클릭가능 -->
		</section>
		<section>
			<h2><span class="font_circle">●</span> 오프라인 신청</h2>
			<article>
					-Tel:  02-123-4567
					<br>-Fax: 02-123-9876
					<br>-접수시간: 평일 오전9시 – 오후 5시
			        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; (점심시간 12시-2시 제외)
					<br>-유의사항: 팩스 제출 후 유선상으로 확인 부탁드립니다.
			        <br>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 신청서식 * 표시된 란은 필수 기입 부탁드립니다.
			
			</article>
		</section>
	</div> <!-- class=page_contents -->
	</div> <!-- rentalquest -->
</body>
</html>
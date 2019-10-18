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
	
/**대관안내폼 **/
	div#rental_info div.page_contents section{
		text-align:center;
		padding:10px 0px 50px 0px;
	}
	div#rental_info div.page_contents section article{
		display:inline-block;
		text-align:left;
		margin: 10px 280px 80px 0px;
		
	}
	/*대관일정 테이블*/
	div#rental_info div.page_contents section table{
		display:inline-block;
		width:80%;
	}

	div#rental_info div.page_contents section table td{
		width:1000px;
		height:50px;
		text-align:left;
		padding-left:10px;
		border-bottom : 1px solid rgb(150,150,150);
	}
	 /*기타 공통 부분*/	
   	h2>span.font_circle{
   	 color:rgb(5,135,94)
   	 }
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
<div id="rental_info">
	<!-- <img src="#"/> -->
	<div id="left_nav">
		<ul>
			<li><a href="#">대관안내</a></li>
			<li><a href="rentalhall.jsp">대관시설</a></li>
			<li><a href="retalrequest.jsp">대관신청</a></li>
		</ul>
	</div><!-- left_nav -->
	<div class="page_contents">
		<h1 class="page_title">대관안내</h1>
		<h2><span class="font_circle">●</span> 신청절차</h2>
		<section>
			<article>
				1. 대관일정 확인<br><br>
				2. 대관신청 파일 다운 및 작성<br><br>
				3. 온라인신청/오프라인(팩스)신청<br><br>
				4. 담당자 상담<br><br>
				5. 완료<br>
			</article>
		</section>
		<h2><span class="font_circle">●</span> 베트벤홀 대관일정</h2>
		<section>
			<table>
				<tr>
					<td>쌍용회사 특별전시 (2019.10.01~2019.10.08)</td>
				</tr>
				<tr>
					<td>대황항공 vip 전용 설명회(2019.10.10~2019.10.11)</td>
				</tr>
			</table>
		</section>
		<h2><span class="font_circle">●</span> 피카소관 대관일정</h2>
				<section>
			<table>
				<tr>
					<td>쌍용회사 특별전시 (2019.10.01~2019.10.08)</td>
				</tr>
				<tr>
					<td>대황항공 vip 전용 설명회(2019.10.10~2019.10.11)</td>
				</tr>
			</table>
		</section>
	</div> <!-- class=page_contents -->
	</div> <!-- rental_info -->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="http://localhost:9090/jquery/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9090/css/caleshall.css"/>
<link rel="stylesheet" href="http://localhost:9090/css/madangcss.css"/>


</head>
<body>
<jsp:include page="header.jsp"/>
<div id="main_page">
	<div id="main_title_img">
		<!-- ))캐러셀. 일단 이미지부터 놓자 -->
			<!-- <h1>캐러셀 추가 부분</h1>
			<img src="http://localhost:9090/dycgv/images/15675941245740.jpg"/> -->
			<article><!-- ))캐러셀 코드 붙여넣었다. -->
				<div id="demo" class="carousel slide" data-ride="carousel">
				
				  <!-- Indicators -->
				  <ul class="carousel-indicators">
				    <li data-target="#demo" data-slide-to="0" class="active"></li> <!-- ))슬라이드 인덱스.  -->
				    <li data-target="#demo" data-slide-to="1"></li>
				    <li data-target="#demo" data-slide-to="2"></li>
				    <li data-target="#demo" data-slide-to="3"></li>
				  </ul>
				  
				  <!-- The slideshow -->
				  <div class="carousel-inner">
				    <div class="carousel-item active"> <!-- ))이미지 삽입  크기는 여기의 width&height 혹은 위의 css에서 해결-->
				     <a href="#"><img src="http://localhost:9090/images/mainpage/main_FarewellMyConcubine.png" alt="FarewellMyConcubine" ></a>  <!-- ))alt 말풍선 같은거? -->
				    </div>
				    <div class="carousel-item">
				      <a href="#"><img src="http://localhost:9090/images/mainpage/main_SAC_CUBE2019.JPG" alt="SAC_CUBE2019"></a> 
				    </div>
				    <div class="carousel-item">
				      <a href="#"><img src="http://localhost:9090/images/mainpage/main_TheStoryOfOldCouple.JPG" alt="TheStoryOfOldCouple" ></a> 
				    </div>
				    <div class="carousel-item">
				      <a href="#"><img src="http://localhost:9090/images/mainpage/main_TracesOfBlackSand.JPG" alt="TracesOfBlackSand" ></a> 
				    </div>
				  </div>
				  
				  <!-- Left and right controls -->
				  <a class="carousel-control-prev" href="#demo" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#demo" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
				</div>
			</article>
	</div>
	<div id="main_content">
		<div id="main_announce">
			<section>
				<h1>공연</h1>
				<article>
					<img src="http://localhost:9090/images/mainpage/poster_37309.gif">
					<img src="http://localhost:9090/images/mainpage/poster_37309.gif">
					<img src="http://localhost:9090/images/mainpage/poster_37309.gif">
				</article>
			</section>
			
			<section>
				<h1>전시</h1>
				<article>
					<img src="http://localhost:9090/images/mainpage/poster_38632.gif">
					<img src="http://localhost:9090/images/mainpage/poster_38632.gif">
					<img src="http://localhost:9090/images/mainpage/poster_38632.gif">
				</article>
			</section>
		</div>
		<div>
			<section>
				<article>
					<button type="button">티켓오픈</button>
					<button type="button">이벤트</button>
				</article>
				<article>
					<div>
						<img src="http://localhost:9090/images/mainpage/eventThumb_02.gif">
						<br>
						<span><a href="#">국립오페라단 《호프만의 이야기》 미리보기</a></span>
						<span><br>이벤트 기간 ㅣ 2019.09.24(화) ~ 10.07(월)<br>담첨자 발표 ㅣ 2019.10.09(수)</span>
					</div>
					<div>
						<img src="http://localhost:9090/images/mainpage/eventThumb_02.gif">
						<br>
						<span><a href="#">국립오페라단 《호프만의 이야기》 미리보기</a></span>
						<span><br>이벤트 기간 ㅣ 2019.09.24(화) ~ 10.07(월)<br>담첨자 발표 ㅣ 2019.10.09(수)</span>
					</div>
					<div>
						<img src="http://localhost:9090/images/mainpage/eventThumb_02.gif">
						<br>
						<span><a href="#">국립오페라단 《호프만의 이야기》 미리보기</a></span>
						<span><br>이벤트 기간 ㅣ 2019.09.24(화) ~ 10.07(월)<br>담첨자 발표 ㅣ 2019.10.09(수)</span>
					</div>
					
				</article>
			</section>
		</div>
		<div>
			<section>
				<article><a href='#'><img src="http://localhost:9090/images/mainpage/icon_map.png"><span>오시는길</span></a></article>
				<article><a href='#'><img src="http://localhost:9090/images/mainpage/icon_map.png"><span>오시는길</span></a></article>
				<article><a href='#'><img src="http://localhost:9090/images/mainpage/icon_map.png"><span>오시는길</span></a></article>
				<article><a href='#'><img src="http://localhost:9090/images/mainpage/icon_map.png"><span>오시는길</span></a></article>
				<article><a href='#'><img src="http://localhost:9090/images/mainpage/icon_map.png"><span>오시는길</span></a></article>
				
			</section>
		</div>
	</div> <!-- main_content -->
</div>

</body>
</html>


</body>
</html>
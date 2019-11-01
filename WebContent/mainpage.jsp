<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예술의 마당</title>
<!-- 슬릭 관련(공연,전시) -->
<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="http://localhost:9090/slick/slick.min.js"></script>
		
<script src="http://localhost:9090/js/madang.js"></script>	
<link rel="stylesheet" href="http://localhost:9090/css/madangcss.css"/>
<script>
	$(document).ready(function(){
		$("button#main_switch_t").click(function(){
			$("article#main_switch_teaser").css("display","block");
			$("article#main_switch_event").css("display","none");
		});//티켓오픈 클릭
		
		$("button#main_switch_e").click(function(){
			$("article#main_switch_teaser").css("display","none");
			$("article#main_switch_event").css("display","block");
		});//이벤트 클릭
	});
</script>

</head>
<body>
<!--<span>generalID: <%=session.getAttribute("generalID")%> grouplID: <%=session.getAttribute("grouopID")%></span>-->
<jsp:include page="header.jsp"/>
<div id="main_page">
	<div id="main_title_img">
		<div class="autoplay">
			<div><img src="http://localhost:9090/images/mainpage/main_FarewellMyConcubine.png" alt="FarewellMyConcubine" ></a> </div>
			<div><img src="http://localhost:9090/images/mainpage/main_SAC_CUBE2019.JPG" alt="SAC_CUBE2019"></a> </div>
			<div><img src="http://localhost:9090/images/mainpage/main_TheStoryOfOldCouple.JPG" alt="TheStoryOfOldCouple" ></a> </div>
			<div><img src="http://localhost:9090/images/mainpage/main_TracesOfBlackSand.JPG" alt="TracesOfBlackSand" ></a> </div>
		</div>
	</div>
	<div id="main_content">
		<div id="main_announce">
			<section>
				<div class="parallelogram"><h1>진행중인 공연</h1></div>
				<article>
				 	<div class="center">
						<a href="http://localhost:9090/contents/concert/concert_detail.jsp"><div><img src="http://localhost:9090/images/mainpage/20190711113234P.gif"></div></a>
						<a href="http://localhost:9090/contents/concert/concert_detail.jsp"><div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div></a>
						<a href="http://localhost:9090/contents/concert/concert_detail.jsp"><div><img src="http://localhost:9090/images/mainpage/20190823151229P.gif"></div></a>
						<a href="http://localhost:9090/contents/concert/concert_detail.jsp"><div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div></a>
					</div>
				</article>
			</section>
			
			<section>
				<div class="parallelogram"><h1>진행중인 전시</h1></div>
				<article>
					<div class="center">
						<a href="http://localhost:9090/contents/concert/concert_detail.jsp"><div><img src="http://localhost:9090/images/mainpage/20190711113234P.gif"></div></a>
						<a href="http://localhost:9090/contents/concert/concert_detail.jsp"><div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div></a>
						<a href="http://localhost:9090/contents/concert/concert_detail.jsp"><div><img src="http://localhost:9090/images/mainpage/20190823151229P.gif"></div></a>
						<a href="http://localhost:9090/contents/concert/concert_detail.jsp"><div><img src="http://localhost:9090/images/mainpage/poster_37309.gif"></div></a>
				</div>
				</article>
			</section>
		</div>
		<div>
			<section>
				<article>
					<button type="button" id="main_switch_t">티켓오픈</button>
					<button type="button" id="main_switch_e">이벤트</button>
				</article>
				<!--이벤트 -->
				<article id="main_switch_event">
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
				<!-- 전시,공연 예정된 썸네일. select 랭크,이미지,코드,시작일 from(select 이미지,코드,from 전시,공연 where 시작일 between sysdate and sysdate+30일 oder by 시작일)랭크between 1and3 -->
				</article>
				<article id="main_switch_teaser">
					<div>
						<img src="http://localhost:9090/images/mainpage/bigfish_thumbnail.gif">
						<br>
						<span><a href="#">뮤지컬<빅 피쉬>한국 초연 2차오픈</a></span>
						<span><br>- 10/30(수) 11AM 1차 오픈<br>- 10/30(수) 2PM 2차 오픈</span>
					</div>
					<div>
						<img src="http://localhost:9090/images/mainpage/bigfish_thumbnail.gif">
						<br>
						<span><a href="#">뮤지컬<빅 피쉬>한국 초연 2차오픈</a></span>
						<span><br>- 10/30(수) 11AM 1차 오픈<br>- 10/30(수) 2PM 2차 오픈</span>
					</div>
					<div>
						<img src="http://localhost:9090/images/mainpage/bigfish_thumbnail.gif">
						<br>
						<span><a href="#">뮤지컬<빅 피쉬>한국 초연 2차오픈</a></span>
						<span><br>- 10/30(수) 11AM 1차 오픈<br>- 10/30(수) 2PM 2차 오픈</span>
					</div>
					</article>
			</section>
		</div>
		<div>
			<section>
				<article><a href='http://localhost:9090/contents/Usher/location.jsp'><img src="http://localhost:9090/images/mainpage/icon_map.png"><span>오시는길</span></a></article>
				<article><a href='http://localhost:9090/contents/Usher/utility_concert.jsp'><img src="http://localhost:9090/images/mainpage/icon_map.png"><span>편의시설</span></a></article>
				<article><a href='http://localhost:9090/contents/Usher/etiquette_concert.jsp'><img src="http://localhost:9090/images/mainpage/icon_map.png"><span>관람매너</span></a></article>
				<article><a href='http://localhost:9090/contents/cs/cs_qaa.jsp'><img src="http://localhost:9090/images/mainpage/icon_map.png"><span>1:1문의</span></a></article>
				<article><a href='#'><img src="http://localhost:9090/images/mainpage/icon_map.png"><span>일정보기</span></a></article>
				
			</section>
		</div>
	</div> <!-- main_content -->
	
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>

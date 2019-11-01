<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://211.63.89.214:9090/css/mypage.css"/>
<script src="http://211.63.89.214:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://211.63.89.214:9090/js/madang.js"></script>
<script>
/* 	$(document).ready(function(){
		$("p#bmark_star a").click(function() {
			//alert("ff");
			
			$("p#bmark_star a").attr('value','on');
			
		});
	}); */
</script>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_gen.jsp">회원정보 수정</a></li>
				<li><a href="mypage_reserv_list.jsp">예매내역 확인</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_bmark.jsp">찜한 공연/전시</a></li>
			</ul>
		</div>

		<div id="main_title">찜한 공연/전시</div>
		
		<div class="bmark">
		<h2>공연</h2>
		<br>
		
			<div class="bmark_list">
				<a href="http://211.63.89.214:9090/contents/concert/concert_detail.jsp"><img src="http://211.63.89.214:9090/images/concert_main/20190823151229P.gif" class="bmark_poster"></a>
				<div class="bmark_info">
					<p id="bmark_star"><a class="on" value="off">★</a></p>
					<p><a href="http://211.63.89.214:9090/contents/concert/concert_detail.jsp">2019 연극 늙은 부부이야기</a></p>
					<p>2019.10.02(수) ~ 2019.10.03(목)</p>
					<br>
					<p>베토벤홀</p>
				</div>
			</div>
			
			<div class="bmark_list">
				<a href="#"><img src="http://211.63.89.214:9090/images/concert_main/20190823151229P.gif" class="bmark_poster"></a>
				<div class="bmark_info">
					<p id="bmark_star"><a class="on" value="off">★</a></p>
					<p><a href="#">이쌍용 피아노 독주회</a></p>
					<p>2019-11-08</p>
					<br>
					<p>모짜르트홀</p>
				</div>
			</div>
			
			<div class="bmark_list">
				<a href="#"><img src="http://211.63.89.214:9090/images/concert_main/20190823151229P.gif" class="bmark_poster"></a>
				<div class="bmark_info">
					<p id="bmark_star"><a class="on" value="off">★</a></p>
					<p><a href="#">이쌍용 피아노 독주회</a></p>
					<p>2019-11-08</p>
					<br>
					<p>모짜르트홀</p>
				</div>
			</div>
			
		</div>
		
		
		<div class="bmark">
		<h2>전시</h2>
		<br>
		
			<div class="bmark_list">
				<a href="#"><img src="http://211.63.89.214:9090/images/concert_main/20190823151229P.gif" class="bmark_poster"></a>
				<div class="bmark_info">
					<p></p>
					<p><a href="#">오지훈 개인전</a></p>
					<p>2019-10-01 ~ 2019-11-30</p>
					<br>
					<p>오지훈특별관</p>
				</div>
			</div>
			
			<div class="bmark_list">
				<a href="#"><img src="http://211.63.89.214:9090/images/concert_main/20190823151229P.gif" class="bmark_poster"></a>
				<div class="bmark_info">
					<p></p>
					<p><a href="#">오지훈 개인전</a></p>
					<p>2019-10-01 ~ 2019-11-30</p>
					<br>
					<p>오지훈특별관</p>
				</div>
			</div>
			
			<div class="bmark_list">
				<a href="#"><img src="http://211.63.89.214:9090/images/concert_main/20190823151229P.gif" class="bmark_poster"></a>
				<div class="bmark_info">
					<p></p>
					<p><a href="#">오지훈 개인전</a></p>
					<p>2019-10-01 ~ 2019-11-30</p>
					<br>
					<p>오지훈특별관</p>
				</div>
			</div>
			
		</div>
		
		
	</div>
</body>
</html>
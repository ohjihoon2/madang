<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/MyJSP/jquery/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	$('nav li').hover(
		function() {
		$('ul', this).stop().slideDown(200);
		},
		function() {
		$('ul', this).stop().slideUp(200);
		}
	);
});

</script>
<style>
* {
	font-family: "나눔스퀘어라운드";
}

body {
	border-top: 1px solid #05875e;
	margin-top: 0px;
	/* border:1px solid green; */
	/* width:1400px; */
	margin: auto;
}

body > div:first-child { /* 로고 이미지 영역 */
	/* border:1px solid red; */
	display: inline-block;
	padding-left: 55px;
}
body > div > a > img { /* 로고 이미지 */
	width: 240px; height: 80px;
	margin-top: 2px;
}
body > div > nav img { /* 검색 이미지 */
	width: 20px; height: 20px;
	margin-bottom: -5px;
	opacity: 0.5;
}
body>div>nav img:hover {
	opacity: 0.6;
}
body > div.header_nav { /* 검색 로그인~고객센터 영역 */
	/* border:1px solid blue; */
	display: inline-block;
	/* float:right; */
	/* margin-left:1500px; */
	margin: -20px 0px 0px 1500px;
}
body > div.header_nav li { /* 검색 로그인~고객센터 리스트 */
	/* border:1px solid green; */
	list-style-type: none;
	display: inline-block;
}
body > div.header_nav li a { /* 검색 로그인~고객센터 글자 */
	border-right: 1px solid gray;
	padding: 0px 10px 0px 6px;
	text-decoration: none;
	color: gray;
}
body > div.header_nav li a:hover {
	color: #282828;
}
body > div.header_nav li:first-child a { /* 검색 글자..? */
	border-right: none;
}
body > div.header_nav li:last-child a { /* 검색 로그인~고객센터 마지막 글자 */
	border-right: none;
}

ul.dept01 { /* 헤더 메뉴바 전체 영역 */
	border-bottom: 1px solid #9b9b9b;
	text-align: center;
	margin: auto;
	padding: 30px 0px 0px 0px;
	width: 66%;
}
ul.dept01 > li { /* 헤더 메뉴바 리스트 */
	/* border:1px solid blue; */
	display: inline-block;
	margin: 10px 40px 0px 40px;
	position: relative;
}
ul.dept01 > li > a { /* 헤더 메뉴바 글자 */
	color: #05875e;
	display: block;
	font-size: 22pt;
	font-weight: bold;
	text-decoration: none;
	padding: 15px 14px;
	transition: 0.3s linear;
}
ul.dept01 > li:hover {
	/* background: #126d9b; */
}
ul.dept02 { /* 상세메뉴 내려오는거 */
	padding:0px;
	border-bottom: 5px solid #05875e;
	display: none;
	position: absolute;
	width: 200px;
	text-align:left;
}
ul.dept02 li { /* 상세메뉴 내려온거 각 리스트 */
	border-top: 1px solid #444;
	display: block;
	background: white;
}
ul.dept02 li:first-child {
	border-top: none;
}
ul.dept02 li a { /* 상세 메뉴 */
	/* background: #9b9b9b; */
	display: block;
	padding: 10px 14px;
	text-decoration: none;
	color: #282828;
	font-weight: bold;
}
ul.dept02 li a:hover {
	background: #9b9b9b;
	color: white;
	font-weight: bold;
}
/* nav .fa.fa-angle-down { margin-left: 6px; } */

</style>


</head>
<body>

	<div>
		<a href="#"><img src="http://localhost:9090/MyJSP/images/index_logo.png"></a>
	</div>
	
	<div class="header_nav">
		<nav>
			<li><a href="#"><img src="http://localhost:9090/MyJSP/images/search.png"></a></li>
			<li><a href="#">로그인</a></li>
			<li><a href="#">회원가입</a></li>
			<li><a href="#">마이페이지</a></li>
			<li><a href="#">고객센터</a></li>
		</nav>
	</div>
	
	<nav>
		<div class="container">
			<ul class="dept01">
			
				<li class="concert">
					<a href="#">공연<i class='fa fa-angle-down'></i></a>
					 <ul class="dept02">
						<li><a href="#">공연일정</a></li>
						<li><a href="#">- 예매</a></li>
						<li><a href="#">객석안내</a></li>
						<li><a href="#">- 베토벤홀</a></li>
						<li><a href="#">- 모짜르트홀</a></li>
					</ul>
				</li>
				
				<li class="exhibition">
					<a href="#"> 전시 <i class='fa fa-angle-down'></i></a>
					<ul class="dept02">
						<li><a href="#">전시일정</a></li>
						<li><a href="#">- 예매</a></li>
						<li><a href="#">전시장안내</a></li>
						<li><a href="#">- 피카소관</a></li>
						<li><a href="#">- 다빈치관</a></li>
						<li><a href="#">- 오지훈특별관</a></li>
					</ul>
				</li>
				
				<li class="reservation">
					<a href="#"> 대관 <i class='fa fa-angle-down'></i></a>
					<ul class="dept02">
						<li><a href="#">대관안내</a></li>
						<li><a href="#">대관시설</a></li>
						<li><a href="#">대관신청</a></li>
					</ul>
				</li>
				
				<li class="utilize">
					<a href="#">이용안내<i class='fa fa-angle-down'></i></a>
					<ul class="dept02">
						<li><a href="#">오시는길</a></li>
						<li><a href="#">시설안내</a></li>
						<li><a href="#">편의시설</a></li>
						<li><a href="#">관람매너</a></li>
					</ul>
				</li>
				
				<li class="ticket">
					<a href="#">티켓구매<i class='fa fa-angle-down'></i></a>
					<ul class="dept02">
						<li><a href="#">우대안내</a></li>
						<li><a href="#">티켓예매</a></li>
					</ul>
				</li>
				
				<li class="community">
					<a href="#">커뮤니티<i class='fa fa-angle-down'></i></a>
					<ul class="dept02">
						<li><a href="#">관람후기</a></li>
						<li><a href="#">이벤트</a></li>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">언론보도</a></li>
					</ul>
				</li>
				
			</ul>
		</div>
	</nav>
	
</body>
</html>
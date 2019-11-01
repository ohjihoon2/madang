<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String generalId=(String)session.getAttribute("generalID");
	String groupId=(String)session.getAttribute("groupID");
%>


<style>
* {
	font-family: "나눔스퀘어라운드";
}

header {
	border-top: 1px solid #05875e;
	margin-top: 0px;
	/* border:1px solid green; */
	/* width:1400px; */
	margin: auto;
}

header > div:first-child { /* 로고 이미지 영역 */
	/* border:1px solid red; */
	display: inline-block;
	padding-left: 55px;
}
header > div > a > img { /* 로고 이미지 */
	width: 240px; height: 80px;
	margin-top: 2px;
}
header > div > nav img { /* 검색 이미지 */
	width: 20px; height: 20px;
	margin-bottom: -5px;
	opacity: 0.5;
}
header>div>nav img:hover {
	opacity: 0.6;
}
header > div.header_nav { /* 검색 로그인~고객센터 영역 */
	/* border:1px solid blue; */
	display: inline-block;
	/* float:right; */
	/* margin-left:1500px; */
	margin: -20px 0px 0px 1500px;
}
header > div.header_nav li { /* 검색 로그인~고객센터 리스트 */
	/* border:1px solid green; */
	list-style-type: none;
	display: inline-block;
}
header > div.header_nav li a { /* 검색 로그인~고객센터 글자 */
	border-right: 1px solid gray;
	padding: 0px 10px 0px 6px;
	text-decoration: none;
	color: gray;
}
header > div.header_nav li a:hover {
	color: #282828;
}
header > div.header_nav li:first-child a { /* 검색 글자..? */
	border-right: none;
}
header > div.header_nav li:last-child a { /* 검색 로그인~고객센터 마지막 글자 */
	border-right: none;
}

header ul.dept01 { /* 헤더 메뉴바 전체 영역 */
	border-bottom: 1px solid #9b9b9b;
	text-align: center;
	margin: auto;
	padding: 30px 0px 0px 0px;
	width: 66%;
}
header ul.dept01 > li { /* 헤더 메뉴바 리스트 */
	/* border:1px solid blue; */
	display: inline-block;
	margin: 10px 40px 0px 40px;
	position: relative;
}
header ul.dept01 > li > a { /* 헤더 메뉴바 글자 */
	color: #05875e;
	display: block;
	font-size: 22pt;
	font-weight: bold;
	text-decoration: none;
	padding: 15px 14px;
	transition: 0.3s linear;
}
header ul.dept01 > li:hover {
	/* background: #126d9b; */
}
header ul.dept02 { /* 상세메뉴 내려오는거 */
	padding:0px;
	border-bottom: 5px solid #05875e;
	display: none;
	position: absolute;
	width: 200px;
	text-align:left;
	z-index:1;
}
header ul.dept02 li { /* 상세메뉴 내려온거 각 리스트 */
	border-top: 1px solid #444;
	display: block;
	background: white;
}
header ul.dept02 li:first-child {
	border-top: none;
}
header ul.dept02 li a { /* 상세 메뉴 */
	/* background: #9b9b9b; */
	display: block;
	padding: 10px 14px;
	text-decoration: none;
	color: #282828;
	font-weight: bold;
}
header ul.dept02 li a:hover {
	background: #9b9b9b;
	color: white;
	font-weight: bold;
}
/* nav .fa.fa-angle-down { margin-left: 6px; } */

</style>

</head>
<body>
	<header>
	<div>
		<a href="http://localhost:9090/mainpage.jsp"><img src="http://localhost:9090/images/index_logo.png"></a>
	</div>
	
	<div class="header_nav">
		<nav>
		<!-- 로그인 안했을때 -->
		<% if(generalId==null && groupId==null){ %>
			<li><a href="#"><img src="http://localhost:9090/images/search.png"></a></li>
			<li><a href="http://localhost:9090/contents/login/login.jsp">로그인</a></li>
			<li><a href="http://localhost:9090/contents/join/join0.jsp">회원가입</a></li>
			<li><a href="http://localhost:9090/contents/mypage/mypage_main.jsp">마이페이지</a></li>		<!-- 막아버리기 -->
			<!-- <li><a href="#">티켓예매</a></li> 막아버리기 -->
			<li><a href="http://localhost:9090/contents/cs/cs_main.jsp">고객센터</a></li>
		<!-- 일반회원 로그인 -->
		<%}else if(generalId!=null && groupId==null){ %>		
			<li><a href="#"><img src="http://localhost:9090/images/search.png"></a></li>
			<li><a href="http://localhost:9090/contents/login/logout_proce.jsp">로그아웃</a></li>
			<!-- <li><a href="http://localhost:9090/contents/join/join0.jsp">회원가입</a></li> -->
			<li><a href="http://localhost:9090/contents/mypage/mypage_main.jsp">마이페이지</a></li>
			<li><a href="#">티켓예매</a></li>
			<li><a href="http://localhost:9090/contents/cs/cs_main.jsp">고객센터</a></li>
		<!-- 대관자회원 로그인 -->
		<%}else if(generalId==null && groupId!=null){ %>
			<li><a href="#"><img src="http://localhost:9090/images/search.png"></a></li>
			<li><a href="http://localhost:9090/contents/login/logout_proce.jsp">로그아웃</a></li>
			<!-- <li><a href="http://localhost:9090/contents/join/join0.jsp">회원가입</a></li> -->
			<li><a href="http://localhost:9090/contents/mypage/mypage_main_group.jsp">마이페이지</a></li>
			<li><a href="#">티켓예매</a></li>
			<li><a href="http://localhost:9090/contents/cs/cs_main.jsp">고객센터</a></li>
		<%} %>
		</nav>
	</div>
	
	<nav>
		<div class="container">
			<ul class="dept01">
			
				<li class="concert">
					<a href="http://localhost:9090/contents/concert/concert.jsp">공연<i class='fa fa-angle-down'></i></a>
					 <ul class="dept02">
						<li><a href="http://localhost:9090/contents/concert/concert.jsp">공연일정</a></li>
						<li><a href="#">- 예매</a></li>
						<li><a href="http://localhost:9090/contents/concert/concert_seat_beethoven.jsp">객석안내</a></li>
						<li><a href="http://localhost:9090/contents/concert/concert_seat_beethoven.jsp">- 베토벤홀</a></li>
						<li><a href="http://localhost:9090/contents/concert/concert_seat_mozart.jsp">- 모짜르트홀</a></li>
					</ul>
				</li>
				
				<li class="exhibition">
					<a href="http://localhost:9090/contents/exhibition/exhibition.jsp"> 전시 <i class='fa fa-angle-down'></i></a>
					<ul class="dept02">
						<li><a href="http://localhost:9090/contents/exhibition/exhibition.jsp">전시일정</a></li>
						<li><a href="#">- 예매</a></li>
						<li><a href="http://localhost:9090/contents/exhibition/exhibition_view_picasso.jsp">전시장안내</a></li>
						<li><a href="http://localhost:9090/contents/exhibition/exhibition_view_picasso.jsp">- 피카소관</a></li>
						<li><a href="http://localhost:9090/contents/exhibition/exhibition_view_davinci.jsp">- 다빈치관</a></li>
						<li><a href="http://localhost:9090/contents/exhibition/exhibition_view_jihoon.jsp">- 오지훈특별관</a></li>
					</ul>
				</li>
				
				<li class="reservation">
					<a href="http://localhost:9090/contents/rental_hall/rentalInfo.jsp"> 대관 <i class='fa fa-angle-down'></i></a>
					<ul class="dept02">
						<li><a href="http://localhost:9090/contents/rental_hall/rentalInfo.jsp">대관안내</a></li>
						<li><a href="http://localhost:9090/contents/rental_hall/rentalhall.jsp">대관시설</a></li>
						<li><a href="http://localhost:9090/contents/rental_hall/rentalrequest.jsp">대관신청</a></li>
					</ul>
				</li>
				
				<li class="utilize">
					<a href="http://localhost:9090/contents/Usher/location.jsp">이용안내<i class='fa fa-angle-down'></i></a>
					<ul class="dept02">
						<li><a href="http://localhost:9090/contents/Usher/location.jsp">오시는길</a></li>
						<li><a href="http://localhost:9090/contents/Usher/facility.jsp">시설안내</a></li>
						<li><a href="http://localhost:9090/contents/Usher/utility_concert.jsp">편의시설</a></li>
						<li><a href="http://localhost:9090/contents/Usher/etiquette_concert.jsp">관람매너</a></li>
					</ul>
				</li>
				
				<li class="ticket">
					<a href="#">티켓구매<i class='fa fa-angle-down'></i></a>
					<ul class="dept02">
						<li><a href="#">티켓예매</a></li>
						<li><a href="http://localhost:9090/contents/ticket/respecting_ticket.jsp">우대안내</a></li>
					</ul>
				</li>
				
				<li class="community">
					<a href="http://localhost:9090/contents/Community/review_byDate.jsp">커뮤니티<i class='fa fa-angle-down'></i></a>
					<ul class="dept02">
						<li><a href="http://localhost:9090/contents/Community/review_byDate.jsp">관람후기</a></li>
						<li><a href="http://localhost:9090/contents/Community/event.jsp">이벤트</a></li>
						<li><a href="http://localhost:9090/contents/Community/notice_list.jsp">공지사항</a></li>
						<li><a href="http://localhost:9090/contents/Community/news.jsp">언론보도</a></li>
					</ul>
				</li>
				
			</ul>
		</div>
	</nav>
	</header>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="http://localhost:9090/MyJSP/contents/Community/index_carousel.css">
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
		width:900px;
		border-bottom:3px solid rgb(5,135,94);
		border-left:15px solid rgb(5,135,94);
		display:inline-block;
		margin:100px 0px 0px 70px;
		font-size:30pt;
		font-weight:bold;
		text-align:left;
	}
	div#date_info{
		display:inline-block;
		margin:30px 0px 50px 70px;
		
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
h2{
	margin:10px;
	margin:auto;
	padding:20px;
}
h2>span{
	 color:rgb(5,135,94);
}
div.event_contents{
	margin:auto;
	width:1000px;
	padding-left:50px;
}
article#article_carousel{
	text-align:center;
	width:800px;
	height:300px;
	margin:auto;
}
img.carousel_img{
	margin:auto;
}
div#event{
	border:1px double #9b9b9b;
	border-radius:5px;
	display:inline-block;
	padding:10px;
	width:400px;
	height:300;
	text-align:center;
	
}
div#event img{
	border:1px solid #ccc;
	border-radius:5px;
	padding: 10px;
	margin:auto;	
	
}

div.all_event_list{
	border-bottom:1px solid #ccc;
	padding:10px 0px 10px 30px;
	margin:auto;
	width:950px;

}
div#event{
	margin:10px 0px 10px 40px;

}
div#event>a>img{
	width:270px; height:110px; 
}
div#event p#event_title, div#all_event_title{
	margin:auto;
	font-weight:bold;
	font-size:12pt;
	margin: 5px 0px 5px 0px;
}
div#event p#event_term, div#all_event_term{
	font-size:10pt;
	padding-bottom:5px;
	color:#9b9b9b;
}
div.event_end{
	width:1000px;
	padding: 0px 0px 30px 50px;
	margin:auto;
}
div.event_end>div:first-child{
	font-weight:bold;
	color:rgb(5,135,94);
	padding-bottom:20px;
}
div.event_end>p{
	color:#9b9b9b;
	padding-bottom:10px;
}
div#demo{
	text-align:center;
	padding:5px;
}

</style>

</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="review.jsp">커뮤니티</a></li>
				<li><a href="review_byDate.jsp">관람후기</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="event.jsp">이벤트</a></li>
				<li><a href="notice_list.jsp">공지사항</a></li>
				<li><a href="news.jsp">언론보도</a></li>
			</ul>
		</div>
	<div class="event_contents">
		<div id="main_title">이벤트</div>
		
		<!-- <h1>캐러셀 추가 부분</h1>
				<img src="http://localhost:9090/dycgv/images/15675941245740.jpg" /> -->
				<article>
				<div id="demo" class="carousel slide" data-ride="carousel">

				  <!-- Indicators -->
				  <ul class="carousel-indicators">
				    <li data-target="#demo" data-slide-to="0" class="active"></li>
				    <li data-target="#demo" data-slide-to="1"></li>
				    <li data-target="#demo" data-slide-to="2"></li>

				  </ul>
				  
				  <!-- The slideshow -->
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="http://localhost:9090/images/comm_usher_img/event1.gif" alt="Los Angeles" width="700" height="250">
				    </div>
				    <div class="carousel-item">
				      <img src="http://localhost:9090/images/comm_usher_img/event2.gif" alt="Chicago" width="700" height="250">
				    </div>
				    <div class="carousel-item">
				      <img src="http://localhost:9090/images/comm_usher_img/event3.gif" alt="New York" width="700" height="250">
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
				<br>
		<!-- 캐러셀 끝 -->	
		
		<h2><span style="color:rgb(5,135,94)">●</span>현재 진행중인 이벤트</h2>
		<div class="evnet">
			<div id="event">
				<a href="eventing1.jsp"><img src="http://localhost:9090/images/comm_usher_img/event1.gif"/></a>
				<p id="event_title">이영우 피아노 독주회 기대평 이벤트</p>
				<p id="event_term">이벤트 기간 | 2019.10.14(월) ~ 2019.10.27(일)</p>
			</div>
			<div id="event">
				<a href="#"><img src="http://localhost:9090/MyJSP/sns_icon/event2.gif"/></a>
				<p id="event_title">[회원이벤트] 국립현대무용단 검은돌:모래의 기억</p>
				<p id="event_term">이벤트 기간 | 2019.10.14(월) ~ 2019.10.27(일)</p>
			</div>
			<div id="event">
				<a href="#"><img src="http://localhost:9090/MyJSP/sns_icon/event3.gif"/></a>
				<p id="event_title">오페라 카르멘 기대평 이벤트</p>
				<p id="event_term">이벤트 기간 | 2019.10.14(월) ~ 2019.10.27(일)</p>
			</div>
		</div>
	

		<br><br>
		<h2><span style="color:rgb(5,135,94)">●</span>전체 이벤트</h2>

		<%for (int i = 1; i < 11; i++) {%>
		<div class="all_event_list">
			<div id="all_event_title">음악당 대관공고 및 접수일정<span>조회수</span></div>
			<div id="all_event_date">2019.10.15~2019.10.30</div>		
		</div>
		<%}%>
		
		<br><hr><br>
		<div class="event_end">
			<div id="event_alarm">이벤트 유의사항</div>
			<p>이벤트 진행과 당첨자 선정은 해당 이벤트의 주최(기획)사에서 진행합니다.</p>
			<p>당첨자 선정시 당첨안내문자를 받을 수 있도록 마이페이지>개인정보관리에서 본인의 휴대전화번호를 꼭 확인해 주시기 바랍니다.</p>
		</div>
	</div>		
		
	</div>
</body>
</html>
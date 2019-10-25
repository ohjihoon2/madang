<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
div#news_content{
	margin:auto;
	width:1000px;
}

div#news_title{
	border-bottom:1px solid #9b9b9b;
	font-size:12pt;
	font-weight:bold;
	padding:15px;
}

span#sp_article{
	border:1px solid rgb(5, 135, 94);
	color: rgb(5, 135, 94);
	border-radius:7px;
	padding:5px;
}

span#sp_article,  a#sp_title, span#sp_press, span#sp_date{
	margin:0px 30px 0px 30px;
}

a#sp_title{
 	width:440px;
 	display:inline-block;
 	text-decoration:none;
 }
 
span#sp_press, span#sp_date{
	width:100px;
	display:inline-block;
}

div#sub_title {
	width: 950px;
	font-size: 20pt;
	text-align: left;
	margin-top: 50px;
	margin-bottom: 40px;
	padding: 0px 50px 7px 0px;
	border-bottom: 1px solid gray;
}

/*더보기버튼*/
div#btnMore_div button#btnMore {
	padding: 5px 50px 5px 50px;
	background: white;
	font-size: 13pt;
	border: none;
	border-top: 1px solid #9b9b9b;
	border-left: 1px solid #9b9b9b;
	border-right: 1px solid #9b9b9b;
	margin-top: 30px;
}

div#btnMore_div {
	text-align: center;
	border-bottom: 1px solid #9b9b9b;
	margin-bottom: 30px;
}


/*검색*/
div#faq_search {
   /* border:1px solid cyan; */
   margin:50px 0px 50px 0px;
   text-align:center;
}

div#faq_search input { /* 검색 입력창 */
   border-radius:10px;
   width:300px; height:30px;
   margin-right:15px;
   font-size:12pt;
   padding-left:5px;
}

div#faq_search img { /* 검색 이미지 */
   width: 20px; height: 20px;
   margin-bottom: -5px;
   opacity: 0.5;
}

</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">커뮤니티</a></li>
				<li><a href="review_byDate.jsp">관람후기</a></li>
				<li><a href="event.jsp">이벤트</a></li>
				<li><a href="notice_list.jsp">공지사항</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="news.jsp">언론보도</a></li>
			</ul>
		</div>

		<div id="main_title"> 언론보도 </div>

		<div id="news_content">
			<div id="sub_title">뉴스 & 이슈</div>
			<%
				for (int i = 1; i < 11; i++) {
			%>
			<div class="news_list">
				<div id="news_title"><span id="sp_article">언론기사</span><a id="sp_title" href="https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=103&oid=031&aid=0000511937">“오페라 ‘카르멘’ 하이라이트로 가을 정취 만끽”</a><span id="sp_press">아이뉴스24</span><span id="sp_date">2019.10.15</span></div>				
			</div>
 			<%
				}
			%>
			<div id="btnMore_div">			
				<button type="button" id="btnMore"><img src="http://localhost:9090/MyJSP/sns_icon/plus_more.png"/>더보기</button>			
			</div>
			
			<div id="faq_search">
       		<input type="text" name="faq_search" placeholder="검색어를 입력해주세요">
            <a href="#"><img src="http://localhost:9090/images/search.png"></a>
     		</div>

	</div>
</body>
</html>
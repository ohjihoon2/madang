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
div#year{
	width:950px;
	border-bottom:1px solid gray;
	text-align:center;
	color: rgb(5, 135, 94);
	font-weight:bold;
	font-size:30pt;
	padding:20px;
	margin:auto;
}
div.notice_list{
	border-bottom:1px solid #ccc;
	padding:10px 0px 10px 30px;
	margin:auto;
	width:900px;


}
div#notice_title{
	margin:auto;
	font-weight:bold;
	font-size:12pt;
	margin: 5px 0px 5px 0px;
}
div#notice_title>span{
 float:right;
}
div#notice_date{
	font-size:10pt;
	padding-bottom:5px;
	color:#9b9b9b;
}
div#btnMore_div button#btnMore{
	padding:5px 50px 5px 50px;
	background: white;
	font-size: 13pt;
	border:none;
	border-top:1px solid #9b9b9b;
	border-left:1px solid #9b9b9b;
	border-right:1px solid #9b9b9b;
	margin-top:30px;
}
div#btnMore_div{
	text-align:center;
	border-bottom:1px solid #9b9b9b;
	margin-bottom:30px;

}
div#faq_search {
   /* border:1px solid cyan; */
   margin-top:50px;
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
			<li><a style="color: rgb(5, 135, 94)" href="notice.jsp">공지사항</a></li>
			<li><a href="news.jsp">언론보도</a></li>
		</ul>
	</div>

		<div id="main_title">공지사항</div>
		<div>
			<div id="year">2019</div>
			<%
				for (int i = 1; i < 11; i++) {
			%>
			<div class="notice_list">
				<div id="notice_title"><a href="">음악당 대관공고 및 접수일정<span>조회수</span></a></div>
				<div id="notice_date">2019.10.15~2019.10.30</div>				
			</div>
 			<%
				}
			%>
			<div id="btnMore_div">			
				<button type="button" id="btnMore"><img src="http://localhost:9090/images/comm_usher_img/plus_more.png"/>더보기</button>			
			</div>
			
			<div id="faq_search">
       			<input type="text" name="faq_search" placeholder="검색어를 입력해주세요">
            	<a href="#"><img src="http://localhost:9090/images/search.png"></a>
     		</div>
     		
		</div>

	</div>
</body>
</html>
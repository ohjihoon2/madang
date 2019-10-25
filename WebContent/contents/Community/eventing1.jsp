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
	div#event_content{
		width: 1000px;
		margin:auto;
	}
	
	div#sub_title {
		width: 950px;
		font-size: 15pt;
		text-align: left;
		padding: 50px;
		margin: auto;
	}
	
	h1#event_title, h3#event_term{
		text-align:center;
		color:#9b9b9b;
		margin-bottom:10px;
	}
	
	h3#event_term{
		margin-bottom:70px;
	}
	
	img#event_poster{
		margin-bottom:50px;
		padding-bottom:50px;
		border-bottom:1px solid #9b9b9b;
	}
	
	div#sub_title2>span{
		color:#9b9b9b;
		font-size:15pt;
	}
	
	button#btnWrite{
		border:1px solid rgb(5,135,94);
		border-radius:10px;
		color: rgb(5,135,94);
		background:white; 
		padding:10px 50px 10px 50px;
		margin-right:20px;	
		float:right;
	}
	
	button#btnRE, button#btnDE{
		border:1px solid  rgb(155,155,155);
		border-radius:10px;
		color: rgb(5,135,94);
		background:white; 
		padding:7px 20px 7px 20px;
		margin-right:20px;	
		float:right;
	}
	
	ul#event_ul{
		border-bottom:1px solid rgb(155,155,155);
		margin:10px;
		padding:10px;		
	}
	
	li{
		list-style-type:none;
		padding:10px;
	}
	
	li>span#li_id{
		font-weight:bold;
		font-size:13pt;
		margin-right:20px;
	}
	
	li>span#li_event_date, li#li_content{
		color:gray;
	}
	
	li>span#li_event_date{
		font-size:9pt;
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
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">커뮤니티</a></li>
				<li><a href="review_byDate.jsp">관람후기</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="event.jsp">이벤트</a></li>
				<li><a href="notice_list.jsp">공지사항</a></li>
				<li><a href="news.jsp">언론보도</a></li>
			</ul>
		</div>
		<div id="event_content">
			<div id="sub_title">진행중인 이벤트</div>
			<h1 id="event_title">이영우 피아노 독주회 기대평 이벤트</h1>
			<h3 id="event_term">이영우 피아노 독주회 기대평 이벤트</h3>
			<img id="event_poster" src="http://localhost:9090/images/comm_usher_img/event1_content.gif"/>
			<div id="sub_title2"><span>댓글이벤트</span><button type="button" id="btnWrite">댓글쓰기</button>
				<a href="http://localhost:9090/contents/Community/event.jsp"><button type="button" id="btnWrite">목록보기</button></a></div>
			<%for(int i=1; i<=5; i++){ %>
			<ul id="event_ul">
				<li><span id="li_id">아이디</span><span id="li_event_date">날짜</span>
				<button type="button" id="btnRE">수정</button><button type="button" id="btnDE">삭제</button></li>
				<li id="li_content">브람스와 바흐 피아노 선율이 함께라면 가을밤 정취가 더 깊어질 것 같습니다.</li>
				
			</ul>
			<%} %>
		</div>	
		
		<div id="btnMore_div">
			<button type="button" id="btnMore">
				<img src="http://localhost:9090/images/comm_usher_img/plus_more.png" />더보기
			</button>
		</div>
	
	</div>	
</body>
</html>
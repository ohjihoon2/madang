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
	div#notice_content{
		width:1000px;
		margin:auto;
	}
	
	div#sub_title {
		width: 900px;
		font-size: 20pt;
		text-align: left;
		margin-bottom: 50px;
		padding: 50px 50px 7px 50px;
		border-bottom: 1px solid gray;
	}
	
	h1#review_title{
		padding:30px 30px 30px 50px;
		text-align:left;
		margin-bottom:10px;
		margin:auto;
	}
	
	h1#review_title>span{
		padding:10px 200px 10px 10px;
		font-size: 15pt;
		color:#9b9b9b;
		float:right;
	}
	
	h1#review_title{
		color:#9b9b9b;
	}
	
	textarea#review_contents{
		margin: 10px 20px 70px 20px;
		border:1px solid #9b9b9b;
		border-radius:10px;
		width:700px;
		height:200px;
		padding:20px;
		font-size:13pt;
	}
	
	textarea#comment{
		margin:10px 0px 10px 25px;
		padding:15px;
		border:1px solid #9b9b9b;
		border-radius:10px;
		width:800px;
		height:30px;
		font-size:11pt;
	}
	
	button#btnNoticeList{
		border:1px solid rgb(5,135,94);
		border-radius:10px;
		color: rgb(5,135,94);
		background:white; 
		padding:10px 50px 10px 50px;
		margin-right:20px;	
		float:right;
	}
	
</style>
</head>
<body>
<jsp:include page="../../header.jsp" />
	<div id="left_nav">
		<ul>
			<li><a style="color: rgb(5, 135, 94)" href="review.jsp">커뮤니티</a></li>
			<li><a href="review_byDate.jsp">관람후기</a></li>
			<li><a href="event.jsp">이벤트</a></li>
			<li><a style="color: rgb(5, 135, 94)" href="notice_list.jsp">공지사항</a></li>
			<li><a href="news.jsp">언론보도</a></li>
		</ul>
	</div>

	<div id="main_title">공지사항</div>

	<div id="notice_content">
		<div id="sub_title">공지사항</div>
			<h1 id="review_title">공지사항제목<span> 공지날짜  | 조회수 </span></h1>
			<textarea id="review_contents" placeholder="공지사항 내용"></textarea>	
			<div>
				<a href="notice_list.jsp"><button id="btnNoticeList" type="button">목록보기</button></a>
			</div>
	</div>	
</body>
</html>
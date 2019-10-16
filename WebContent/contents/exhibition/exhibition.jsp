<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	
	/** 중앙 exhibition contents **/
	.exhibition_info_today{
		width:1000px;
		height:450px;
		margin:auto;
	}
	.exhibition_info{
		display:inline-block;
		padding:10px;
	}
	
	.exhibition_info_text>div{
		font-size: 11pt;
	} 
		
	div.exhibition_info_text>div>a{
		display:inline-block;
		color:#e5002c;
		border:1px solid #e5002c;
		text-decoration:none;
		margin-top:20px;
		padding:5px 30px 5px 30px;
		border-radius: 5px;
		
	}
	
	
	
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<img src="http://localhost:9090/images/concert_main/concert_main.png">
	<div id="left_nav">
		<ul>
			<li><a href="exhibition.jsp">전시</a></li>
			<li><a href="exhibition.jsp" style="color:rgb(5,135,94)">전시일정</a></li>
			<li><a href="concert_seat_beethoven.jsp">전시안내</a></li>
		</ul>
	</div>
	<div id="main_title">&nbsp&nbsp전시</div><br>
	<div id="date_info">2019.10.02 (수) </div>
	
	<button type="button">이미지보기</button>
	<button type="button">텍스트보기</button>
	<br>
	<div class="exhibition_info_today">
		<div class="exhibition_info">
			<div class="exhibition_info_count">
				<a href="#"><img src="http://localhost:9090/images/concert_main/20190823151229P.gif"></a>
				<div class="exhibition_info_text">
					<h4><a href="#">2019 연극 <늙은 부부이야기></a></h4><br>
					<div>
						<div>한가람미술관	</div>
						<span>2019.10.02(수) ~ 2019.10.29(화)</span><br>
						<a href="#">현장판매</a>
					</div>
				</div>
			</div>
		</div>
		<div class="exhibition_info">
			<div class="exhibition_info_count">
				<a href="#"><img src="http://localhost:9090/images/concert_main/20190823151229P.gif"></a>
				<div class="exhibition_info_text">
					<h4><a href="#">2019 연극 <늙은 부부이야기></a></h4><br>
					<div>
						<div>한가람미술관	</div>
						<span>2019.10.02(수) ~ 2019.10.29(화)</span><br>
						<a href="#">현장판매</a>
					</div>
				</div>
			</div>
		</div>
		<div class="exhibition_info">
			<div class="exhibition_info_count">
				<a href="#"><img src="http://localhost:9090/images/concert_main/20190823151229P.gif"></a>
				<div class="exhibition_info_text">
					<h4><a href="#">2019 연극 <늙은 부부이야기></a></h4><br>
					<div>
						<div>한가람미술관	</div>
						<span>2019.10.02(수) ~ 2019.10.29(화)</span><br>
						<a href="#">현장판매</a>
					</div>
				</div>
			</div>
		</div>
		<div class="exhibition_info">
			<div class="exhibition_info_count">
				<a href="#"><img src="http://localhost:9090/images/concert_main/20190823151229P.gif"></a>
				<div class="exhibition_info_text">
					<h4><a href="#">2019 연극 <늙은 부부이야기></a></h4><br>
					<div>
						<div>한가람미술관	</div>
						<span>2019.10.02(수) ~ 2019.10.29(화)</span><br>
						<a href="#">현장판매</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
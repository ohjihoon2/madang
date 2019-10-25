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
div#review_content{
	width:1000px;
	margin:auto;
}

div#sub_title {
	width: 950px;
	font-size: 20pt;
	text-align: left;
	margin-bottom: 50px;
	padding: 50px 50px 7px 50px;
	border-bottom: 1px solid gray;
}

div.table_div {
	margin: auto;
}

table.review_table {
	border-bottom: 1px solid #9b9b9b;
	width: 1000px;
	margin: auto;
	margin: 10px;
	padding: 10px;
}

table.review_table td#title, table.review_table td#contents{
	width: 650px;	
	padding-left:30px;
}

table.review_table img.poster {
	border:1px solid rgb(5, 135, 94);
	border-radius: 7px;
	width: 110px;
	height: 130px;
	padding: 5px;
}

button#btnByDate, button#btnByStar {
	border: none;
	border-radius: 5px;
	padding: 10px;
	font-size: 12pt;
	font-weight: bold;
	float: right;
	border:1px solid rgb(5, 135, 94);
}


table.review_table th {
	display:inline-block;
	width: 200px;
	font-size:16px;
	margin-top:15px;
}


table.review_table td:nth-child(3) span#hits{
	color:rgb(155,155,155);
	float:right;
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

/* 별점 */
th.star_rating {font-size:0; letter-spacing:-4px;}

th.star_rating a {
    font-size:22px;
    letter-spacing:0;
    display:inline-block;
    margin-left:5px;
    color:#ccc;
    text-decoration:none;
}

th.star_rating a:first-child {margin-left:0;}

th.star_rating a.on {color:tomato;}
    
</style>

<script src="http://localhost:9090/MyJSP/jquery/jquery-3.4.1.min.js"></script>

<script>
$(document).ready(function(){
	$( "th.star_rating a" ).click(function() {
	    $(this).parent().children("a").removeClass("on");
	    $(this).addClass("on").prevAll("a").addClass("on");
	    return false;
	});
});
</script>

</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">커뮤니티</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">관람후기</a></li>
				<li><a href="event.jsp">이벤트</a></li>
				<li><a href="notice_list.jsp">공지사항</a></li>
				<li><a href="news.jsp">언론보도</a></li>
			</ul>
		</div>

		<div id="main_title">관람후기</div>

		<div id="review_content">
			<div id="sub_title">
				관람후기
				<a href="http://localhost:9090/MyJSP/contents/Community/review_byStar.jsp"><button type="button" id="btnByStar" style="background:rgb(5, 135, 94);color:white">최신날짜순</button></a>
				<a href="http://localhost:9090/MyJSP/contents/Community/review_byDate.jsp"><button type="button" id="btnByDate" style="background:white;color:black">평점높은순</button></a>
				
			</div>
			<div class="table_div">
			<%for(int i = 1; i < 8; i++){ %>
				<table class="review_table">
					<tr>
						<th>yyyy-mm-dd</th>
						<td rowspan=3><img class="poster"
							src="http://localhost:9090/images/comm_usher_img/1945poster.jpg" /></td>
						<td id="title">title<span id="hits">조회수</span></td>
					</tr>
					<tr>
						<th>ID@test.com</th>
						<td rowspan=2 id="contents">Contents</td>
					</tr>
					
					<tr>
						<th class="star_rating">	
						<%for(int j=1; j<=5; j++){ %>				
							<a href="#" class="on" value="<%=j %>">★</a>
						<%} %>    
						</th>						
					</tr>
				</table>
			<%}%>
			</div>
	
			<div id="btnMore_div">
				<button type="button" id="btnMore">
					<img src="http://localhost:9090/images/comm_usher_img/plus_more.png" />더보기
				</button>
			</div>
			
			<div id="faq_search">
	       		<input type="text" name="faq_search" placeholder="검색어를 입력해주세요">
	            <a href="#"><img src="http://localhost:9090/images/search.png"></a>
	     	</div>
     	
		</div>
		
	</div>
</body>
</html>
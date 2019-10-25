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
div#content{
	width: 1000px;
	margin:auto;
}
div#utility_list {
	width: 1000px;
	font-size: 20pt;
	text-align: left;
	margin-top: 50px;
	margin-bottom: 50px;
	padding-left: 50px;
}

div#utility_list1, div#utility_list2 {
	padding-left:70px;
	font-size: 10pt;
	text-align: left;
	color: #9b9b9b;
}

div.img_div {
	border-bottom: 1px solid #9b9b9b;
	padding: 10px 0px 50px 0px;
	width: 1000px;
	margin: auto;
}

article.utility_ariticle {
	border: 1px solid #ccc;
	width: 200px;
	height: 270px;
	display: inline-block;
	padding: 10px;
	margin: 20px;
	border-radius: 7px;
	text-align: center;
}

article.utility_ariticle>img:hover {
	opacity: 0.7;
}

article.utility_ariticle>img {
	width: 180px;
	height: 150px;
	margin-bottom: 5px;
	border: 1px solid #ccc;
}

section {
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="location.jsp">이용안내</a></li>
				<li><a href="location.jsp">오시는길</a></li>
				<li><a href="facility.jsp">시설안내</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="utility.jsp">편의시설</a></li>
				<li><a href="etiquette_concert.jsp">관람매너</a></li>
			</ul>
		</div>

		<div id="main_title">편의시설</div>
<div id="content">
		<div id="utility_list">공연장 편의 시설 안내</div>
		<div id="utility_list1">오페라글라스, 물품보관소, 키즈라운지, 수유실, 주차요금 사전정산기,
			은행 ATM</div>
		<div id="utility_list2">*이용문의 02-580-1300 (09:00~20:00)</div>
		<div>
			<section> <article class="utility_ariticle"> <img
				src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png"> <label>오페라글라스</label>
			</article> <article class="utility_ariticle"> <img
				src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png"> <label>물품보관소</label>
			</article> <article class="utility_ariticle"> <img
				src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png"> <label>키즈라운지</label>
			</article> </section>
			<section> <article class="utility_ariticle"> <img
				src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png"> <label>수유실</label>
			</article> <article class="utility_ariticle"> <img
				src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png"> <label>주차요금
				사전정산기</label> </article> <article class="utility_ariticle"> <img
				src="http://localhost:9090/MyJSP/sns_icon/madang_logo.png"> <label>은행ATM</label>
			</article> </section>
		</div>
</div>		
	</div>
</body>
</html>
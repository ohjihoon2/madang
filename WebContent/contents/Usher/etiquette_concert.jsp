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
div#sub_title {
	width: 1000px;
	font-size: 20pt;
	font-weight: bold;
	text-align: left;
	padding: 50px;
	margin:auto;
}

div#Sub_btn{
	width:1000px;
	margin:auto;
	padding:20px;
}
span#CE, span#EE{
	border-radius: 5px;
	padding: 10px 100px 10px 100px;
	font-size: 12pt;
	font-weight: bold;
	float: right;
	border:1px solid rgb(5, 135, 94);
	background:white;
	margin:auto;
}

span#CE{
	color:white;
	background:rgb(5, 135, 94);
}

div.img_div {
	border-bottom: 1px solid #9b9b9b;
	padding: 10px 0px 50px 0px;
	width: 1000px;
	margin: auto;
}

div.img_div>img {
	width: 1000px;
}
</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="etiquette_concert.jsp">관람매너</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="etiquette_concert.jsp">공연매너</a></li>
				<li><a href="etiquette_exhibition.jsp">전시매너</a></li>
			</ul>
		</div>

		<div id="main_title">관람매너</div>
		<br>
		<div id="Sub_btn">
			<a href="http://localhost:9090/contents/Usher/etiquette_concert.jsp"><span id="CE">관람매너</span></a>
			<a href="http://localhost:9090/contents/Usher/etiquette_exhibition.jsp"><span id="EE">전시매너</span></a>
		</div>

		<div id="sub_title">공연장 오기 전</div>
		<div class="img_div">
			<img class="etiquette_img"
				src="http://localhost:9090/images/comm_usher_img/etiquette_before_consert.PNG" />
		</div>


		<div id="sub_title">공연장에서</div>
		<div class="img_div">
			<img class="etiquette_img"
				src="http://localhost:9090/images/comm_usher_img/etiquette_in_consert.PNG" />
		</div>


		<div id="sub_title">박수매너</div>
		<div class="img_div">
			<img class="etiquette_img"
				src="http://localhost:9090/images/comm_usher_img/etiquette_applauds.PNG" />
		</div>

		<div class="img_div">
			<img class="etiquette_img"
				src="http://localhost:9090/images/comm_usher_img/etiquette_bottom.PNG" />
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.madang.dao.ConcertDAO, com.madang.vo.ConcertVO, java.util.*"%>

<%
	ConcertDAO dao = new ConcertDAO();
	ArrayList<ConcertVO>list = dao.getConcertInfo();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
 		function showPopup() { window.open("ticket.jsp", "window팝업", "width=1000, height=700, left=400, top=200"); }
</script>
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
	div.concert_info{
		width:1000px;
		height:300px;
		margin:auto;
	}
	div.concert_info>a{
		float:left;
		padding:8px;
	}
	
	div.concert_info>a>img{
		width:220px; height:270px;
	}
	
	div.concert_info>div{
		border-bottom:1px solid green;
		width:650px;
		height:280px;
		margin-top:7px;
		float:left;
		
	}
	div.concert_info>div>h2{
		text-align:left;
		
		color:black;
		margin-left:10px;
	}
	div.concert_info>div>h2>a{
		text-decoration: none;
	}
	
	div.concert_info>div>#hide_space{
		width:550px;
		height:130px;
	}
	div.concert_info>div>#text_space{
		text-align:left;
		margin-left:10px;
	}
	div.concert_info>div>#text_space>div>.ticketing_popup{
		display:inline-block;
		color:#e5002c;
		border:1px solid #e5002c;
		text-decoration:none;
		margin:-10px 20px 0px -30px;
		padding:5px 30px 5px 30px;
		border-radius: 5px;
		float:right;
		
	}
		
	div.concert_info>div>#text_space>div>.ticketing_popup:hover{
	 
	  background-color: #e5002c;
	  color:white;
	}
	#text_space > div >div{
		margin: 10px 0px 10px 0px;
	}
		
/* 	div#concertInfo>div>#textSpace>div>div{
	border:1px solid gray;
	}
	div#concertInfo>div>#textSpace>div>span{
	border:1px solid gray;
	} */
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<img src="http://localhost:9090/images/concert_main/concert_main.png">
	<div id="left_nav">
		<ul>
			<li><a href="concert.jsp">공연</a></li>
			<li><a href="concert.jsp" style="color:rgb(5,135,94)">공연일정</a></li>
			<li><a href="concert_seat_beethoven.jsp">객석안내</a></li>
		</ul>
	</div>
	<div id="main_title">&nbsp&nbsp공연</div><br>
	<div id="date_info">2019.10.02 (수) 오늘의 공연입니다.</div>
	
	<button type="button">이미지보기</button>
	<button type="button">텍스트보기</button>
	
	<%for(int i=0;i<list.size();i++){ %>
	<div class="concert_info">
		<a href="concert_detail.jsp"><img src="http://localhost:9090/images/concert_main/<%=list.get(i).getC_poster()%>"></a>
		<div>
			<h2><a href="concert_detail.jsp"><%=list.get(i).getC_title() %></a></h2>
			<div id="hide_space">
				<span></span>
			</div>
			<div id="text_space">
				<div>
					<div><%=list.get(i).getC_place() %> <span>|</span> <%=list.get(i).getC_sdate() %>~ <%=list.get(i).getC_edate() %></div>
					<span>R석 <%=list.get(i).getC_price() %> 원 </span>
					<input type="button" value="예매" onclick="showPopup();" class="ticketing_popup"/>
				</div>
			</div>
		</div>
	</div>
	<%} %>

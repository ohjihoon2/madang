<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import ="com.madang.dao.ConcertDAO, com.madang.vo.ConcertVO, java.util.*, java.util.Date, java.text.SimpleDateFormat"%>

<%
	String id = (String)session.getAttribute("generalID");

	ConcertDAO dao = new ConcertDAO();
	ArrayList<ConcertVO>list = dao.getConcertInfo();	
	
	Date now = new Date();
	//오늘 날짜	(년.월.일(요일))
	SimpleDateFormat sf  = new SimpleDateFormat("yyyy.MM.dd.(E)");
	String today = sf.format(now);

	//오늘 날짜	(년월일)
	sf = new SimpleDateFormat("yyMMdd");
	String tday = sf.format(now);
	System.out.println("tday : "+tday);
	System.out.println("id : "+id);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>
<title>Insert title here</title>
<script>
	
	$(document).ready(function(){
		var id = "<%=id%>";
		//팝업창 
		$('.ticketing_popup').click(function(){
			var code = $('.'+$(this).attr("id")).val();
			//예매 팝업 validation
			 if(id ==null || id==" "){
				alert("로그인시 이용가능합니다. 로그인 페이지로 이동합니다.");
				location.replace("http://localhost:9090/contents/login/login.jsp");
			}else{
		  		window.open("ticket.jsp?code="+code, "window팝업", "width=1000, height=700, left=400, top=200");
			} 
			return false;
		});
		
		
		
	});
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
	<div id="left_nav">
		<ul>
			<li><a href="concert.jsp">공연</a></li>
			<li><a href="concert.jsp" style="color:rgb(5,135,94)">공연일정</a></li>
			<li><a href="concert_seat_beethoven.jsp">객석안내</a></li>
		</ul>
	</div>
	<div id="main_title">&nbsp&nbsp공연</div><br>
	<div id="date_info"><%=today%> 오늘의 공연입니다.</div>
	
	<%
		for(int i=0;i<list.size();i++){ 
			//오늘 날짜 int값
			int td = Integer.parseInt(tday);
			//공연 마지막 날짜 int값 
			int ed = list.get(i).getEday();
			//공연 시작 날짜 int값 
			int sd = list.get(i).getSday();
			//마지막 공연날이 오늘이전이면 concert list에서 보여지지 않음.
			if(sd<=td  &&  td<=ed){
	%>
	
	<div class="concert_info">
		<a href="http://localhost:9090/contents/concert/concert_detail.jsp?concert_code=<%=list.get(i).getConcert_code()%>"><img src="http://localhost:9090/images/concert_main/<%=list.get(i).getC_poster()%>"></a>
		<div>
			<h2><a href="concert_detail.jsp?concert_code=<%=list.get(i).getConcert_code()%>"><%=list.get(i).getC_title() %></a></h2>
			<div id="hide_space">
				<span></span>
			</div>
			<div id="text_space">
				<div>
					<div><%=list.get(i).getC_place() %> <span>|</span> <%=list.get(i).getC_sdate() %>~ <%=list.get(i).getC_edate() %></div>
					<span>R석 <%=list.get(i).getC_price() %> 원 </span>
				
					<input type="hidden" value="<%=list.get(i).getConcert_code()%>" class="code<%=i%>"/>
					
					<input type="button" value="예매" class="ticketing_popup" id="code<%=i%>"/>
				</div>
			</div>
		</div>
	</div>
	<%
		} 
	}%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.madang.vo.*, com.madang.service.*, java.util.*,java.util.Date, java.text.SimpleDateFormat"%>
<%
	String id = (String)session.getAttribute("generalID");

	ExhibitionVO vo = new ExhibitionVO();
	ExhibitionService service = new ExhibitionService();
	/* vo = service.getResultExhibition() */;
	ArrayList<ExhibitionVO> list = new ArrayList<ExhibitionVO>();
	list = service.getResultExhibitionList();
	
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
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>
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
	.exhibition_area{
		width:1000px;
		height:3000px;
		margin:auto;
	}
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
	div.exhibition_info_today > div > div > a > img{
		width:230px; height:280px;
		
	}

	div.last_exhibition_info{
		width:1000px;
		height:300px;
		margin:auto;
	}
	.last_exhibition_info_content{
		display:inline-block;	
		width:470px;
		height:200px;
	}
	div.last_exhibition_info_content>a{
		float:left;
		padding:8px;
	}
	
	div.last_exhibition_info_content>a>img{
		width:150px; height:170px;
	}
	
	div.last_exhibition_info_content>div{
		width:300px;
		height:170px;
		margin-top:7px;
		float:left;
		
	}
	div.last_exhibition_info_content>div>h3{
		text-align:left;
		color:black;
		margin-left:10px;
	}
	div.last_exhibition_info_content>div>h3>a{
		text-decoration: none;
	}
	
	div.last_exhibition_info_content>div>#hide_space{
		width:200px;
		height:100px;
	}
	div.last_exhibition_info_content>div>#text_space{
		text-align:left;
		margin-left:10px;
	}
	
	.last_exhibition_text{
		display:inline-block;
		font-size:15pt;
		font-weight:bold;
		padding:40px 0px 40px 0px;
	}
	
	.last_exhibition_year{
		display:inline-block;
		font-size:15pt;
		padding:40px 0px 40px 0px;
	}
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<div id="left_nav">
		<ul>
			<li><a href="exhibition.jsp">전시</a></li>
			<li><a href="exhibition.jsp" style="color:rgb(5,135,94)">전시일정</a></li>
			<li><a href="exhibition_view_picasso.jsp">전시장안내</a></li>
		</ul>
	</div>
	<div id="main_title">&nbsp&nbsp전시</div><br>
	<div id="date_info"><%=today%>오늘의 전시입니다.</div>
	<br>
	<div class="exhibition_area">
		<div class="exhibition_info_today">
			<%
				for(int i=0; i<list.size();i++){ 
					//오늘 날짜 int값
					int td = Integer.parseInt(tday);
					//공연 마지막 날짜 int값 
					int ed = list.get(i).getEday();
					//공연 시작 날짜 int값 
					int sd = list.get(i).getSday();
					//마지막 공연날이 오늘이전이면 concert list에서 보여지지 않음.
					if(sd<=td  &&  td<=ed){
			%>
			<div class="exhibition_info">
				<div class="exhibition_info_count">
					<a href="http://localhost:9090/contents/exhibition/exhibition_detail.jsp?exhibition_code=<%=list.get(i).getExhibition_code()%>"><img src="http://localhost:9090/images/exhibition/<%=list.get(i).getE_poster()%>"></a>
					<div class="exhibition_info_text">
						<h4><a href="http://localhost:9090/contents/exhibition/exhibition_detail.jsp?exhibition_code=<%=list.get(i).getExhibition_code()%>"><%=list.get(i).getE_title() %></a></h4><br>
						<div>
							<div><%=list.get(i).getE_place() %></div>
							<span><%=list.get(i).getE_sdate()%> ~ <%=list.get(i).getE_edate() %></span><br>
							<a href="#">현장판매</a>
						</div>
					</div>
				</div>
			</div>
			<%} 
			}%>
		</div>
		<div class="last_exhibition">
			<span class="last_exhibition_text">지난전시</span><br>
			<hr>
			<span class="last_exhibition_year">2019</span><br>
			<div class="last_exhibition_info">
				<%
					for(int i=0;i<list.size();i++){ 
						//오늘 날짜 int값
						int td = Integer.parseInt(tday);
						//공연 마지막 날짜 int값 
						int ed = list.get(i).getEday();
						if(ed<td){
						//마지막 공연날이 오늘이전이면 concert list에서 보여지지 않음.
				
				%>
				<div class="last_exhibition_info_content">
					<a href="http://localhost:9090/contents/exhibition/exhibition_detail.jsp?exhibition_code=<%=list.get(i).getExhibition_code()%>"><img src="http://localhost:9090/images/exhibition/<%=list.get(i).getE_poster()%>"></a>
					<div>
						<h3><a href="http://localhost:9090/contents/exhibition/exhibition_detail.jsp?exhibition_code=<%=list.get(i).getExhibition_code()%>"><%=list.get(i).getE_title() %></a></h3>
						<div id="hide_space">
							<span></span>
						</div>
						<div id="text_space">
							<div>
								<div><%=list.get(i).getE_place() %></div>
								<span><%=list.get(i).getE_sdate()%> ~ <%=list.get(i).getE_edate() %></span>
							</div>
						</div>
					</div>
				</div>
				<%}
				}%>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>
<%
	
	EventService service = new EventService();
	ArrayList<EventVO> list = service.getResultList();
	ArrayList<EventVO> inglist = service.getResultIngList();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/MyJSP/contents/Community/index_carousel.css">
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="review.jsp">커뮤니티</a></li>
				<li><a href="review_byDate.jsp">관람후기</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="event.jsp">이벤트</a></li>
				<li><a href="notice_list.jsp">공지사항</a></li>
				<li><a href="news.jsp">언론보도</a></li>
			</ul>
		</div>
		
		
	<div class="event_contents">
		<div id="main_title">이벤트</div>
		
		<!-- <h1>캐러셀 추가 부분</h1>
				<img src="http://localhost:9090/dycgv/images/15675941245740.jpg" /> -->
				<article>
				<div id="demo" class="carousel slide" data-ride="carousel">

				  <!-- Indicators -->
				  <ul class="carousel-indicators">
					  	<%
					  	for(int i=0; i<inglist.size();i++){ 
					  		if(i==0){
					  	%>
					  			<li data-target="#demo" data-slide-to="<%=i %>" class="active"></li>	
					  	<%	}else{ %>
					  			<li data-target="#demo" data-slide-to="<%=i %>"></li>	
					    <%
					    	}
					    }
					    %> 
				  </ul>
				  
				  <!-- The slideshow -->
				  <div class="carousel-inner">
 					<%for(EventVO vo: inglist){ %> 
				    <div class="carousel-item active">
				      <img src="http://localhost:9090/images/event/<%=vo.getEv_sthumbnail() %>" alt="eventImg" width="700" height="250">
				    </div>
 				    <%} %> 
				  
				  <!-- Left and right controls -->
				  <a class="carousel-control-prev" href="#demo" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#demo" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
				</div>
				</article>
				<br>
		<!-- 캐러셀 끝 -->	
		
		
<!-- 이벤트 -->		
		<h2><span style="color:rgb(5,135,94)">●</span>현재 진행중인 이벤트</h2>
		<div class="evnet">
		<%for(EventVO vo: inglist){ %>
			<div id="event">
				<a href="event_content.jsp?ev_code=<%=vo.getEv_code() %>"><img src="http://localhost:9090/images/event/<%=vo.getEv_sthumbnail() %>"/></a>
				<p id="event_title"><%=vo.getEv_title() %></p>
				<p id="event_term">이벤트 기간 | <%=vo.getEv_sdate() %> ~ <%=vo.getEv_edate() %></p>
			</div>
			<input type="hidden" name="ev_code" value="<%=vo.getEv_code() %>">
		<%} %>			
<!-- 		<div id="event">
				<a href="#"><img src="http://localhost:9090/MyJSP/sns_icon/event2.gif"/></a>
				<p id="event_title">[회원이벤트] 국립현대무용단 검은돌:모래의 기억</p>
				<p id="event_term">이벤트 기간 | 2019.10.14(월) ~ 2019.10.27(일)</p>
			</div>
 -->			
		</div>
	

		<br><br>
		<h2><span style="color:rgb(5,135,94)">●</span>전체 이벤트</h2>

		<%for (EventVO vo: list) { %>
		<div class="all_event_list">
			<div id="all_event_title"><a style="text-decoration:none;color:black;"href="http://localhost:9090/contents/Community/event_content.jsp?ev_code=<%=vo.getEv_code() %>"><%=vo.getEv_title() %></a><span>조회수:<%=vo.getEv_hits() %></span></div>
			<div id="all_event_date" style="color:gray">이벤트 기간:<%=vo.getEv_sdate() %> ~ <%=vo.getEv_edate() %></div>
		</div>
		<%}%>
		
		
<!-- 이벤트 풋터 -->		
		<br><hr><br>
		<div class="event_end">
			<div id="event_alarm">이벤트 유의사항</div>
			<p>이벤트 진행과 당첨자 선정은 해당 이벤트의 주최(기획)사에서 진행합니다.</p>
			<p>당첨자 선정시 당첨안내문자를 받을 수 있도록 마이페이지>개인정보관리에서 본인의 휴대전화번호를 꼭 확인해 주시기 바랍니다.</p>
		</div>
	</div>		
		
	</div>
</body>
</html>
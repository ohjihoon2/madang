<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://211.63.89.214:9090/css/community.css"/>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>

	<div id="left_nav">
		<ul>
			<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">커뮤니티</a></li>
			<li><a href="review_byDate.jsp">관람후기</a></li>
			<li><a href="event.jsp">이벤트</a></li>
			<li><a style="color: rgb(5, 135, 94)" href="notice.jsp">공지사항</a></li>
			<li><a href="news.jsp">언론보도</a></li>
		</ul>
	</div>

		<div id="main_title">공지사항</div>
		<div>
			<div id="year">2019</div>
			<%
				for (int i = 1; i < 11; i++) {
			%>
			<div class="notice_list">
				<div id="notice_title"><a href="">음악당 대관공고 및 접수일정<span>조회수</span></a></div>
				<div id="notice_date">2019.10.15~2019.10.30</div>				
			</div>
 			<%
				}
			%>
			<div id="btnMore_div">			
				<button type="button" id="btnMore"><img src="http://211.63.89.214:9090/images/comm_usher_img/plus_more.png"/>더보기</button>			
			</div>
			
			<div id="faq_search">
       			<input type="text" name="faq_search" placeholder="검색어를 입력해주세요">
            	<a href="#"><img src="http://211.63.89.214:9090/images/search.png"></a>
     		</div>
     		
		</div>

	</div>
</body>
</html>
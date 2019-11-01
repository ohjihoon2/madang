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
				<li><a href="notice_list.jsp">공지사항</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="news.jsp">언론보도</a></li>
			</ul>
		</div>

		<div id="main_title"> 언론보도 </div>

		<div id="news_content">
			<div id="sub_title">뉴스 & 이슈</div>
			<%
				for (int i = 1; i < 11; i++) {
			%>
			<div class="news_list">
				<div id="news_title"><span id="sp_article">언론기사</span><a id="sp_title" href="https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=103&oid=031&aid=0000511937">“오페라 ‘카르멘’ 하이라이트로 가을 정취 만끽”</a><span id="sp_press">아이뉴스24</span><span id="sp_date">2019.10.15</span></div>				
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
</body>
</html>
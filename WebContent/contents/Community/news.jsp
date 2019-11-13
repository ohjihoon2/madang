<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>	
<%
	NewsService service = new NewsService();
	ArrayList<NewsVO> list = service.getResultNewsList();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>	
<script src="http://localhost:9090/js/madang.js"></script>
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
				for (NewsVO vo : list) {
			%>
			<div class="news_list">
				<div id="news_title"><span id="sp_article">언론기사</span>
				<a id="sp_title" href="<%=vo.getNw_url() %>">"<%=vo.getNw_title() %>>"</a><span id="sp_press"><%=vo.getNw_press() %></span>
				<span id="sp_date"><%=vo.getNw_date() %></span></div>				
			</div>
 			<%
				}
			%>
			<div id="btnMore_div">			
				<button type="button" id="btnMore"><img src="http://localhost:9090/images/comm_usher_img/plus_more.png"/>더보기</button>			
			</div>
			
			<div id="faq_search">
       		<input type="text" name="faq_search" placeholder="검색어를 입력해주세요">
            <a href="#"><img src="http://localhost:9090/images/search.png"></a>
     		</div>

	</div>
	
	<jsp:include page="../../footer.jsp"/>		
</body>
</html>
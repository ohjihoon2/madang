<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.*, com.madang.service.*,java.util.*" %>	
<%
	NoticeService service = new NoticeService();
	ArrayList<NoticeVO> list = service.getResultNoticeList();
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
			<li><a style="color: rgb(5, 135, 94)" href="notice_list.jsp">공지사항</a></li>
			<li><a href="news.jsp">언론보도</a></li>
		</ul>
	</div>

		<div id="main_title">공지사항</div>
		<div>
			<div id="year">2019</div>
			<%
				for (NoticeVO vo : list) {
			%>
			<div class="notice_list">
				<div id="notice_title"><a href="notice_content.jsp?nt_code=<%=vo.getNt_code()%>"><%=vo.getNt_title() %><span id="NtHits"><%=vo.getNt_hits() %></span></a></div>
				<div id="notice_date"><%=vo.getNt_date() %></div>				
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

	</div>
	
	<jsp:include page="../../footer.jsp"/>		
</body>
</html>
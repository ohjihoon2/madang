<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">커뮤니티</a></li>
				<li><a href="review_byDate.jsp">관람후기</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="event.jsp">이벤트</a></li>
				<li><a href="notice_list.jsp">공지사항</a></li>
				<li><a href="news.jsp">언론보도</a></li>
			</ul>
		</div>
		<div id="event_content">
			<div id="sub_title">진행중인 이벤트</div>
			<h1 id="event_title">[회원이벤트] 국립현대무용단 검은돌:모래의 기억</h1>
			<h3 id="event_term">이벤트 기간 | 2019.10.14(월) ~ 2019.10.27(일)</h3>
			<img id="event_poster" src="http://localhost:9090/images/comm_usher_img/event2_content.gif"/>
			<div id="sub_title2"><span>댓글이벤트</span><button type="button" id="btnWrite">댓글쓰기</button>
				<a href="http://localhost:9090/contents/Community/event.jsp"><button type="button" id="btnWrite">목록보기</button></a></div>
			<%for(int i=1; i<=5; i++){ %>
			<ul id="event_ul">
				<li><span id="li_id">아이디</span><span id="li_event_date">날짜</span>
				<button type="button" id="btnRE">수정</button><button type="button" id="btnDE">삭제</button></li>
				<li id="li_content">브람스와 바흐 피아노 선율이 함께라면 가을밤 정취가 더 깊어질 것 같습니다.</li>
				
			</ul>
			<%} %>
		</div>	
		
		<div id="btnMore_div">
			<button type="button" id="btnMore">
				<img src="http://localhost:9090/images/comm_usher_img/plus_more.png" />더보기
			</button>
		</div>
	
	</div>	
</body>
</html>
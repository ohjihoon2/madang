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

	<div id="notice_content">
		<div id="sub_title">공지사항</div>
			<h1 id="review_title">공지사항제목<span> 공지날짜  | 조회수 </span></h1>
			<div id="review_contents" placeholder="공지사항 내용"></div>	
			<div>
				<a href="notice_list.jsp"><button id="btnNoticeList" type="button">목록보기</button></a>
			</div>
	</div>	
</body>
</html>
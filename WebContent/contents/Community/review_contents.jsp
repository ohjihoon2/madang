<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>
<%
	ReviewService service = new ReviewService();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
	  $("button#btnWrite").click(function(){
	    $("#div_comment").toggle();
	  });
	  
	});
</script>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">커뮤니티</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">관람후기</a></li>
				<li><a href="event.jsp">이벤트</a></li>
				<li><a href="notice_list.jsp">공지사항</a></li>
				<li><a href="news.jsp">언론보도</a></li>
			</ul>
		</div>
		
		<div id="main_title">관람후기</div>
	
		<div id="content">
			<div id="sub_c_title">관람 후기</div>
			<form action="board_write_process.jsp" method="post" name="boardForm" enctype="multipart/form-data">
			
				<h1 id="review_title">리뷰 제목<span> 공연/전시 제목  | 아이디 </span></h1>
				<div id="review_contents" placeholder="카르멘을 보고 나서... 리뷰내용"></div>		
					
					
				<div id="sub_title2"><span>댓글</span><button type="button" id="btnWrite">댓글쓰기</button>
				<a href="http://localhost:9090/contents/Community/event.jsp"><button type="button" id="btnWrite">목록보기</button></a></div>
					<div id="div_comment"><textarea id="comment" placeholder="댓글을 달아주세요."></textarea><button type="button" id="btnOK">등록</button></div>
				<%for(int i=1; i<=5; i++){ %>
				<ul id="event_ul">
					<li><span id="li_id">아이디</span><span id="li_event_date">날짜</span>
					<button type="button" id="btnRE">수정</button><button type="button" id="btnDE">삭제</button></li>
					<li id="li_content">댓글: 브람스와 바흐 피아노 선율이 함께라면 가을밤 정취가 더 깊어질 것 같습니다.</li>					
				</ul>
				<%} %>
				
			
				<div id="btnMore_div">
					<button type="button" id="btnMore">
						<img src="http://localhost:9090/images/comm_usher_img/plus_more.png" />더보기
					</button>
				</div>
			
			</form>
		</div>
	</div>	
	
	<jsp:include page="../../footer.jsp"/>
</body>
</html>
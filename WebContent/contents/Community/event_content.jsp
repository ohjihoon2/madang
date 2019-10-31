<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>    
<%
	String ev_code = request.getParameter("ev_code");
	EventService service = new EventService();
	EventVO vo = service.getResultContent(ev_code);
/* 	ArrayList<EventReplyVO> rlist = service.getResultReplyList(ev_code); */
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>	
<script>
	$(document).ready(function(){
		$("#reply_div").hide();
		$("#btnReply").click(function(){
			$("#reply_div").show();
			
			var rep_btn = $("#btnReply").text();
			var rep_content = $("#reply_area").val();
			
			if(rep_btn == "댓글쓰기"){
				$(btnReply).text("댓글등록");
				
			}else{
				if(rep_content==""){
					alert("200자 이내로 댓글을 작성하세요.");
					$("#reply_area").focus();
					
				}else{
					alert(rep_content.length);
					if(rep_content.length>200){
						
					}else{
						$.ajax({
							url:"event_reply_write_process.jsp",
							success:function(result){
								if(result != 0) {
									alert("댓글이 등록되었습니다.");
									$("#reply_div").hide();
									$("#btnReply").text("댓글 쓰기");
									location.reload();
									
								}else{
									alert("댓글 등록에 실패했습니다.");
								}
							}
						});
						
					}
					

				}
			}
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
				<li><a href="review_byDate.jsp">관람후기</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="event.jsp">이벤트</a></li>
				<li><a href="notice_list.jsp">공지사항</a></li>
				<li><a href="news.jsp">언론보도</a></li>
			</ul>
		</div>
		
<!-- 이벤트 -->		
		<div id="event_content">
			<div id="sub_title">진행중인 이벤트</div>
			<h1 id="event_title"><%=vo.getEv_title() %></h1>
			<h3 id="event_term"><%=vo.getEv_title() %></h3>
			<img id="event_poster" src="http://localhost:9090/images/comm_usher_img/<%= vo.getEv_sdetail()%>"/>


<!-- 댓글 -->
			<div id="sub_title2">		
				<span>댓글이벤트</span>
				<button type="button" id="btnReply">댓글쓰기</button>
				<a href="http://localhost:9090/contents/Community/event.jsp"><button type="button" id="btnList">목록보기</button></a></div>
			<br><br>
			<div id="reply_div">
				<textarea id="reply_area" placeholder="여기에 댓글을 써주세요."></textarea>
			</div>		
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
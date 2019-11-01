<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>    
<%
	String ev_code = request.getParameter("ev_code");
	EventService service = new EventService();
	EventVO vo = service.getResultContent(ev_code);
 	ArrayList<EventReplyVO> rlist = service.getResultReplyList(ev_code); 
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://211.63.89.214:9090/css/community.css"/>
<script src="http://211.63.89.214:9090/js/jquery-3.4.1.min.js"></script>	
<script>
	$(document).ready(function(){
		$("#reply_div").hide();
		$("#btnReply").click(function(){
			$("#reply_div").show();
			
			var rep_btn = $("#btnReply").text();
			var ev_rp_content = $("#reply_area").val();
			
			if(rep_btn == "댓글쓰기"){
				$(btnReply).text("댓글등록");
				
			}else{
				if(ev_rp_content==""){
					alert("200자 이내로 댓글을 작성하세요.");
					$("#reply_area").focus();
					
				}else{
					alert(ev_rp_content.length);
					if(ev_rp_content.length>200){
						alert("200자 이내로 댓글을 작성하세요.");
						$("#reply_area").focus();
						
					}else{
						$.ajax({
							url:"event_reply_write_process.jsp?ev_code="+<%=ev_code%>+"&ev_rp_content="+ev_rp_content,
							success:function(result){
								alert(result);
								
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
			<img id="event_poster" src="http://211.63.89.214:9090/images/comm_usher_img/<%= vo.getEv_sdetail()%>"/>


<!-- 댓글 -->
			<div id="sub_title2">		
				<span>댓글이벤트</span>
				<button type="button" id="btnReply">댓글쓰기</button>
				<a href="http://211.63.89.214:9090/contents/Community/event.jsp"><button type="button" id="btnList">목록보기</button></a></div>
			<br><br>
			<div id="reply_div">
				<textarea id="reply_area" placeholder="여기에 댓글을 써주세요."></textarea>
			</div>		
			<%for(EventReplyVO rvo : rlist){ %>
			<ul id="event_ul">
				<li><span id="li_id"><%=rvo.getId() %></span><span id="li_event_date"><%=rvo.getEv_rp_date() %></span>
				<button type="button" id="btnRE">수정</button><button type="button" id="btnDE">삭제</button></li>
				<li id="li_content"><%=rvo.getEv_rp_content() %></li>				
			</ul>
			<%} %>
		</div>	
		
		
		<div id="btnMore_div">
			<button type="button" id="btnMore">
				<img src="http://211.63.89.214:9090/images/comm_usher_img/plus_more.png" />더보기
			</button>
		</div>
	
	</div>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>    
<%
	String ev_code = request.getParameter("ev_code");
	String ev_rp_code = request.getParameter("ev_rp_code");
	String id = (String)session.getAttribute("generalID");
	
	EventService service = new EventService();
	EventVO vo = service.getResultContent(ev_code);
 	ArrayList<EventReplyVO> rlist = service.getResultReplyList(ev_code); 
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
/* 삭제 모달창 */
div#modalEV {      /* 모달창 바깥에 불투명 배경 부분 */
   position: fixed;
   z-index: 1;
   left: 0; top: 0;
   width: 100%; height: 100%;
   background-color: rgb(0,0,0); /* Fallback color */
   background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
div#modalEV>div#modal-contentEV {
   background-color: white;
   border-radius: 15px;
   width: 400px; height: 250px;
   position: fixed;
   text-align:center;
   left: 50%;
   top: 50%;
   margin: -125px 0px 0px -200px;
}
div#modalEV>div#modal-contentEV>div:nth-child(2) {font-size: 11pt; padding-top: 80px;}
div#modalEV>div#modal-contentEV>div:last-child {padding-top: 20px;}
div#modalEV>div#modal-contentEV>div:last-child button {
/*    width: 50px; height: 30px;
   background-color: #0a346f;
   color: white;
   border: none;
   font-size: 10pt;
   margin-right: 5px; */
   	border: 1px solid rgb(155, 155, 155);
	border-radius: 10px;
	color: rgb(5, 135, 94);
	background: white;
	padding: 7px 20px 7px 20px;
	margin-right: 20px;
}

/* X(닫기) 버튼 */
div#modalEV>div#modal-contentEV>span#closeEV {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
  padding-right: 10px;
}

div#modalEV>div#modal-contentEV>span#closeEV:hover,
div#modalEV>div#modal-contentEV>span#closeEV:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
 
/*  #btnEvDEL{
	border: 1px solid rgb(155, 155, 155);
	border-radius: 10px;
	color: rgb(5, 135, 94);
	background: white;
	padding: 10px 50px 10px 50px;
	margin-top: 20px;
 } */


</style>
<script>
	$(document).ready(function(){
		$("div#reply_div").hide();
		
		$("button#btnReply").click(function(){
			var id = "<%=id%>";
			if(id != null){
				var rep_btn = $("button#btnReply").text();
				var ev_rp_content = $("textarea#reply_area").val();
				
				if(rep_btn == "댓글쓰기"){
					
					var str = "<textarea id='reply_area' placeholder='여기에 댓글을 써주세요.'></textarea>";
					$("div#replyEmpty").append(str);
					$("button#btnReply").text("댓글완료");
					
				}else if(rep_btn == "댓글완료"){			
					if(ev_rp_content == "" || ev_rp_content == null){
						alert("200자 이내로 댓글을 작성하세요.");
						$("textarea#reply_area").focus();
						
					}else{
						alert(ev_rp_content.length);
						if(ev_rp_content.length>200){
							alert("200자 이내로 댓글을 작성하세요.");
							$("textarea#reply_area").focus();
						
						}else{
							alert("content:" + ev_rp_content);
							$.ajax({
								url:"event_reply_write_process.jsp?ev_code="+$("#ev_code").val()+"&ev_rp_content="+ev_rp_content+"&id="+id,
								success: function(result){
									if(result) {
										alert("댓글이 등록되었습니다.");
										$("#reply_div").hide();
										$("#btnReply").text("댓글쓰기");
										location.reload();
										
									}else{
										alert("댓글 등록에 실패했습니다.");
									} 
								}
							});							
						}

					}
					
				}else if(rep_btn == "댓글수정"){
					var new_content = $("#UpdateReply").val();
					var ev_rp_code= $("#ev_rp_code").val();
					
					alert("수정완료버튼");
					$.ajax({
						url:"event_reply_update.jsp?ev_rp_code="+ev_rp_code+"&ev_rp_content="+new_content,
						success:function(result){
							if(result){
								alert("댓글이 수정되었습니다.");
								$("#div_comment").hide();
								$("#btnWriteReply").text("댓글쓰기");
								location.reload();		
								
							}else{
								alert("댓글등록에 실패했습니다.")
							}
			
						}
					});	
				}

				
			}else{
				alert("로그인 후 댓글을 쓸 수 있습니다.");
			}
		});
		
		$("button#btnRE").click(function(){
			$("#replyEmpty").empty();
			var origin_content = $("#ev_rp_content").val();
			var rep_btn = $("button#btnReply").text();
			var str = "<textarea id='UpdateReply'>"+origin_content+"</textarea>";
	
			$("div#sub_title2").after(str);
			$("button#btnReply").text("댓글수정");
			$("button#btnCancel").text("수정취소");	

			
		});
		
		$("button#btnCancel").click(function(){
			$("#replyEmpty").hide();
		});
		
		$("button#btnRE").click(function(){
			
			$.ajax({
				url:"event_reply_update.jsp?ev_rp_code="+ev_rp_code+"&ev_rp_content="+new_content,
				success:function(result){
					if(result){
						alert("댓글이 수정되었습니다.");
						$("#div_comment").hide();
						$("#btnWriteReply").text("댓글쓰기");
						location.reload();		
						
					}else{
						alert("댓글등록에 실패했습니다.")
					}
	
				}
			});	
		});
		
		
		
		
	    $("div#modalEV").hide();
	    
	    $("#btnEvDE").click(function() {
	    	alert("aa");
	       $("div#modalEV").show();
	    });
	    
	    $("span#closeEV").click(function() {
	       $("div#modalEV").hide();
	    });
	    
	    $("button#closeEV").click(function() {
	       $("div#modalEV").hide();
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
			<h3 id="event_term"><%=vo.getEv_title()%></h3>
			<img id="event_poster" src="http://localhost:9090/images/event/<%= vo.getEv_sdetail()%>"/>
			<input type="hidden" id="id" value="<%=id%>">
			<input type="hidden" id="ev_code" value="<%=ev_code%>">

<!-- 댓글 -->
			
			<div id="sub_title2">		
				<span>댓글이벤트</span>
				<button type="button" id="btnCancel">취소</button>
				<button type="button" id="btnReply">댓글쓰기</button>
				<a href="http://localhost:9090/contents/Community/event.jsp"><button type="button" id="btnList">목록보기</button></a>
			<br><br>
			</div>
			<div id="replyEmpty"></div>
			
			<br><br><br><br>
			<%for(EventReplyVO rvo : rlist){ %>
			<ul id="event_ul">
				<li><span id="li_id"><%=rvo.getEv_rp_id() %></span><span id="li_event_date"><%=rvo.getEv_rp_date() %></span>
				<%if(id.equals(rvo.getEv_rp_id())){ %>
				<button type="button" id="btnRE">수정</button>
				<button type="button" id="btnEvDE">삭제</button></li>
				<%} %>
				<li id="li_content"><%=rvo.getEv_rp_content() %></li>	
				<input type="hidden" id="ev_rp_content" value="<%=rvo.getEv_rp_content() %>">			
				<input type="hidden" id="ev_rp_code" value="<%=rvo.getEv_rp_code() %>">			
							
			</ul>
			
			<div id="modalEV">
            		<div id="modal-contentEV">
               		<span id="closeEV">&times;</span>
              		 <div>
                  		삭제한 문의는 복구하실 수 없습니다.<br>정말 삭제하시겠습니까?
               		</div>
               		<div>
	                  <a href="event_reply_delete_process.jsp?ev_rp_code=<%=rvo.getEv_rp_code() %>&ev_code=<%=ev_code %>"><button type="button" id="btnRplDEL"> 댓글삭제 </button></a>
	                  <button type="button" id="closeEV">취소</button>
               		</div>
            		</div>
         		</div>
			
			<%}%>
		</div>	
		
		


		
		<div id="btnMore_div">
			<button type="button" id="btnMore">
				<img src="http://localhost:9090/images/comm_usher_img/plus_more.png" />더보기
			</button>
		</div>
	
	</div>	
</body>
</html>
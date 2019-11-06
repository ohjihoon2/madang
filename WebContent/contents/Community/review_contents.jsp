<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>
<%
	String rv_code = request.getParameter("rv_code"); 
	String rv_rp_id = (String)session.getAttribute("generalID"); 

	ReviewService service = new ReviewService();
	ReviewVO vo = service.getResultContent(rv_code);
	
	ArrayList<ReviewReplyVO> list = service.getReplyList(rv_code);
	
	

	if(vo.getRv_title() != "" && vo.getRv_title() != null){
		service.getResultUpdateHits(rv_code);
	
		if(vo.getRv_content() != "" && vo.getRv_content() != null){
			vo.setRv_content(vo.getRv_content().replace("\r\n","<br>"));		
		}
		
	}else{
		response.sendRedirect("../../errorPage.jsp");
	}
	
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
		$("#div_comment").hide();
		  $("button#btnWriteReply").click(function(){
		    	$("#div_comment").show();
		    	$("#btnWriteReply").text("댓글완료");
		  });
		  
		  $("button#btnOK").click(function(){
			    var btnReply = $("#btnWriteReply").text();
		  		var rv_rp_content = $("#comment").val();
		  		
  				if(rv_rp_content == ""){
	  				alert("댓글을 작성하세요.");
	  				$("#comment").focus();
	  			
	  			}else{
	  				alert(rv_rp_content.length);
					if(rv_rp_content.length > 200){
						alert("200글자 이내로 작성해 주세요");
						$("#comment").focus();
					
					}else{
						$.ajax({
							url:"review_reply_write_process.jsp?rv_code="+$("input#rv_code").val()+"&rv_rp_id="+$("#rv_rp_id").val()+"&comment="+$("#comment").val(),
							success:function(result){
								if(result) {
									alert("댓글이 등록되었습니다.");
									$("#div_comment").hide();
									$("#btnWriteReply").text("댓글쓰기");
									$("#div_comment").hide();
									location.reload();
									
								}else{ 
									alert("댓글 등록에 실패했습니다.");
								}
							}
						});
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
				<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">관람후기</a></li>
				<li><a href="event.jsp">이벤트</a></li>
				<li><a href="notice_list.jsp">공지사항</a></li>
				<li><a href="news.jsp">언론보도</a></li>
			</ul>
		</div>
		
		<div id="main_title">관람후기</div>
	
		<div id="content">
			<div id="sub_c_title">관람 후기</div>
			
				<h1 id="review_title">제목:<%=vo.getRv_title() %><span> <%=vo.getC_title() %> | <%=vo.getId() %> </span></h1>
				<div id="review_content"><%=vo.getRv_content() %></div>						
		
				<div id="btn1">
					<a href="http://localhost:9090/contents/Community/review_update.jsp?rv_code=<%=rv_code%>"><button type="button" id="btnRVUpdate">수정하기</button></a>
					<a href="http://localhost:9090/contents/Community/review_byDate.jsp"><button type="button" id="btnBackList">목록보기</button></a>
					<input type="hidden" id="rv_code" value="<%=rv_code%>">					
				</div>
				
				<%//if(rv_rp_id != null){ %>
				<div id="btn2">
					<input type="hidden" id="rv_rp_id" value="<%=rv_rp_id%>">
					<span id="sp_title">댓글</span><button type="button" id="btnWriteReply">댓글쓰기</button>
					<div id="div_comment"><textarea id="comment" placeholder="댓글을 달아주세요."></textarea>
					<button type="button" id="btnOK">등록</button></div>
				</div>
				<%//} %>
				
				<!-- 댓글리스트 -->
				<%for(ReviewReplyVO rvo: list){ %>
				<ul id="event_ul">
					<li><span id="li_id"><%=rvo.getRv_rp_id() %></span><span id="li_event_date"><%=rvo.getRv_rp_date() %></span>
					<a href="review_delete.jsp?rv_code=<%=rvo.getRv_rp_code()%>"><button type="button" id="btnDE">삭제</button></a>
					</li>
					<li id="list_reply">댓글:<%=rvo.getRv_rp_content() %></li>					
				</ul>
				<%} %>
				<%-- <input type="hidden" name="id" value="<%=vo.getRv_rp_id()%>"> --%>
								
			
				<div id="btnMore_div">
					<button type="button" id="btnMore">
						<img src="http://localhost:9090/images/comm_usher_img/plus_more.png" />더보기
					</button>
				</div>
			
		</div>
	</div>	
	
	<jsp:include page="../../footer.jsp"/>
</body>
</html>
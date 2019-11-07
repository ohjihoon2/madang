<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>
<%
	String rv_code = request.getParameter("rv_code"); 
	String id = (String)session.getAttribute("generalID");
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
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
/* The Modal (background) */
 .modal, .modal_rep {
     display: none; /* Hidden by default */
     position: fixed; /* Stay in place */
     z-index: 1; /* Sit on top */
     left: 0;
     top: 0;
     width: 100%; /* Full width */
     height: 100%; /* Full height */
     overflow: auto; /* Enable scroll if needed */
     background-color: rgb(0,0,0); /* Fallback color */
     background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
 }

 /* Modal Content/Box */
 .modal-content, .modal_rep {
     background-color: #fefefe;
     margin: 15% auto; /* 15% from the top and centered */
     padding: 20px;
     border: 1px solid #888;
     width: 30%; /* Could be more or less, depending on screen size */
     height: 15%;
     text-align:center;                         
 }
 /* The Close Button */
 .close, .modal_rep {
     color: #aaa;
     float: right;
     font-size: 28px;
     font-weight: bold;
 }
 .close:hover, .modal_rep:hover
 .close:focus, .modal_rep:focus {
     color: black;
     text-decoration: none;
     cursor: pointer;
 }
 
 #btnDEL,#btnRplDEL,#btnDEL_ev{
	border: 1px solid rgb(155, 155, 155);
	border-radius: 10px;
	color: rgb(5, 135, 94);
	background: white;
	padding: 10px 50px 10px 50px;
	margin-top: 20px;
 }


</style>
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
	  
	$("button#btnRVDelete").click(function(){
		/* 모달  */
        // Get the modal
        var modal = document.getElementById('myModal');
 
        // Get the button that opens the modal
        var btn = document.getElementById("btnRVDelete");
       
 
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];                                          
 
        // When the user clicks on the button, open the modal 
        btn.onclick = function() {
            modal.style.display = "block";
        }
 
        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }
 
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
	});	  
	
	$("button#btnDE").click(function(){

		/* 모달 */
        // Get the modal
        var modal_rep = document.getElementById("myModal_rep");
        // Get the button that opens the modal
        var btnDE = document.getElementById("btnDE");      
        // Get the <span> element that closes the modal
        var span_rep = document.getElementsByClassName("close_rep")[0];   
        
        // When the user clicks on the button, open the modal 
        btnDE.onclick = function() {
        	alert("4444");
            modal_rep.style.display = "block";
        }
		
        // When the user clicks on <span> (x), close the modal
        span_rep.onclick = function() {
        	alert("333");
            modal_rep.style.display = "none";
        }
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
        	alert("2");
            if (event.target == modal_rep) {
            	alert("1");
                modal_rep.style.display = "none";
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
					
					<%if(id != "" && id != null){ %>
					<%if(id.equals(vo.getId())){ %>
					<a href="review_update.jsp?rv_code=<%=rv_code%>"><button type="button" id="btnRVUpdate">수정</button></a>
					<button type="button" id="btnRVDelete">삭제</button>
					<%} 
					}%>
					<a href="review_byDate.jsp"><button type="button" id="btnBackList">목록</button></a>
					<input type="hidden" id="rv_code" value="<%=rv_code%>">					
				</div>
				
				
				<!-- Trigger/Open The Modal -->
			 
			    <!-- The Modal -->
			    <div id="myModal" class="modal">
			 
			      <!-- Modal content -->
			      <div class="modal-content">
			        <span class="close">&times;</span>                                                               
			        <p>다시 생각해도 삭제가 답입니까?</p>
			        <a href="review_delete.jsp?rv_code=<%=rv_code%>"><button type="button" id="btnDEL"> 삭제 </button></a>
			      </div>
			 
			    </div>


				<%
				
				if(id != null) {%>
				<div id="btn2">
					<input type="hidden" id="rv_rp_id" value="<%=id %>">
					<span id="sp_title">댓글</span><button type="button" id="btnWriteReply">댓글쓰기</button>
					<div id="div_comment"><textarea id="comment" placeholder="댓글을 달아주세요."></textarea>
					<button type="button" id="btnOK">등록</button></div>
				</div>
				<%} %>
				
				<!-- 댓글리스트 -->
				<%for(ReviewReplyVO rvo: list){ %>
				<ul id="event_ul">
					<li><span id="li_id"><%=rvo.getRv_rp_id() %></span><span id="li_event_date"><%=rvo.getRv_rp_date() %></span>
					<%
					if(id != null){
					if(id.equals(rvo.getRv_rp_id())){ %>
					<%-- <a href="review_delete.jsp?rv_code=<%=rvo.getRv_rp_code()%>"> --%>
					<button type="button" id="btnDE">댓글 삭제</button><!-- </a> -->
					<%} 
					}%>
					</li>
					<li id="list_reply"><%=rvo.getRv_rp_content() %></li>			
					<input type="hidden" id="rv_rp_code" value="<%=rvo.getRv_rp_code() %>">		
				</ul>
				<%}
				
					String rv_rp_code = request.getParameter("rv_rp_code");
				%>
				
						
				
 				<!-- Trigger/Open The Modal -->
			 
			    <!-- The Modal -->
			    <div id="myModal_rep" class="modal_rep">
			 
			      <!-- Modal content -->
			      <div class="modal-content_rep">
			        <span class="close_rep">&times;</span>                                                               
			        <p>댓글은 많을 수록 좋은데...<br><br>그럼에도 불구하고<br><br>댓글을 삭제하시겠습니까?</p>
			        <a href="review_reply_delete.jsp?rv_rp_code=<%=rv_rp_code %>"><button type="button" id="btnRplDEL"> 댓글 삭제 </button></a>
			      </div>
			 
			    </div>
					
			
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
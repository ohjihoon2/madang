<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.madang.vo.*, com.madang.service.*, java.time.LocalDate"%>

<%
	//String ev_code=request.getParameter("ev_code");
	String ev_code=request.getParameter("ev_code");
	EventService service = new EventService();
	EventVO vo = new EventVO();
	vo = service.getResultContentAdmin(ev_code);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/dycgv/js/jquery-3.4.1.min.js"></script>
<style>
*{
	font-family:"나눔스퀘어라운드";
	margin:0px;
	padding:0px;
}

div.admin_content{
	width:70%;
	height:1400px;
	margin:auto;
	float:left;
	padding:130px 0px 0px 100px;
}


div.admin_content h1{
	font-size:40pt;
}






div#admin_event_update section form table{
	margin:30px 0px 20px 0px;
	width:80%;
	height:400px;
	border-collapse: collapse;
	table-layout:fixed;
}

div#admin_event_update section form table th{
	background-color:rgb(195,195,195);
	width:130px;
	height:32px;
	border:1px solid gray;
}

div#admin_event_update section form table tr td{
	border:1px solid gray;
}
div#admin_event_update section form table input[type=text],
div#admin_event_update section form table input[type=file]{
	width:100%;
	height:31px;
	border:none;
	padding-left:10px;
	box-sizing:border-box;
}

div#admin_event_update section form table input[type=date]{
	margin:0px 10px 0px 10px;
	width:200px;
}

div#admin_event_update section form table tr:nth-child(1) td:nth-child(2),
div#admin_event_update section form table tr:nth-child(2) td:nth-child(2){
	overflow:auto;
	width:400px;
}
/*이미지*/
div#admin_event_update section table tr:nth-child(3) td,
div#admin_event_update section table tr:nth-child(5) td{
	padding:5px;
}

div#admin_event_update section table tr:nth-child(3) td div{
	overflow:auto;
	width:100%;
	height:400px;
	box-sizing:border-box;
}

div#admin_event_update section table tr:nth-child(5) td div{
	overflow:auto;
	width:100%;
	height:200px;
} 

div#admin_event_update section table tr:nth-child(3) td>div>img{
	max-width:100%;
	margin-bottom:10px;
}

div#admin_event_update section table tr:nth-child(5) td>div>img{
	max-width:40%;
	margin-bottom:10px;
}


div#admin_event_update section table span.event_file_dname,
div#admin_event_update section table span.event_file_tname{
    display: block;
    position: relative;
    width: 100%;
    top: -27px;
    left: 85px;
    background: white;
  } 
    
div#admin_event_update section article {
	width:80%;
	text-align :right;
}
div#admin_event_update section article button{
	width:100px;
	height:35px;
	border:none;
}
div#admin_event_update section article button:first-child{
	color:white;
	background-color:rgb(5,135,94);
	}



</style>
<script>
 $(document).ready(function(){
	 $("#adboard_cancel_event_btn").click(function(){
		 var cancel = confirm("수정을 취소하시겠습니까?");
		 if(cancel==1){
			 location.replace("admin_event.jsp");
		 }
	 });//작성취소 클릭
	 /**유효성 검사**/
	 $("#adboard_upevent_btn").click(function(){
		 if($("div#admin_event_update input#ad_ev_title").val() == ""){
		 	alert("제목을 입력하세요");
	 	 }else if($("div#admin_event_update input#ad_ev_sdate").val() == ""){
		 	alert("시작일을 입력하세요");
	 	 }else if($("div#admin_event_update input#ad_ev_edate").val() == ""){
		 	alert("종료일을 입력하세요");
	 	 }else if($("div#admin_event_update span.event_file_dname").text() == ""){
		 	alert("상세이미지를 입력하세요");
	 	 }else if($("div#admin_event_update span.event_file_tname").text() == ""){
		 	alert("썸네일이미지를 입력하세요");
	 	 }else if($("div#admin_event_update input#ad_ev_sdate").val() > $("div#admin_event_update input#ad_ev_edate").val()){
	 		alert("시작일이 종료일보다 클 수 없습니다."); 
	 	 }else{
	 		event_update.submit();
	 	 }
	 });
	 
//상세 이미지 변경	
	 function readURLdetail(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      $('#ad_ev_udetail_img').attr('src', e.target.result);
		    }
		    reader.readAsDataURL(input.files[0]);
		  }
		}
	 $("#ad_ev_udetail").change(function() {
		  readURLdetail(this);
		  if(window.FileReader){
				$(".event_file_dname").text("").text($(this)[0].files[0].name);  //기존의 값을 지우고 새 값을 넣음  $(this)[0]첫번째 <input type=file>. 해당 배열은 웹브라우저에서 생성.files[0]:선택한 파일중에서 첫번 서서
			}
		});
	 
//썸네일 이미지 변경	 
	 function readURLthumbnail(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      $('#ad_ev_uthumbnail_img').attr('src', e.target.result);
		    }
		    reader.readAsDataURL(input.files[0]);
		  }
		}
	 $("#ad_ev_uthumbnail").change(function() {
		  readURLthumbnail(this);
		  if(window.FileReader){
				$(".event_file_tname").text("").text($(this)[0].files[0].name);  //기존의 값을 지우고 새 값을 넣음  $(this)[0]첫번째 <input type=file>. 해당 배열은 웹브라우저에서 생성.files[0]:선택한 파일중에서 첫번 서서
			}
		});
	 
	 
	 
	 
	 
 });
</script>

</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_event_update" class="admin_content">
	<h1>이 벤 트</h1>	
	<section>
		<form action="admin_event_multi_proce.jsp" method="post" name="event_update" enctype="multipart/form-data">
		<input type="hidden" name="situation" value="event_update"/>
		<input type="hidden" name="ev_code" value="<%=ev_code%>"/>
		<table>
			<tr>
				<th>제목</th>
				<td><input type="text" name="ev_title" id="ad_ev_title" value="<%=vo.getEv_title()%>"/></td>
			</tr>
			<tr>
				<th>이벤트 기간</th>
				<td><input type="date" name="ev_sdate" id="ad_ev_sdate" value="<%=vo.getEv_sdate()%>"/> ~ 
				&nbsp;&nbsp;&nbsp;<input type="date" name="ev_edate" id="ad_ev_edate" value="<%=vo.getEv_edate()%>"/>
				</td>
			</tr>
			<tr>
				<td colspan="2"><div>
				
							<%if(vo.getEv_sdetail()!=null && vo.getEv_sdetail() !=""){ %>
								<img src="http://localhost:9090/upload/event/<%=vo.getEv_sdetail() %>" id="ad_ev_udetail_img"/>
							<%}else{ %>
								 <img src="#" id="ad_ev_udetail_img"/>
							<%} %>
				</div></td>
			</tr>
			<tr>
				<th>상세 이미지</th>
				<td>
					<input type="file" name="ev_detail" id="ad_ev_udetail" />
						<%if(vo.getEv_sdetail()!=null && vo.getEv_sdetail() !=""){ %>
							<span class="event_file_dname"><%=vo.getEv_sdetail()%></span>
						<%}else{ %>
							<span class="event_file_dname">&nbsp;</span>
						<%} %>
				</td>
			</tr>
			<tr>
				<td colspan="2"><div>
						<%if(vo.getEv_sthumbnail()!=null && vo.getEv_sthumbnail() !=""){ %>
							<img src="http://localhost:9090/upload/event/<%=vo.getEv_sthumbnail() %>" id="ad_ev_uthumbnail_img"/>
						<%}else{ %>
							<img src="#" id="ad_ev_uthumbnail_img"/> 
						<%} %>				
				</div></td>
			</tr>
			<tr>
				<th>썸네일 이미지</th>
				<td>
					<input type="file" name="ev_thumbnail" id="ad_ev_uthumbnail" value="<%=vo.getEv_thumbnail() %>"/>
						<%if(vo.getEv_thumbnail()!=null && vo.getEv_thumbnail() !=""){ %>
							<span class="event_file_tname"><%=vo.getEv_thumbnail()%></span>
						<%}else{ %>
							<span class="event_file_tname">&nbsp;</span>
						<%} %>
				</td>
			</tr>
		</table>
		</form>
		<article>
			<button type="button" id="adboard_upevent_btn">수정완료</button>
			<button type="button" id="#">미리보기</button>
			
			<!-- 실제 홈페이지의 게시글의 width만한 창이뜨며 해당 게시판 볼 수 있도록... -->
			
			<button type="button" id="adboard_cancel_event_btn">수정취소</button>
		</article>
	</section>
</div>
</body>
</html>
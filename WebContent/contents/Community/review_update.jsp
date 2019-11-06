<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %> 
<%	

	String rv_code = request.getParameter("rv_code"); 
	
	ReviewService service = new ReviewService();
	ReviewVO vo = service.getResultContent(rv_code);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function(){		
		//별점
		$( "td.star_rating a" ).click(function() {	
		    $(this).parent().children("a").removeClass("on");
		    $(this).addClass("on").prevAll("a").addClass("on");
		    var str = $(this).addClass("on").prevAll("a").length +1;
		    $("#star").val(str);
		    return false;
		});
	});	
</script>		
</head>
<body>
<div>
	<jsp:include page="../../header.jsp" />

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

	<div id="content"> <!-- form.submit을 해야하므로 form없으면 생성 -->
		<form action="review_update_process.jsp" method="post" name="reviewUpdateForm">
		
		<table id="rv_write_tb">
			
			<tr>
				<th><h1 id="review_title">제목</th><td><input type="text" id="rv_title" name="rv_title" value="<%=vo.getRv_title() %>">
				<span id="span_c_title">
						<select name="concert_code" id="rv_op_title">
							<option value="<%=vo.getConcert_code() %>"><%=vo.getC_title() %></option>										
						</select>
				</span></h1>
			</tr>
			<tr>	
				<th colspan=2>	
				<textarea id="rv_content" name="rv_content"><%=vo.getRv_content()%></textarea>
				</th>
			</tr>
			<tr id="tr_star">
				<th id="th_star">별점</th>
				<td class="star_rating">	
					<a href="#" class="on" >★</a>
					<a href="#" class="on" >★</a>
					<a href="#" class="on" >★</a>
					<a href="#" class="on" >★</a>
					<a href="#" class="on" >★</a>
			   <input type="hidden" name="rv_staravg" value="5" id="star">
				</td>	
			</tr>
			<tr>
				<th colspan=2 id="RVbtn">
				<div>	
					<input type="hidden" name="rv_code" value="<%=rv_code%>">
	            	<button type="submit" id="btnRVUpdateOK">수정</button>
	            	<button type="reset" id="btnRVCancel">취소</button>
	            	<a href="review_byDate.jsp"><button type="button" id="btnRVList">목록</button></a>
	            	<a href="review_contents.jsp?rv_code=<%=rv_code%>"><button type="button" id="btnRVList">이전</button></a>
	        	</div>
<%-- 	        	<input type="hidden" name="id" value="<%=id%>"> --%>
	       		</th>
	       	</tr>
    	</table>    
    	
		</form>
	</div>
	
	
	<jsp:include page="../../footer.jsp"/>
</div>	
</body>
</html>
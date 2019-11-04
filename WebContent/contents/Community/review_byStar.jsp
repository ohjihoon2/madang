<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.*, com.madang.service.*, java.util.*" %>
<%
	ReviewService service = new ReviewService();
	ArrayList<ReviewVO> list = service.getResultListByStar();
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
	$( "#star" ).addClass("on").prevAll("a").val("on");
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

		<div id="content">
			
			<div id="sub_rtitle">				
				<a href="http://localhost:9090/contents/Community/review_byDate.jsp">
					<button type="button" id="btnSByDate">최신날짜순</button></a>
				<a href="http://localhost:9090/contents/Community/review_byStar.jsp">
					<button type="button" id="btnSByStar">평점높은순</button></a>
									<a href="http://localhost:9090/contents/Community/review_write.jsp">
					<button type="button" id="btnWriteReview"> 후기 작성 </button></a>											
			</div>
			<div class="table_div">
			<%for(ReviewVO vo: list){ %>
				<a href="http://localhost:9090/contents/Community/review_contents.jsp">
				<table class="review_table">				
					<tr>
						<th><%=vo.getRv_date() %></th>
					<td rowspan=3><img class="poster"
							src="http://localhost:9090/images/concert_main/<%=vo.getC_poster() %>" /></td>
						<td id="title"><%=vo.getRv_title() %><span id="hits">조회수: <%=vo.getRv_hits() %></span></td>
					</tr>
					<tr>
						<th><%=vo.getId() %></th>
						<td rowspan=2 id="contents"><%=vo.getRv_content() %></td>
					</tr>
					
					<tr>
						<th class="star_rating">				
							<a href="#" class="on" >★</a><span>평점 : <%=vo.getRv_staravg() %></span>

<%-- 					   		<input type="hidden" name="rv_staravg" value="<%=vo.getRv_staravg() %>" id="star"> --%>  
						</th>						
					</tr>			
				</table>
				</a>
			<%}%>
			</div>
	
			<div id="btnMore_div">
				<button type="button" id="btnMore">
					<img src="http://localhost:9090/images/comm_usher_img/plus_more.png" />더보기
				</button>
			</div>
			
			<div id="faq_search">
	       		<input type="text" name="faq_search" placeholder="검색어를 입력해주세요">
	            <a href="#"><img src="http://localhost:9090/images/search.png"></a>
	     	</div>
     	
		</div>
			
	
	<jsp:include page="../../footer.jsp"/>	
	</div>	
</body>
</html>
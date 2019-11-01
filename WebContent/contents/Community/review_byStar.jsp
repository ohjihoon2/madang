<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>

<script>
$(document).ready(function(){
	$( "th.star_rating a" ).click(function() {
	    $(this).parent().children("a").removeClass("on");
	    $(this).addClass("on").prevAll("a").addClass("on");
	    return false;
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

		<div id="review_content">
			
			<div id="sub_rtitle">				
				<a href="http://localhost:9090/contents/Community/review_byDate.jsp">
					<button type="button" id="btnSByDate">최신날짜순</button></a>
				<a href="http://localhost:9090/contents/Community/review_byStar.jsp">
					<button type="button" id="btnSByStar">평점높은순</button></a>
									<a href="http://localhost:9090/contents/Community/review_write.jsp">
					<button type="button" id="btnWriteReview"> 후기 작성 </button></a>											
			</div>
			<div class="table_div">
			<%for(int i = 1; i < 8; i++){ %>
				<a href="http://localhost:9090/contents/Community/review_contents.jsp">
				<table class="review_table">
					<tr>
						<th>yyyy-mm-dd</th>
						<td rowspan=3><img class="poster"
							src="http://localhost:9090/images/comm_usher_img/1945poster.jpg" /></td>
						<td id="title">title<span id="hits">조회수</span></td>
					</tr>
					<tr>
						<th>ID@test.com</th>
						<td rowspan=2 id="contents">Contents</td>
					</tr>
					
					<tr>
						<th class="star_rating">	
						<%for(int j=1; j<=5; j++){ %>				
							<a href="#" class="on" value="<%=j %>">★</a>
						<%} %>    
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
		
	</div>
	
	<jsp:include page="../../footer.jsp"/>	
</body>
</html>
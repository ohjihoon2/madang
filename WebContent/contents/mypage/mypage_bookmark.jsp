<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Bookmark_Service, com.madang.vo.Bookmark_VO, java.util.ArrayList" %>
<%
	String id=(String)session.getAttribute("generalID");
	
	Bookmark_Service service=new Bookmark_Service();
	ArrayList<Bookmark_VO> c_list=service.getConcertList(id); //공연
	ArrayList<Bookmark_VO> e_list=service.getExhibitionList(id); //전시
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://211.63.89.214:9090/css/mypage.css"/>
<script src="http://211.63.89.214:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://211.63.89.214:9090/js/madang.js"></script>
<script>
	$(document).ready(function(){
		
		$("img.bmark_heart").click(function(){
			
			var bmark_code=$(this).attr("id");
			
			var bmark_val=$(this).attr("value");
			
			//alert(bmark_val);
			
			if(bmark_val=="on") {
				$(this).attr("src", "http://211.63.89.214:9090/images/bookmark/off.png");
				$(this).attr("value", "off");
				
				//delete
				location.href="http://211.63.89.214:9090/contents/mypage/bookmark_delete_process.jsp?flag=bmark&bmark_code="+bmark_code;
				
				
			} /* else if(bmark_val=="off") {
				$(this).attr("src", "http://211.63.89.214:9090/images/bookmark/on.png");
				$(this).attr("value", "on");
				
				//insert 여기서는 안함
			} */
			
		});
	});
</script>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_gen.jsp">회원정보 수정</a></li>
				<li><a href="mypage_reserv_list.jsp">예매내역 확인</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_bookmark.jsp">찜한 공연/전시</a></li>
			</ul>
		</div>
		
		<div id="main_title">찜한 공연/전시</div>
		
		<div class="body">
		
		<div class="bmark">
		<h2>공연</h2>
		<br>
		
		<% for(Bookmark_VO cvo : c_list) { %>
			<% if(cvo.getConcert_code()!=null && cvo.getConcert_code()!="") { %>
				<div class="bmark_list">
					<a href="http://211.63.89.214:9090/contents/concert/concert_detail.jsp?concert_code=<%= cvo.getConcert_code() %>">
						<img src="http://211.63.89.214:9090/images/concert_main/<%= cvo.getC_sposter() %>" class="bmark_poster">
					</a>
					<div class="bmark_info">
						<img id="<%= cvo.getBmark_code() %>" src="http://211.63.89.214:9090/images/bookmark/on.png" class="bmark_heart" value="on" />
						<p><a href="http://211.63.89.214:9090/contents/concert/concert_detail.jsp?concert_code=<%= cvo.getConcert_code() %>"><%= cvo.getC_title() %></a></p>
						<p><%= cvo.getC_sdate() %> ~ <%= cvo.getC_edate() %></p>
						<p><%= cvo.getC_place() %></p>
					</div>
				</div>
			<% } %>
		<% } %>
		
		</div>
		
		<div class="bmark">
		<h2>전시</h2>
		<br>
		
		<% for(Bookmark_VO evo : e_list) { %>
			<% if(evo.getExhib_code()!=null && evo.getExhib_code()!="") { %>
				<div class="bmark_list">
					<a href="http://211.63.89.214:9090/contents/exhibition/exhibition_detail.jsp?exhibition_code=<%= evo.getExhib_code() %>">
						<img src="http://211.63.89.214:9090/images/exhibition/<%= evo.getE_sposter() %>" class="bmark_poster">
					</a>
					<div class="bmark_info">
						<img id="<%= evo.getBmark_code() %>" src="http://211.63.89.214:9090/images/bookmark/on.png" class="bmark_heart" value="on" />
						<p><a href="http://211.63.89.214:9090/contents/exhibition/exhibition_detail.jsp?exhibition_code=<%= evo.getExhib_code() %>"><%= evo.getE_title() %></a></p>
						<p><%= evo.getE_sdate() %> ~ <%= evo.getE_edate() %></p>
						<p><%= evo.getE_place() %></p>
					</div>
				</div>
			<% } %>
		<% } %>	
		</div>
		
		</div>
	</div>
	<jsp:include page="../../footer.jsp" />
</body>
</html>
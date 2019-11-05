<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Bookmark_Service, com.madang.vo.Bookmark_VO, java.util.ArrayList" %>
<%
	String id=(String)session.getAttribute("generalID");
	
	Bookmark_Service service=new Bookmark_Service();
	ArrayList<Bookmark_VO> list=service.getConcertList(id);
%>
document.write(<%= id %>);
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>
<script>
	$(document).ready(function(){
		
		$("img.bmark_heart").click(function(){
			//alert("click");
			
			var bmark_code=$(this).attr("id");
			
			//alert(bmark_code);
			
			
			var bmark_val=$(this).attr("value");
			
			alert(bmark_val);
			
			if(bmark_val=="on") {
				$(this).attr("src", "http://localhost:9090/images/bookmark/off.png");
				$(this).attr("value", "off");
				
				//delete
				location.href="http://localhost:9090/contents/mypage/bookmark_delete_process.jsp?flag=bmark&bmark_code="+bmark_code;
				//ajax 하면 div만 새로 로딩하는거 알아보기
				
			} else if(bmark_val=="off") {
				$(this).attr("src", "http://localhost:9090/images/bookmark/on.png");
				$(this).attr("value", "on");
				
				//insert 여기서는 안함
				
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
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_gen.jsp">회원정보 수정</a></li>
				<li><a href="mypage_reserv_list.jsp">예매내역 확인</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_bookmark.jsp">찜한 공연/전시</a></li>
			</ul>
		</div>

		<div id="main_title">찜한 공연/전시</div>
		
		<div class="bmark">
		<h2>공연</h2>
		<br>
			
			<% for(Bookmark_VO cvo : list) { %>
			<% if(cvo.getConcert_code()!=null && cvo.getConcert_code()!="") { %>
				<div class="bmark_list">
					<a href="http://localhost:9090/contents/concert/concert_detail.jsp">
						<img src="http://localhost:9090/images/concert_main/<%= cvo.getC_sposter() %>" class="bmark_poster">
					</a>
					<div class="bmark_info">
						<img id="<%= cvo.getBmark_code() %>" src="http://localhost:9090/images/bookmark/on.png" class="bmark_heart" value="on" />
						<p><a href="http://localhost:9090/contents/concert/concert_detail.jsp"><%= cvo.getC_title() %></a></p>
						<p><%= cvo.getC_sdate() %> ~ <%= cvo.getC_edate() %></p>
						<p><%= cvo.getC_place() %></p>
					</div>
				</div>
			<% } %>
			<% } %>
			
			<!-- 
			<div class="bmark_list">
				<a href="http://localhost:9090/contents/concert/concert_detail.jsp"><img src="http://localhost:9090/images/concert_main/20190823151229P.gif" class="bmark_poster"></a>
				<div class="bmark_info">
					<img id="b1" src="http://localhost:9090/images/bookmark/on.png" class="bmark_heart" value="on" />
					<p><a href="http://localhost:9090/contents/concert/concert_detail.jsp">2019 연극 늙은 부부이야기</a></p>
					<p>2019.10.02(수) ~ 2019.10.03(목)</p>
					<p>베토벤홀</p>
				</div>
			</div>
			 -->
		</div>
		
		
		
		<div class="bmark">
		<h2>전시</h2>
		<br>
			
			
			<div class="bmark_list">
				<a href="#"><img src="http://localhost:9090/images/concert_main/20190823151229P.gif" class="bmark_poster"></a>
				<div class="bmark_info">
					<img id="b4" src="http://localhost:9090/images/bookmark/on.png" class="bmark_heart" value="on" />
					<p><a href="#">오지훈 개인전</a></p>
					<p>2019-10-01 ~ 2019-11-30</p>
					<p>오지훈특별관</p>
				</div>
			</div>
			
		</div>
		
		
	</div>
</body>
</html>
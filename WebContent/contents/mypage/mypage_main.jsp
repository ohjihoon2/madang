<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String general_id=(String)session.getAttribute("generalID");
	String group_id=(String)session.getAttribute("groupID");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>

</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<%-- <span>일반회원 아이디:<%= session.getAttribute("generalID") %> 대관회원 아이디:<%= session.getAttribute("groupID") %></span> --%>
		<div id="left_nav">
			<!-- 일반회원 로그인 -->
			<% if(general_id!=null && group_id==null) { %>
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_gen.jsp">회원정보 수정</a></li>
				<li><a href="mypage_reserv_list.jsp">예매내역 확인</a></li>
				<li><a href="mypage_bookmark.jsp">찜한 공연/전시</a></li>
			</ul>
			<!-- 대관자회원 로그인 -->
			<% } else if(general_id==null && group_id!=null) { %>
				<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_grp.jsp">회원정보 수정</a></li>
				<li><a href="mypage_rental_list.jsp">대관 확인</a></li>
			</ul>
			<% } %>
		</div>

		<div id="main_title">마이페이지</div>
		
		<div class="body">
		
		<!-- 일반회원 로그인 -->
		<% if(general_id!=null && group_id==null) { %>
		<div class="mod_icon">
			<a href="mypage_mod_gen.jsp">
				<div>
					<p><br><br>회원정보 수정</p>
				</div>
				<div>
					<p><br><br>정보를 수정하고 관리하세요.</p>
					<span><br>회원정보 수정 | 회원탈퇴</span>
				</div>
			</a>
		</div>
		
		<div class="reserv_icon">
		<a href="mypage_reserv_list.jsp">
			<div>
				<p><br><br>예매내역 확인</p>
			</div>
			<div>
				<p><br><br>예매하신 내역을 확인하세요.</p>
				<span><br>예매내역 확인 | 예매취소</span>
			</div>
		</a>
		</div>
		
		<div class="bmark_icon">
		<a href="mypage_bookmark.jsp">
			<div>
				<p><br><br>찜한 공연/전시</p>
			</div>
			<div>
				<p><br><br>찜해두신 공연 및 전시에 대한 정보를<br>
				모아서 확인하세요.</p>
			</div>
		</a>
		</div>
		
		<!-- 대관자회원 로그인 -->
		<% } else if(general_id==null && group_id!=null) { %>
		<div class="mod_icon">
			<a href="mypage_mod_grp.jsp">
				<div>
					<p><br><br>회원정보 수정</p>
				</div>
				<div>
					<p><br><br>정보를 수정하고 관리하세요.</p>
					<span><br>회원정보 수정 | 회원탈퇴</span>
				</div>
			</a>
		</div>
		
		<div class="reserv_icon">
		<a href="mypage_rental_list.jsp">
			<div>
				<p><br><br>대관 확인</p>
			</div>
			<div>
				<p><br><br>대관 신청 정보를 확인하세요.</p>
				<span><br>신청 내역 | 신청 취소</span>
			</div>
		</a>
		</div>
		<% } %>
		
		</div>
		
	</div>
	<jsp:include page="../../footer.jsp" />
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Rental_Service, com.madang.vo.Rental_VO, java.util.ArrayList" %>
<%
	String id=(String)session.getAttribute("groupID");
	Rental_Service service=new Rental_Service();
	ArrayList<Rental_VO> list=service.getList(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://211.63.89.214:9090/css/mypage.css"/>
<script src="http://211.63.89.214:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://211.63.89.214:9090/js/madang.js"></script>

</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_grp.jsp">회원정보 수정</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_rental_list.jsp">대관 확인</a></li>
			</ul>
		</div>
		
		<div id="main_title">대관 확인</div>
		
		<div class="body">
		
		<div class="rental_box_0">
			<h2>대관 신청 내역</h2>
			<br>
			<table border=1>
				<tr>
					<th>유형</th>
					<th>대관번호</th>
					<th>공연/전시명</th>
					<th>대관일</th>
					<th>대관장소</th>
					<th>현재상태</th>
				</tr>
				
				<% for(Rental_VO vo : list) { %>
					<tr onClick="location.href='mypage_rental_details.jsp?rental_code=<%= vo.getRental_code() %>'">
					<!-- 한 행 전체에 링크 확인~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
						<td><%= vo.getR_case() %></td>
						<td><%= vo.getRental_code() %></td>
						<td><%= vo.getR_title() %></td>
						<td><%= vo.getR_sdate() %> ~ <%= vo.getR_edate() %></td>
						<td><%= vo.getR_place() %></td>
						<% if(vo.getR_status().equals("신청완료")) { %>
							<td><%= vo.getR_status2() %></td>
						<% } else { %>
							<td><%= vo.getR_status() %></td>
						<% } %>
					</tr>
				<% } %>
				
			</table>
		</div>
		
		</div>
		
	</div>
	<jsp:include page="../../footer.jsp" />
</body>
</html>
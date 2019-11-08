<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Rental_Service, com.madang.vo.Rental_VO" %>
<%
	String id=(String)session.getAttribute("groupID");
	String rental_code=request.getParameter("rental_code");
	
	Rental_Service service=new Rental_Service();
	Rental_VO vo=service.getContent(rental_code, id);
%>
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
		$('#rt_file_dwn').click(function(e){
			e.preventDefault(); //e의 href무력화
			window.open('http://localhost:9090/upload/q_and_a/<%=vo.getR_sfile()%>');
		});//파일클릭 다운로드
	});
</script>
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

		<div id="main_title">대관 신청 내역</div>
		
		<div class="body">
		
		<div class="ticket_box_1">
			<h2>대관 정보</h2>
			<br>
			<table border=1>
				<tr>
					<td>대관번호</td>
					<td><%= vo.getRental_code() %></td>
				</tr>
				<tr>
					<td>유형</td>
					<td><%= vo.getR_case() %></td>
				</tr>
				<tr>
					<% if(vo.getR_case().equals("공연")) { %>
						<td>공연명</td>
					<% } else if(vo.getR_case().equals("전시")) { %>
						<td>전시명</td>
					<% } %>
					<td><%= vo.getR_title() %></td>
				</tr>
				<tr>
					<td>대관 장소</td>
					<td><%= vo.getR_place() %></td>
				</tr>
				<tr>
					<td>대관 시작일</td>
					<td><%= vo.getR_sdate() %></td>
				</tr>
				<tr>
					<td>대관 종료일</td>
					<td><%= vo.getR_edate() %></td>
				</tr>
				<tr>
					<td>공연 시각</td>
					<td><%= vo.getR_opentime() %></td>
				</tr>
				<tr>
					<td>공연 시간</td>
					<td><%= vo.getR_time() %></td>
				</tr>
				<tr>
					<td>리허설 시간</td>
					<td><%= vo.getR_rhtime() %></td>
				</tr>
				<tr>
					<td>신청서</td>
					<td>
						<%if(vo.getR_file()!=null && vo.getR_file()!=""){ %>
							<a href="#" id="rt_file_dwn"><%=vo.getR_file()%></a>
						<%}else{ %>
							파일 없음
						<%} %>
						<%-- <%= vo.getR_file() %> 이건....어떻게해 --%>
					</td>
				</tr>
				<tr>
					<td>현재상태</td>
					<% if(vo.getR_status().equals("신청완료")) { %>
						<td><%= vo.getR_status2() %></td>
					<% } else { %>
						<td><%= vo.getR_status() %></td>
					<% } %>
				</tr>
				
				
				
			</table>
		</div>
		
		<div class="button">
			<a href="mypage_rental_list.jsp"><button type="button" id="out_btn" class="button_b">목록</button></a>
			<a href="mypage_rental_cc.jsp?rental_code=<%= vo.getRental_code() %>"><button type="button" id="out_btn" class="button_b">신청취소</button></a>
		</div>
		
		</div>
		
	</div>
	<jsp:include page="../../footer.jsp" />
</body>
</html>
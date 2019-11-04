<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_grp.jsp">회원정보 수정</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_rental_list.jsp">대관 확인</a></li>
			</ul>
		</div>

		<div id="main_title">대관 신청 내역</div>
		
		<div class="ticket_box_1">
			<h2>대관 정보</h2>
			<br>
			<table border=1>
				<tr>
					<td>대관번호</td>
					<td>0000</td>
				</tr>
				<tr>
					<td>유형</td>
					<td>공연</td>
				</tr>
				<tr>
					<td>공연명</td>
					<td>노트북 화면 적응 안된다</td>
				</tr>
				<tr>
					<td>대관 장소</td>
					<td>슬프다..</td>
				</tr>
				<tr>
					<td>대관 시작일</td>
					<td>2019-09-30</td>
				</tr>
				<tr>
					<td>대관 종료일</td>
					<td>2019-09-30</td>
				</tr>
				<tr>
					<td>공연 시각</td>
					<td>20:00</td>
				</tr>
				<tr>
					<td>공연 시간</td>
					<td>2시간 30분</td>
				</tr>
				<tr>
					<td>리허설 시간</td>
					<td>14:00 ~ 17:00</td>
				</tr>
				<tr>
					<td>신청서</td>
					<td>이건....어떻게해</td>
				</tr>
			</table>
		</div>
		
		<div class="button">
			<a href="mypage_rental_list.jsp"><button type="button" id="out_btn" class="button_b">목록</button></a>
			<a href="mypage_rental_cc.jsp"><button type="button" id="out_btn" class="button_b">신청취소</button></a>
		</div>
		
	</div>
</body>
</html>
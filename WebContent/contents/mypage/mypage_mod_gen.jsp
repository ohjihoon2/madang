<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>   
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>

</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_mod_gen.jsp">회원정보 수정</a></li>
				<li><a href="mypage_reserv_list.jsp">예매내역 확인</a></li>
				<li><a href="mypage_bmark.jsp">찜한 공연/전시</a></li>
			</ul>
		</div>

		<div id="main_title">회원정보 수정</div>
		
		<div id="mypage_table">
			<form action="#" method="get" name="mypage_mod_form">
				<table border=1>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id" id="id" disabled="disabled"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pw" id="pw"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" id="name" disabled="disabled"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>
							<input type="text" name="phone1" id="phone1">
							- <input type="text" name="phone2" id="phone2">
							- <input type="text" name="phone3" id="phone3">
							<select name="comp" id="comp">
								<option>통신사</option>
								<option>SKT</option>
								<option>KT</option>
								<option>LG</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>
							<input type="text" name="email1" id="email1">
							@ <input type="text" name="email2" id="email2">
							<select name="email3" id="email3">
								<option>선택</option>
								<option>naver.com</option>
								<option>gmail.com</option>
								<option>daum.net</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td><input type="date" name="birth" id="birth"></td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
							<input type="radio" name="gender" value="m" id="gender">남
							<input type="radio" name="gender" value="f" id="gender">여
						</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>
							<input type="text" name="addr" id="addr">
							<button type="button" id="addr_btn">주소찾기</button>
						</td>
					</tr>
				</table>
				
				<div class="mem_mod_agr">
					<input type="checkbox" id="agr1"> 이메일 수신 동의
				</div>
				<div  class="mem_mod_agr">
					<input type="checkbox" id="agr2"> SMS 수신 동의
				</div>
				
				<div class="button">
					<button type="button" id="mem_mod_btn" class="button_a">수정</button>
					<button type="button" class="button_b">취소</button>
					<a href="mypage_out.jsp"><button type="button" class="button_b">탈퇴</button></a>
				</div>
				
			</form>
		</div>
	
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>

<style>


/** 중앙 concert contents **/

</style>
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
						<td>담당자 이름</td>
						<td><input type="text" name="name" id="name" disabled="disabled"></td>
					</tr>
					<tr>
						<td rowspan=3>담당자 연락처</td>
					</tr>
					<tr>
						<td class="left">
							Tel. <input type="text" name="phone1" id="phone1">
							- <input type="text" name="phone2" id="phone2">
							- <input type="text" name="phone3" id="phone3">
						</td>
					</tr>
					<tr>
						<td class="left">
							FAX. <input type="text" name="pax1" id="pax1">
							- <input type="text" name="pax2" id="pax2">
							- <input type="text" name="pax3" id="pax3">
						</td>
					</tr>
					<tr>
						<td>담당자 이메일</td>
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
						<td>회사명</td>
						<td><input type="text" name="company" id="company" disabled="disabled"></td>
					</tr>
					<tr>
						<td>대표자명</td>
						<td>
							<input type="text" name="cname" id="cname" disabled="disabled">
						</td>
					</tr>
					<tr>
						<td>사업자번호</td>
						<td><input type="text" name="licsnum" id="licsnum" disabled="disabled">
					</tr>
					<tr>
						<td rowspan=3>대표번호</td>
					</tr>
					<tr>
						<td class="left">
							Tel. <input type="text" name="cphone1" id="cphone1">
							- <input type="text" name="cphone2" id="cphone2">
							- <input type="text" name="cphone3" id="cphone3">
						</td>
					</tr>
					<tr>
						<td class="left">
							FAX. <input type="text" name="cpax1" id="cpax1">
							- <input type="text" name="cpax2" id="cpax2">
							- <input type="text" name="cpax3" id="cpax3">
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
				
				<div class="button">
					<button type="button" id="mem_mod_btn">수정</button>
					<button type="button">취소</button>
					<a href="mypage_out.jsp"><button type="button">탈퇴</button></a>
				</div>
				
			</form>
		</div>
	
	</div>
</body>
</html>
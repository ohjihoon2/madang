<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
* {
	font-family: "나눔스퀘어라운드";
	padding: 0px;
	margin: 0px;
}

body, div {
	margin: auto;
	/* text-align:center; */
}

/** 타이틀 **/
div#main_title {
	width: 900px;
	border-bottom: 3px solid rgb(5, 135, 94);
	border-left: 15px solid rgb(5, 135, 94);
	display: inline-block;
	margin: 100px 0px 0px 70px;
	font-size: 30pt;
	font-weight: bold;
	font-family: "나눔스퀘어라운드";
	text-align: left;
}

/** 왼쪽 nav **/
#left_nav {
	width: 180px;
	margin: 180px -20px 0px 200px;
	padding-right: 30px;
	display: inline-block;
	float: left;
	text-decoration: none;
	color: rgb(34, 34, 34);
}

div#left_nav>ul {
	border-right:2px solid #9b9b9b; 
	text-align: center;
	list-style-type: none;;
	color: rgb(5, 135, 94);
}

div#left_nav>ul>li{
	height:50px;
}

div#left_nav>ul>li:nth-child(1) {
	font-size: 20pt;
	font-style: bold;
	margin-bottom: 10px;
	margin-right: 20px;
}

div#left_nav>ul>li>a {
	text-decoration: none;
}

/** 중앙 concert contents **/
div#mypage_table {
	width:850px;
	margin-top:40px;
}

div#mypage_table table {
	width:90%;
	border-right:none;
	border-left:none;
}

div#mypage_table table, div#mypage_table tr, div#mypage_table td {
	border-collapse: collapse;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
}

div#mypage_table tr > th, div#mypage_table tr > td {
	font-size:13pt;
	padding:8px;
	text-align:center;
}

div#mypage_table tr > td:nth-child(1) { /* 각 행 1열 */
	padding:3px 20px 3px 20px;
	width:50px;
}

div#mypage_table tr > td.left {
	text-align:left;
	font-size:12pt;
}

div#mypage_table tr > td:nth-child(2) { /* 각 행 2열: */
	text-align:left;
	padding-left:20px;
}

table input {
	height:25px; width:60%;
	border:1px solid lightgray;
	border-radius:10px;
	font-size:12pt;
	padding-left:5px;
}

input#phone1, input#phone2, input#phone3,
input#cphone1, input#cphone2, input#cphone3,
input#pax1, input#pax2, input#pax3,
input#cpax1, input#cpax2, input#cpax3 {
	width:20%;
}

input#email1, input#email2 {
	width:30%;
}

select#email3 {
	width:22%; height:26px;
	border-radius:10px;
	margin-left:6px;
	font-size:12pt;
}

input#gender {
	border:1px solid red;
	display:inline-block;
	text-align:left;
	padding:0px;
}

input#addr {
	width:70%;
}

button#addr_btn {
	width:90px; height:26px;
	font-size:12pt;
	border-radius:10px;
	background:lightgray;
	margin-left:6px;
}

form > div:last-child button { /* 하단 버튼 */
	margin-top:40px;
	width:50px; height:40px;
	font-size:13pt;
	border-radius:10px;
	background:lightgray;
	margin-right:10px;
}

form > div:last-child {
	text-align:center;
	margin-left:-50px;
}

</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_mod_gen.jsp">회원정보 수정</a></li>
				<li><a href="#">예매내역 확인</a></li>
				<li><a href="#">찜한 공연/전시</a></li>
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
				
				<div>
					<button type="button" id="mem_mod_btn">수정</button>
					<button type="button">취소</button>
					<a href="mypage_out.jsp"><button type="button">탈퇴</button></a>
				</div>
				
			</form>
		</div>
	
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
	<script src="http://localhost:9090/js/madang.js"></script>	
	<link rel="stylesheet" href="http://localhost:9090/css/madangcss.css"/>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="http://localhost:9090/js/madang.js"></script>
</head>
<body>
<jsp:include page="../../header.jsp"/>

<div id="join_general2" class="page_contents">
<h1 class="page_title">회원가입</h1>
<h2><span class="font_circle">●</span> 회원 정보 입력</h2>
	<form action="#" method="post" name="join_geral2_form">
		<ul>
			<li>
				<label>아이디</label>
				<input type="text" name="id">
				<button type="button">중복확인</button>
			</li>
			<li>
				<label>패스워드</label>
				<input type="password" name="pass">
			</li>
			<li>
				<label>패스워드 확인</label>
				<input type="password" name="cpass">
				*같은 패스워드를 입력하세요 <!-- 일치하면 "일치합니다"라고 변경될 예정 -->
			</li>			
			<li>
				<label>이름</label>
				<input type="text" name="name">
			</li>
			
			<li>
				<label>성별</label>
				<input type="radio" name="gender">남자
				<input type="radio" name="gender">여자
			</li>
			<li>
				<label>생년월일</label>	<!-- join_general1.jsp에서 입력한 정보가 미리 작성되어있겠끔 -->
				<input type="text" name=birthday placeholder="2019-10-10">
			</li>
			<li>
				<label>연락처</label>			<!-- join_general1.jsp에서 입력한 연락처가 미리 작성되어있겠끔 -->
				<input type="radio" name="phon_com" value="SKT">SKT
				<input type="radio" name="phon_com" value="KT">KT
				<input type="radio" name="phon_com" value="LGU+">LGU+
				<br>
				<label> </label>	
				<input type="text" name="phon1" placeholder="010">
				<span> - </span>
				<input type="text" name="phon2" placeholder="1234">
				<span> - </span>
				<input type="text" name="phon3" placeholder="5648">	
			</li>			
			<li>
				<label>이메일</label>
				<input type="text" name="email1">
				@<input type="text" name="email2">
				<select name="email3">
					<option>선택하세요</option>
					<option>naver.com</option>
					<option>gmail.com</option>
					<option>daum.net</option>
				</select>
			</li>
			<li>
				<label>주소</label>
				<input type="text" id="sample6_postcode" placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="addr_find">
				<label> </label>
				<input type="text" id="sample6_address" placeholder="주소"><br>
				<label> </label>
				<input type="text" placeholder="상세주소"><br>			
			</li>	
			<li>
				<label>이메일 수신여부(선택) </label>
				<input type="radio" name="email_accept" value="Y">예
				<input type="radio" name="email_accept" value="N">아니오
			</li>
			<li>
				<label>SMS 수신여부(선택) </label>
				<input type="radio" name="sms_accept" value="Y">예
				<input type="radio" name="sms_accept" value="N">아니오
			</li>		
		</ul>
	</form>
	<div class="joinbtn">
		<a href="join_general1.jsp"><button type="button" class="join_prv">이전으로</button></a>
		<a href="join3.jsp"><button type="button" class="join_next">다음으로</button></a>
	</div>
</div>	
</body>
</html>
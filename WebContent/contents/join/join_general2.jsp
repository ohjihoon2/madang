<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/madangcss.css">

</head>
<body>
<jsp:include page="../../header.jsp"/>

<div id="join_general2" class="page_contents">
<h1 class="page_title">회원가입</h1>
<h2><span class="page_title">●</span> 회원 정보 입력</h2>
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
				<input type="text" name="addr">
				<button type="button">주소찾기</button>
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
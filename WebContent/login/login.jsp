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
<jsp:include page="../header.jsp"/>

<div id="login" class="page_contents">
	<h1 class="page_title">로그인</h1>
	<div>
		<form action="#" method="get" name="loginform">
			<input type="text" id="id" name="id" placeholder="아이디">
			<br>
			<input type="password" id="password" name="password" placeholder="패스워드">
			<br>
			<button type="button" id="btnlonin">로그인</button>
			
		</form>
		<section>
			<a href="#"><span>아이디/패스워드 찾기</span></a>
			<div> </div>
			<a href="http://localhost:9090/join/join0.jsp"><span>회원가입</span></a>
		</section>
	</div>

</div><!-- id=login -->



</body>
</html>
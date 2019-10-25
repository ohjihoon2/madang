<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
*{
	border:1px solid blue;
	margin: 0px;
	padding:0px
}

div#admin_login{
	width:400px;
	margin:auto;
	text-align:center;
}
div#admin_login > section{
	display:inline-block;
	border:1px solid red;
	margin:auto;
}


</style>


</head>
<body>
<div id="admin_login">
	<section>
		<h2>관리자 로그인</h2>
		<div>
			<form action="#" method="post" name="admin_login">
				<input type="text" placeholder="아이디"/>
				<input type="password"  placeholder="패스워드"/>
				
			</form>
			<button type="button">로그인</button>
		</div>
	</section>
</div>
</body>
</html>
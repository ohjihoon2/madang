<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
*{
	margin: 0px;
	padding:0px; font-family:"나눔스퀘어라운드";
	
}
body{
	padding-top:150px;
	padding-bottom:150px;
}


div#admin_login{
	width:500px;
	margin:auto;
	text-align:center;
	padding:50px 0px 50px 0px;
}
div#admin_login > h1{
	margin-bottom:30px;
}
div#admin_login > section{
	width:400px;
	padding: 20px 10px 20px 10px;
	border:1px solid rgb(5,135,94);
	border-radius:30px;
	display:inline-block;
	margin:auto;
}

div#admin_login > section form input{
	width:95%;
	height:35px;
	margin:20px 0px 0px 0px;
}

div#admin_login > section form button{
	width:95%;
	height:40px;
	margin:20px 0px 20px 0px;
	border:none;
	background-color:rgb(5,135,94);
	color:white;
	font-size:15pt;
}

</style>


</head>
<body>
<div id="admin_login">
	<h1>관리자 로그인</h1>
	<section>
		<div>
			<form action="#" method="post" name="admin_login">
				<input type="text" placeholder="아이디"/>
				<input type="password"  placeholder="패스워드"/>
				
			<a href="admin_main.jsp"><button type="button">로그인</button></a>
			</form>
		</div>
	</section>
</div>
</body>
</html>
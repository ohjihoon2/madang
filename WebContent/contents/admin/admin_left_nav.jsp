<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

/*왼쪽네비*/
aside.amdmin_left{
	background-color:rgb(5,135,94);
	width:290px;
	height:1500px;
	float:left;
	color:white;
}
aside.amdmin_left ul{
	list-style-type:none;
	font-size:15pt;
}
aside.amdmin_left ul li:first-child{
	height:100px;
	padding:50px 30px 50px 0px;
	test-align:center;
}

aside.amdmin_left ul li{
	height:40px;
	padding:3px 0px 0px 30px;
}
aside.amdmin_left ul li div.dept02{
	display:none;
}

</style>
</head>
<body>
<aside class="amdmin_left">
	<!--
	왼쪽네비
		-공연
		-전시
	 -->
	 <ul>
	 	<li><a href="#"><span>관리자 페이지</span></a></li>
	 	<li class="dept01">
	 		공연관리
	 		<div class="dept02">
	 			<a>완료</a>
	 			<a>예정</a>
	 		</div>
	 	</li>
	 	
	 	<li>전시관리</li>
	 	<li>대관관리</li>
	 	<li>회원관리</li>
	 	<li>고객센터</li>
	 	<li>게시판 관리</li>
	 	<li>공지사항</li>
	 </ul>
	</aside>
</body>
</html>
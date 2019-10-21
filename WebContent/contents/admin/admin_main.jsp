<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	//헤더
	$('aside.amdmin_left ul li.dept01').hover(
		function() {
		$('div.dept02').slideDown();
		}
	);
});
</script>
<style>
/*공통사항*/
*{
	/*border:1px solid red;*/
	font-family:"나눔스퀘어라운드";
	margin:0px;
	padding:0px;
}

div.admin_page{

	height:1500px;
}

div.admin_content{
	border : 1px solid red;
	width:80%;
	height:1500px;
	margin:auto;
	float:left;
}

/*왼쪽네비*/
aside.amdmin_left{
	background-color:rgb(5,135,94);
	width:250px;
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
	margine:30px 0px 300px 0px;
	test-align:center;
}

aside.amdmin_left ul li{
	height:40px;
	padding:3px 0px 0px 30px;
}
aside.amdmin_left ul li div.dept02{
	display:none;
}

/*내용*/
	div#admin_main div.admin_content section{
		border:1px solid gray;
		height:300px;
		padding:50px 0px 0px 30px;
	}
	/*공연, 전시 안내*/
	div#admin_main div.admin_content section:first-child article{
		display : inline-block;
		width:500px;
		height:250px;
		margin-right:50px;
		
	}
	div#admin_main div.admin_content section:first-child article ul {
		border:1px solid green;
		list-style-position: inside;
		padding:5px 0px 0px 10px;
		width:400px;
		height:200px;
		margin-top:20px;
		overflow:auto;
	}
	
</style>

</head>
<body>
<!-- 
	admin페이지에서 하는 것: 공지사항, 1:1상담, 언론보도, 이벤트 그리고 공시,전시에 대한 crud.
 -->
<div id="admin_main" class="admin_page">
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
	<div class="admin_content">
		<section>
		 	<article>
		 		<!--현재 진행중인 공연(넘치면 over-scroll / for문사용) -->	
		 		<h2>진행중인 공연 </h2>
		 		<h5>더보기</h5>
		 		<ul>
		 			<li>
		 				차이코프스키 호두깍기차이코프스키 호두깍기차이코프스키 호두깍기차이코프스키 호두깍기차이코프스키 호두깍기 (20190901~20190810)
		 			</li>
		 			<li>
		 				차이코프스키 호두깍기 (20190901~20190810)
		 			</li>
		 		</ul> 
		 	</article>
		 	<article>
		 		<!--현재 진행중인 공연(넘치면 over-scroll / for문사용) -->	
		 		<h2>진행중인 전시 </h2>
		 		<h5>더보기</h5>
		 		<ul>
		 			<li>
		 				차이코프스키 호두깍기 (20190901~20190810)
		 			</li>
		 			<li>
		 				차이코프스키 호두깍기 (20190901~20190810)
		 			</li>
		 		</ul> 
		 	</article>
		</section>
		<section>
	 		<!-- 공지사항 -->
	 		<h2>공지사항</h2>
	 		<table>
	 			<tr>
	 				<td>오늘만큼은 무료라구!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>오늘만큼은 무료라구!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 		</table>
	 	</section>
	 	<section>
	 	<!-- 1:1 상담 -->
	 		<h2>1:1상담</h2>
	 		<table>
	 			<tr>
	 				<td>오늘만큼은 무료라구!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>오늘만큼은 무료라구!</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 		</table>
	 	</section>
	</div>
</div>
</body>
</html>
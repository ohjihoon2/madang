<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
$(document).ready(function(){
	  $("aside#amdmin_left div.admin_left_sub").hide();
	  // $("ul > li:first-child a").next().show();
	  $("aside#amdmin_left ul>li>a:first-child").click(function(){
	    $(this).siblings().slideToggle(300);
	    $("aside#amdmin_left ul li a").not(this).siblings().slideUp(300);
	    return false;
	  });
	  
	  $("aside#amdmin_left div#admin_left_gohome").click(function(){
		  window.open("http://211.63.89.214:9090/mainpage.jsp", "_blank");  
	  });
	  
	  $("aside#amdmin_left > div#admin_left_home").click(function(){
		  location.href="http://211.63.89.214:9090/contents/admin/admin_main.jsp";
	  });

	});
 </script>

<style>

*{
  padding:0; 
  margin:0;
  font-family:"나눔스퀘어라운드";
}
/*왼쪽네비*/
aside#amdmin_left{
	background-color:rgb(5,135,94);
	width:290px;
	height:1500px;
	float:left;
	color:white;
}
aside#amdmin_left>div:first-child{
	width:100%;
	height:50px;
	text-align:center;
	font-size:23pt;
	padding-top:50px;
}

aside#amdmin_left> div:nth-child(2){
	width:90%;
	text-align:right;
	padding: 20px 15px 0px 0px;
	font-size:15pt;
	margin-bottom:80px;
	
}

aside#amdmin_left ul{
  width:100%; 
  list-style:none;
}

aside#amdmin_left ul li{
	margin:0px 0px 15px 60px;
  padding:20px 30px 0px 10px; 
  text-align:left;
  color:white;
}


aside#amdmin_left ul li a,
aside#amdmin_left ul li:nth-child(4) article a{
  
  line-height:20px; 
  display:block; 
  text-decoration:none; 
  color:white;
  margin-right:30px;
  font-size:18pt;
}



aside#amdmin_left ul li>div a{
	margin:10px 0px 15px 20px;
	font-size:13pt;
}

</style>
</head>
<body>
<aside id="amdmin_left">
	<div id="admin_left_home">
		관리자 페이지
	</div>
	<div id="admin_left_gohome">홈페이지로</div>
<ul>
  <li>
    <a href="#">공연관리</a><!-- 상영중 -->
    <div class="admin_left_sub"><a href="#">상영중인 공연</a></div>
    <div class="admin_left_sub"><a href="#">지난 공연</a></div>
	<div class="admin_left_sub"><a href="#">완료된 공연</a></div>
  </li>
  <li>
    <a href="#">전시관리</a><!-- 상영중 -->
    <div class="admin_left_sub"><a href="#">상영중인 전시</a></div>
    <div class="admin_left_sub"><a href="#">지난 전시</a></div>
	<div class="admin_left_sub"><a href="#">완료된 전시</a></div>
  </li>
  <li>
    <a href="#">회원관리</a>  <!-- 일반회원 -->
    <div class="admin_left_sub"><a href="http://211.63.89.214:9090/contents/admin/member_counsel/admin_member.jsp">일반회원</a></div>
	<div class="admin_left_sub"><a href="http://211.63.89.214:9090/contents/admin/member_counsel/admin_member_group.jsp">대관회원</a></div>
  </li>
  <li>
     <article><a href="http://211.63.89.214:9090/contents/admin/member_counsel/admin_QandA.jsp">1:1상담 관리</a></article>
  </li>
  <li>
     <a href="http://211.63.89.213:9090/contents/admin/rental/admin_rental.jsp">대관관리</a>
     <div class="admin_left_sub"><a href="http://211.63.89.213:9090/contents/admin/rental/admin_rental_con.jsp">공연대관</a></div>
	<div class="admin_left_sub"><a href="http://211.63.89.213:9090/contents/admin/rental/admin_rental_exh.jsp">전시대관</a></div>
  </li>
    <li>
     <a href="#">게시판 관리</a>
    <div class="admin_left_sub"><a href="#">관람후기</a></div>
	<div class="admin_left_sub"><a href="http://211.63.89.214:9090/contents/admin/board/admin_notice.jsp">공지사항</a></div>
	<div class="admin_left_sub"><a href="http://211.63.89.214:9090/contents/admin/board/admin_news.jsp">언론보도</a></div>
	<div class="admin_left_sub"><a href="http://211.63.89.214:9090/contents/admin/board/admin_event.jsp">이벤트</a></div>
  	</li>
  </ul>
</aside>
</body>
</html>
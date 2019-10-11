<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

	*{
		font-family:"나눔스퀘어라운드";
		padding:0px;
		margin:0px;
	}


	div#login{
		width:100% ;/*)) 세로는 주지않음. */
		margin:auto;
	
	}


   div#login  h1{  /*'로그인'이 표시되는 바*/
      width:700px;
      border-bottom:3px solid rgb(5,135,94);
      border-left:15px solid rgb(5,135,94);
      display:inline-block;
      margin:100px 0px 50px 0px;
      font-size:30pt;
      font-weight:bold;
      font-family:"나눔스퀘어라운드";
      text-align:left;
   }
   
   
   /*로그인 페이지 컨텐츠*/
   div#login > div.contents{
   width:1000px;
   	margin:auto;
   	text-align:center;
   	float:left;
   }
      /*로그인 페이지의 폼 내부 디자인*/
   div#login div.contents form input{
   		display:inline-block;
   		width:400px;
   		height:25px;
   		margin:15px 30px 0px 30px;
   		padding:5px;
   }
   
   div#login div.contents form button{
   		background-color:rgb(5,135,94);
   		color:white;
   		width:400px;
   		height:40px;
   		border:none;
   		margin-top:30px;
   }
   
   div#login> div.contents> section{
   display:inline-block;
   	margin:15px 0px 10px 0px;
   	width:400px;
   	height:35px;
   	text-align:right;
   }
   /*로그인 버튼 하단 내용*/
   div#login> div.contents> section span{
 	color: rgb(155,155,155);
	}  
	div#login> div.contents> section div{ /*하단 내용들의 간격*/
		height:10px;
	} 
	
/** 왼쪽 nav **/
	#left_nav{
		width:180px;
		margin:180px -20px 0px 350px;
		padding-right:30px;
		display:inline-block;
		float:left;
		text-decoration:none;		
		color:rgb(34,34,34);
	}
	div#left_nav>ul{
		border-right:1px solid #9b9b9b;
		text-align:center;
		list-style-type:none;;		
		color:rgb(5,135,94);
	}
	div#left_nav>ul>li:nth-child(1) {
		font-size:20pt;
		font-style: bold;
		margin-bottom:10px;
		margin-right:20px;
	}
	
	div#left_nav>ul>li>a{
		text-decoration: none;
	}
	
	
</style>

</head>
<body>
<jsp:include page="../header.jsp"/>

	<div id="left_nav">
		<ul>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
<div id="login">



<div class="contents">	
	<h1>로그인</h1>

	
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
			<a href="#"><span>대관 회원가입</span></a>
			<a href="#"><span>회원가입</span></a>
		</section>
	</div>
</div>
</div>
<div>
</div>
</body>
</html>
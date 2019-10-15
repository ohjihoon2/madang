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
	
	div.page_contents{
	
		width:1000px;
		height:1500px;
		margin:auto;
	}
	
	h1.page_title{
      width:700px;
      border-bottom:3px solid rgb(5,135,94);
      border-left:15px solid rgb(5,135,94);
      display:inline-block;
      margin:100px 0px 50px 0px;
      font-size:30pt;
      font-weight:bold;
      text-align:left;
   }
   
   
   div#join3 div:last-child{
   	margin-top:20px;
   	text-align:center;
   	border:1px solid red;
   	width:930px;
   }

    /*이전, 다음 버튼 (joinbtn클래스)*/ 	
   	div#join3 div:last-child a button{
   		font-size:14pt;
   		background-color:rgb(5,135,94);
 		width:200px;
 		height:60px;
 		color:rgb(255,255,255);
 		border:none;
 		margin:0px 100px 0px 100px;
   	}
</style>
</head>
<body>
<jsp:include page="../header.jsp"/>
<div id="join3" class="page_contents">
	<h1 class="page_title">회원가입</h1>
	<div>
		<img src="http://localhost:9090/images/join/join3.png">
	</div>
	
	<div>
		<a href="../mainpage.jsp"><button type="button">홈페이지로</button></a>
		<a href="http://localhost:9090/login/login.jsp"><button type="button">로그인</button></a>
	</div>
</body>
</html>
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
   
   
   div#join0 div:last-child{
   	margin-top:20px;
   	text-align:center;
   	border:1px solid red;
   	width:930px;
   	
   }

    /*이전, 다음 버튼 (joinbtn클래스)*/ 	
   	div#join0 div:last-child a button{
   		font-size:20pt;
   		background-color:rgb(5,135,94);
 		width:250px;
 		height:150px;
 		color:rgb(255,255,255);
 		border:none;
 		margin:0px 100px 0px 100px;
   	}
</style>
</head>
<body>
<!-- 일반회원과 대관자 회원 분기점 -->
<jsp:include page="../header.jsp"/>
<div id="join0" class="page_contents">
	<h1 class="page_title">회원가입</h1>
	<div>
	
	</div>
	<div>
		<a href="join_general1.jsp"><button type="button">일 반 개 인 회 원<br> </button></a>
		<a href="join_group1.jsp"><button type="button">법 인 / 단 체 회 원<br>(학교,기업,기관)</button></a>
	</div>
</body>
</html>
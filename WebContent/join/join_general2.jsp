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
   div.page_contents{
	
		width:1000px;
		height:1500px;
		margin:auto;
	}
		
/*회원정보 입력폼 공통사항*/		
	
	div#join_general2 form ul{	
		width:700px;
		margin:auto;
		list-style-type:none;
		}
	div#join_general2 form li{
		padding:5px 0px 5px 0px;
		margin:5px 0px 5px 0px;
		}
	div#join_general2 label{
		display:inline-block;
		width:180px;
		padding:5px 0px 5px 30px; /*))전체 사이즈가 늘어난다!=>전체 사이즈 수정 100px->70px*/
		}
	
/*회원정보 입력폼 css*/	
	div#join_general2 input[type=text], input[type=password]{
		width:250px;/*))li기준*/
		padding:5px 5px 5px 20px; /*))텍스트 필드 안의 여백. 단 사이즈도 증가한다!((사방으로!))*/
		}

	div#join_general2 li:nth-child(6)>input[type=text]{
		width:15%;
	}
	div#join_general2 li:nth-child(6)>select{
		width:20%;
		padding: 5px;
	}
		
	div#join_general2 li:nth-child(8)>div{
		display:inline-block;
	}
	div#join_general2 li:nth-child(8) div:nth-child(2){
		width:30%;
	}
	div#join_general2 li:nth-child(8) div:nth-child(3){
		width:50%;
	}
	div#join_general2 li:nth-child(8) div:nth-child(3) input[type=text]{
		width:20%;
		padding: 5px 5px 5px 10px;
	}
		
	div#join_general2 li:nth-child(8) div:nth-child(3) select{
		border-radius:5px;
		display:inline-block;
		width:20%;
		padding:5px;
	}
		

/*회원정보 입력폼 안의 버튼*/	
	div#join_general2 button{
			width:100px;
			padding:3px;
			background:mediumseagreen;
			color:white;
			font-weight:bold;
			font-size:10pt;
		}
  /*이전, 다음 버튼 (joinbtn클래스)*/
	div.joinbtn{
  		text-align:right;
  		padding-top:50px;
  	}
   	div.joinbtn button#join_prv{
   		background-color:rgb(155,155,155);
 		width:150px;
 		height:50px;
 		color:rgb(255,255,255);
 		border:none;
   	}   	
   	div.joinbtn button#join_next{
   		background-color:rgb(5,135,94);
 		width:150px;
 		height:50px;
 		color:rgb(255,255,255);
 		border:none;
   	}
</style>
</head>
<body>
<jsp:include page="../header.jsp"/>

<div id="join_general2" class="page_contents">
<h1 class="page_title">회원가입</h1>
<h2><span style="color:rgb(5,135,94)">●</span> 회원 정보 입력</h2>
	<form action="#" method="post" name="join_geral2_form">
		<ul>
			<li>
				<label>아이디</label>
				<input type="text" name="id">
				<button type="button">중복확인</button>
			</li>
			<li>
				<label>암호</label>
				<input type="password" name="pass">
			</li>
			<li>
				<label>암호확인</label>
				<input type="password" name="cpass">
				*같은 암호를 입력하세요 <!-- 일치하면 "일치합니다"라고 변경될 예정 -->
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
		<a href="join_general1.jsp"><button type="button" id="join_prv">이전으로</button></a>
		<a href="join_general3.jsp"><button type="button" id="join_next">다음으로</button></a>
	</div>
</div>	
</body>
</html>
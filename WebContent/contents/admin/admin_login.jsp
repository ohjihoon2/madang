<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
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
<script>
	$(document).ready(function(){
		$("#adminloginbtn").click(function(){
			//유효성 검사
			if($("#adminlogin_id1").val()==""){
				alert("아이디를 입력하세요.");
				$("#adminlogin_id1").focus();
			}else if($("#adminlogin_pw1").val()==""){
				alert("패스워드를 입력하세요.");
				$("#adminlogin_pw1").focus();
			}else{
				//회원인지 검사
				var login = $("form#adminloginform").serialize();
				$.ajax({
					url:"admin_login_proce.jsp?"+login,
					success:function(result){
						loginresult=result.trim();
						alert(loginresult);
						if(loginresult=="관리자 로그인에 성공했습니다."){
							location.href="http://localhost:9090/contents/admin/admin_main.jsp";
						}
					}//success
				});
			}
			
		});
	});
</script>

</head>
<body>
<div id="admin_login">
	<h1>관리자 로그인</h1>
	<section>
		<div>
			<form method="post" name="admin_login" id="adminloginform">
				<input type="text" name="id" placeholder="아이디" id="adminlogin_id1"/>
				<input type="password" name="pw" placeholder="패스워드" id="adminlogin_pw1"/>
				
			<button type="button" id="adminloginbtn">로그인</button>
			</form>
		</div>
	</section>
</div>
</body>
</html>
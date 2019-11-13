<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://211.63.89.214:9090/js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="http://211.63.89.214:9090/css/madangcss.css">
<script>
	$(document).ready(function(){
		$("#btnlonin").click(function(){
			//유효성 검사
			if($("#login_id1").val()==""){
				alert("아이디를 입력하세요.");
				$("#login_id1").focus();
			}else if($("#login_pw1").val()==""){
				alert("패스워드를 입력하세요.");
				$("#login_pw1").focus();
			}else{
				//회원인지 검사
				var login = $("div#login form#login_form").serialize();
				$.ajax({
					url:"login_proce.jsp?distinguish=general&"+login,
					success:function(result){
						loginresult=result.trim();
						alert(loginresult);
						if(loginresult=="로그인에 성공했습니다."){
							location.href="http://211.63.89.214:9090/mainpage.jsp";
						}
					}//success
				});
			}
			
		});
	});
</script>


</head>
<body>
<jsp:include page="../../header.jsp"/>

<div id="login" class="page_contents1">
	<h1 class="page_title">로그인</h1>
	<div>
		<form method="post" name="loginform" id="login_form">
			<input type="text" id="login_id1" name="id" placeholder="아이디">
			<br>
			<input type="password" id="login_pw1" name="pw" placeholder="패스워드">
			<br>
			<a href="login_group.jsp"><span>대관자는 이쪽으로</span></a>
			<br>
			<button type="button" id="btnlonin">로그인</button>
			<input type="hidden" name = "distinguish" value="general"/>
		</form>
		<section>
			<a href="#"><span>아이디/패스워드 찾기</span></a>
			<div> </div>
			<a href="http://211.63.89.214:9090/contents/join/join0.jsp"><span>회원가입</span></a>
		</section>
	</div>

</div><!-- id=login -->


	<jsp:include page="../../footer.jsp"/>
</body>
</html>
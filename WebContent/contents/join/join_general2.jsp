<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://localhost:9090/css/madangcss.css"/></head>
	<!-- 주소api -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
	<script src="http://localhost:9090/js/madang.js"></script>
	
<script>
$(document).ready(function(){

	//유효성검사
	$("#join_g2next_btn").click(function(){
		
		if($("#join_g2_id").val()==""){
			alert("아이디를 입력해 주세요");
			$("#join_g2_id").focus();
		}else if($("#join_g2_pw").val()==""){
			alert("패스워드 입력해 주세요");
			$("#join_g2_pw").focus();
		}else if($("join_g2_cpw").val()==""){
			alert("패스워드 확인을 입력해 주세요");
			$("#join_g2_cpw").focus();
		}else if($("#join_g2_name").val()==""){
			alert("이름을 입력해 주세요");
			$("#join_g2_name").focus();
		}else if($(".join_g2_gender:checked").length==0){
			alert("성별을 선택해 주세요");	
		}else if($("#join_g2_birth").val()==""){
			alert("생년월일을 입력해 주세요");
		}else if($(".join_g2_p_comp:checked").length==0){
			alert("통신사를 선택해 주세요");
		}else if($("#join_g2_phon2").val()==""|| $("#join_g2_phon3").val()==""){
			alert("휴대폰을 입력해 주세요");
			$("#join_g2_phon2").focus();
		}else if($("#join_g2_email_id").val()==""){
			alert("이메일을 입력해 주세요");
			$("#join_g2_email_id").focus();
		}else if($("#join_g2_email_addr").val()==""){
			alert("이메일 주소를 입력해 주세요");
			$("#join_g2_email_addr").focus();
		}else if($(".join_g2_accept_email:checked").length==0){
			alert("이메일 수신여부를 선택해 주세요")
		}else if($(".join_g2_accept_sms:checked").length==0){
			alert("sms 수신여부를 선택해 주세요")
		
		}else{
			join_geral2_form.submit();
		}
	});//회원가입 버튼클릭
	/*이메일주소 선택*/
	$("#join_g2_email_addr2").change(function(){
		if($("#join_g2_email_addr2").val()!="선택하세요"){
			$("#join_g2_email_addr").val($("#join_g2_email_addr2").val());			
		}else{
			$("#join_g2_email_addr").val("");
			$("#join_g2_email_addr2").focus();
		}
	});//이메일주소 선택
	
	/*패스워드 확인*/
			$("#join_g2_cpw").focusout(function(){	////)cpass에서 떨어질때 function 작동
		 	if($("#join_g2_pw").val()==""){ //)패스워드는 비어있음 안되지.
		 		alert("암호를 입력해주세요");
		 		$("#join_g2_pw").focus();
		 		//return false; //)커서의 위치를 html로 옮긴다? //)요즘은 생략해도 된다.
		 	}else{
		 		if($("#join_g2_cpw").val()!=""){
		 			if($("#join_g2_pw").val() == $("#join_g2_cpw").val()){
		 				$("#join_g2_pwCheckResult")
		 				.css("color","blue")
		 				.text("암호가 동일합니다");		 				
				 	}
		 			else{
				 		 $("#join_g2_pwCheckResult")
		 				.css("color","red").css("font-size","10pt").text("암호가 다릅니다. 다시 입력해주세요");
		 				$("#join_g2_pw").val("");
		 				$("#join_g2_cpw").val("");
		 				$("#join_g2_pw").focus(); 
				 		} 
		 			}
		 		}
		});	//패스워드 확인
		
		
		//중복아이디 체크
		$("#join_g2_idchk").click(function(){
			var nid = $("#join_g2_id").val();
			if(nid==""){
				alert("아이디를 입력해주세요");
			}else{
				$.ajax({
					url:"join_general2_proce.jsp?nid="+nid,
					success:function(result){
						alert(result);
					}
				});	
			}
		});//아이디 중복
	
		
});
</script>
</head>
<body>
<jsp:include page="../../header.jsp"/>

<div id="join_general2" class="page_contents">
<h1 class="page_title">회원가입</h1>
<h2><span class="font_circle">●</span> 회원 정보 입력</h2>
	<form action="join_general2_proce.jsp" method="post" name="join_geral2_form" id="join_geral2_form">
		<ul>
			<li>
				<label>아이디*</label>
				<input type="text" name="id" id="join_g2_id">
				<button type="button" id="join_g2_idchk">중복확인</button>
			</li>
			<li>
				<label>패스워드*</label>
				<input type="password" name="pw"id="join_g2_pw">
			</li>
			<li>
				<label>패스워드 확인*</label>
				<input type="password" name="cpw"id="join_g2_cpw">
				<span id="join_g2_pwCheckResult">같은 패스워드를 입력하세요</span>
			</li>			
			<li>
				<label>이름*</label>
				<input type="text" name="name"id="join_g2_name">
			</li>
			
			<li>
				<label>성별*</label>
				<input type="radio" name="gender" class="join_g2_gender" value="M">남자
				<input type="radio" name="gender" class="join_g2_gender" value="F">여자
			</li>
			<li>
				<label>생년월일*</label>	<!-- join_general1.jsp에서 입력한 정보가 미리 작성되어있겠끔 -->
				<input type="text" name=birth placeholder="2019-10-10" id="join_g2_birth">
			</li>
			<li>
				<label>연락처*</label>			<!-- join_general1.jsp에서 입력한 연락처가 미리 작성되어있겠끔 -->
				<input type="radio" name="p_comp" value="SKT" class="join_g2_p_comp">SKT
				<input type="radio" name="p_comp" value="KT" class="join_g2_p_comp">KT
				<input type="radio" name="p_comp" value="LGU+" class="join_g2_p_comp">LGU+
				<br>
				<label> </label>	
				<input type="text" name="phone1" placeholder="010" id="join_g2_phon1">
				<span> - </span>
				<input type="text" name="phone2" placeholder="1234" id="join_g2_phon2">
				<span> - </span>
				<input type="text" name="phone3" placeholder="5648" id="join_g2_phon3">	
			</li>			
			<li>
				<label>이메일*</label>
				<input type="text" name="email_id" id="join_g2_email_id">
				@<input type="text" name="email_addr"id="join_g2_email_addr">
				<select name="email_addr2" id="join_g2_email_addr2">
					<option>선택하세요</option>
					<option>naver.com</option>
					<option>gmail.com</option>
					<option>daum.net</option>
				</select>
			</li>
			<li>
				<label>주소</label>
				<input type="text" id="sample6_postcode" placeholder="우편번호" name="post_num">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="addr_find">
				<label> </label>
				<input type="text" id="sample6_address" placeholder="주소" name="addr"><br>
				<label> </label>
				<input type="text" placeholder="상세주소" name="addr_d"><br>			
			</li>	
			<li>
				<label>이메일 수신여부* </label>
				<input type="radio" name="accept_email" value="Y" class="join_g2_accept_email">예
				<input type="radio" name="accept_email" value="N" class="join_g2_accept_email">아니오
			</li>
			<li>
				<label>SMS 수신여부* </label>
				<input type="radio" name="accept_sms" value="Y" class="join_g2_accept_sms">예
				<input type="radio" name="accept_sms" value="N"class="join_g2_accept_sms">아니오
			</li>
			<li style="text-align:right">
				*표시는 필수사항입니다.
			</li>		
		</ul>
	</form>
	<div class="joinbtn">
		<a href="join_general1.jsp"><button type="button" class="join_prv">이전으로</button></a>
		<button type="button" class="join_next" id="join_g2next_btn">회원가입</button>
	</div>
</div>	
</body>
</html>
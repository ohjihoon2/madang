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
	var isIdCheck = false;
	//유효성검사
	$("#join_gp2next_btn").click(function(){
		if($("#join_gp2_id").val()==""){
			alert("아이디를 입력해 주세요");
			$("#join_gp2_id").focus();
			alert(isIdCheck);
		}else if($("#join_gp2_pw").val()==""){
			alert("패스워드 입력해 주세요");
			$("#join_gp2_pw").focus();
		}else if($("#join_gp2_cpw").val()==""){
			alert("패스워드 확인을 입력해 주세요");
			$("#join_gp2_cpw").focus();
		}else if($("#join_gp2_name").val()==""){
			alert("담당자 이름을 입력해 주세요");
			$("#join_gp2_name").focus();
		}else if($("#join_gp2_email_id").val()==""){
			alert("담당자 이메일을 입력해 주세요");
			$("#join_gp2_email_id").focus();
		}else if($("#join_gp2_email_addr").val()==""){
			alert("담당자 이메일 주소를 입력해 주세요");
			$("#join_gp2_email_addr").focus();
		}else if($("#join_gp2_phone1").val()==""||$("#join_gp2_phone2").val()==""|| $("#join_gp2_phone3").val()==""){
			alert("담당자 연락처를 입력해 주세요");
			$("#join_gp2_phone1").focus();
		}else if($("#join_gp2_company").val()==""){
			alert("회사명을 입력해 주세요");
			$("#join_gp2_company").focus();
		}else if($("#join_gp2_c_name").val()==""){
			alert("대표자명을 입력해 주세요");
			$("#join_gp2_c_name").focus();
		}else if($("#join_gp2_c_number").val()==""){
			alert("사업자 번호를 입력해 주세요");
			$("#join_gp2_c_number").focus();
		}else if($("#join_gp2_c_phone1").val()==""||$("#join_gp2_c_phone2").val()==""|| $("#join_gp2_c_phone3").val()==""){
			alert("대표번호를 입력해 주세요");
			$("#join_gp2_c_phone1").focus();
		}else if(isIdCheck==false){
			alert("아이디 중복확인을 해주세요")
			$("#join_gp2_idchk").focus();
		}else{
			join_group2_form.submit();
		}
	});//회원가입 버튼클릭
	
	/*이메일주소 선택*/
	$("#join_gp2_email_addr2").change(function(){
		if($("#join_gp2_email_addr2").val()!="선택하세요"){
			$("#join_gp2_email_addr").val($("#join_gp2_email_addr2").val());			
		}else{
			$("#join_gp2_email_addr").val("");
			$("#join_gp2_email_addr2").focus();
		}
	});//이메일주소 선택
	
	/*패스워드 확인*/
			$("#join_gp2_cpw").focusout(function(){	////)cpass에서 떨어질때 function 작동
		 	if($("#join_gp2_pw").val()==""){ //)패스워드는 비어있음 안되지.
		 		alert("암호를 입력해주세요");
		 		$("#join_gp2_pw").focus();
		 		//return false; //)커서의 위치를 html로 옮긴다? //)요즘은 생략해도 된다.
		 	}else{
		 		if($("#join_gp2_cpw").val()!=""){
		 			if($("#join_gp2_pw").val() == $("#join_gp2_cpw").val()){
		 				$("#join_gp2_pwCheckResult")
		 				.css("color","blue")
		 				.text("암호가 동일합니다");		 				
				 	}
		 			else{
				 		 $("#join_gp2_pwCheckResult")
		 				.css("color","red").css("font-size","10pt").text("암호가 다릅니다. 다시 입력해주세요");
		 				$("#join_gp2_pw").val("");
		 				$("#join_gp2_cpw").val("");
		 				$("#join_gp2_pw").focus(); 
				 		} 
		 			}
		 		}
		});	//패스워드 확인
		
		//아이디 공백 제거
		$("#join_gp2_id").focusout(function(){
			var resultId=$("#join_gp2_id").val().trim();
			var resultId=resultId.replace(/ /g,"");
			
			$("#join_gp2_id").val(resultId);
		});
		
		
		
		//중복아이디 체크
		$("#join_gp2_idchk").click(function(){
			var nid = $("#join_gp2_id").val();
			if(nid==""){
				alert("아이디를 입력해주세요");
			}else{
				$.ajax({
					url:"join_group2_proce.jsp?nid="+nid,
					success:function(result){  //true=중복, false=중복X
						var cheresult= result.trim();
						if(cheresult == "overlap"){
							alert("아이디가 중복됩니다.");
							$("#join_gp2_id").val("");
							$("#join_gp2_id").focus();
							
						}else{
							alert("사용가능한 아이디입니다.");
							isIdCheck=true;
						}
					}
				});	
			}
		});//아이디 중복
});
</script>
</head>	
<body>
<jsp:include page="../../header.jsp"/>

<div id="join_group2" class="page_contents">
<h1 class="page_title">회원가입</h1>
<h2><span class="font_circle">●</span> 회원 정보 입력</h2>
	<form action="join_group2_proce.jsp" method="post" name="join_group2_form">
		<ul>
			<li>
				<label>아이디*</label>
				<input type="text" name="id" id="join_gp2_id" onkeyup="test(this)">
				<button type="button" id="join_gp2_idchk">중복확인</button>
			</li>
			<li>
				<label>패스워드*</label>
				<input type="password" name="pw" id="join_gp2_pw">
			</li>
			<li>
				<label>패스워드 확인*</label>
				<input type="password" name="cpw" id="join_gp2_cpw">
				<span id="join_gp2_pwCheckResult">같은 패스워드를 입력하세요</span>
			</li>			
			<li>
				<label>담당자 이름*</label>
				<input type="text" name="name" id="join_gp2_name">
			</li>
			<li>
				<label>담당자 이메일*</label>
				<input type="text" name="email_id" id="join_gp2_email_id">
				@<input type="text" name="email_addr" id="join_gp2_email_addr">
				<select name="email_addr2" id="join_gp2_email_addr2">
					<option>선택하세요</option>
					<option>naver.com</option>
					<option>gmail.com</option>
					<option>daum.net</option>
				</select>
			</li>
			<li>
				<label>담당자 연락처*</label>
				<input type="text" name="phone1" maxlength="4" id="join_gp2_phone1">
				<span> - </span>
				<input type="text" name="phone2" maxlength="4" id="join_gp2_phone2">
				<span> - </span>
				<input type="text" name="phone3" maxlength="4" id="join_gp2_phone3"> 
			</li>
			<li>
				<label>팩스번호</label>
				<input type="text" maxlength="4" name="fax1">
				<span> - </span>
				<input type="text" maxlength="4" name="fax2">
				<span> - </span>
				<input type="text" maxlength="4" name="fax3">
			</li>	
			<br>
			<li>
				<label>회사명*</label>
				<input type="text" name="company" id="join_gp2_company">
			</li>
			<li>
				<label>대표자명*</label>
				<input type="text" name="c_name" id="join_gp2_c_name">
			</li>
			<li>
				<label>사업자번호('-'제외)*</label>
				<input type="text" name="c_number" id="join_gp2_c_number">
				<button type="button">중복확인</button>
			</li>
			<li>
				<label>대표번호*</label>
				<input type="text" name="c_phone1" id="join_gp2_c_phone1">
				<span> - </span>
				<input type="text" name="c_phone2" id="join_gp2_c_phone2">
				<span> - </span>
				<input type="text" name="c_phone3" id="join_gp2_c_phone3">
			</li>				
			<li>
				<label>주소</label>
				<input type="text" id="sample6_postcode" placeholder="우편번호" name="c_post_num2">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="addr_find">
				<label> </label>
				<input type="text" id="sample6_address" placeholder="주소" name="c_addr"><br>
				<label> </label>
				<input type="text" placeholder="상세주소" name="c_addr_d"><br>			
			</li>	
			<li style="text-align:right">
				*표시는 필수사항입니다.
			</li>
		</ul>
	</form>
	<div class="joinbtn">
		<a href="join_group1.jsp"><button type="button" class="join_prv">이전으로</button></a>
		<button type="button" class="join_next" id="join_gp2next_btn">다음으로</button>
	</div>
</div>	
		<jsp:include page="../../footer.jsp"/>
</body>
</html>
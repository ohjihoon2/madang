/***********************************************************
 * 					JQuery form check 메소드 ( 함수 ) 
 **********************************************************/
$(document).ready(function(){
	
	/** 로그인 폼 체크 **/
	$("button#btnlogin").click(function(){
		if($("input#id").val() ==""){
			alert("아이디를 입력하세요");
			$("input#id").focus();
		}else if($("input#pw").val()==""){
			alert("패스워드를 입력하세요");
			$("input#pw").focus();
		}else{
			alert("로그인 성공");
			loginForm.submit();
		}
	});
	
	/** validation check **/
	$("button#btnJoin").click(function(){
		if($("#id").val()==""){
			alert("아이디를 입력해주세요");
			$("#id").focus();
		}else if($("input#name").val()==""){
			alert("이름을 입력해주세요");
			$("input#name").focus();
		}else if($("input:radio.gender:checked").length==0){
			alert("성별을 체크 해주세요.")
			$("input:radio.gender").focus();
		}else if($("input#pass").val()==""){
			alert("패스워드를 입력해주세요.")
			$("input#pass").focus();
		}else if($("input#cpass").val()==""){
			alert("패스워드 확인을 입력해주세요.")
			$("input#cpass").focus();
		}else if($("input#email1").val()==""){
			alert("이메일1을 입력해주세요.")
			$("#email1").focus();
		}else if($("#email2").val()==""){
			alert("이메일2를 입력하거나 이메일3을 선택해주세요.")
			$(".email2").focus();
		}else if($("input#addr").val()==""){
			alert("주소를 입력해주세요.")
			$("input#addr").focus();
		}else if($("input.phone_comp:checked").length==0){
			alert("통신사를 선택해주세요.")
			$("input.phone_comp").focus();
		}else if($("input#phone_number2").val()==""){
			alert("휴대폰 번호2를 입력해주세요.")
			$("input#phone_number2").focus();
		}else if($("input#phone_number3").val()==""){
			alert("휴대폰 번호3을 입력해주세요.")
			$("input#phone_number3").focus();
		}else if($(".hobby:checked").length==0){
			alert("관심을 체크해주세요.")
			$("input.hobby").focus();
		}else if($("textarea#intro").val()==""){
			alert("자기소개를 입력해주세요.")
			$("textarea#intro").focus();
		}else{
			alert("완료")
			joinForm.submit();
		}  
	});//validation check
	
	
	/** 암호 & 암호확인 체크 **/
	
	 $("#cpass").focusout(function(){
		if($("#pass").val()==""){
			alert("암호를 입력해주세요");
			$("#pass").focus();
		}else{
			if($("#cpass").val() !=""){
				if($("#pass").val() == $("#cpass").val()){
					$("#passCheckResult").css("display","block")
					.css("color","blue").css("margin-left","220px")
					.css("font-size","9pt").text("암호가 같습니다");
				}else{
					$("#passCheckResult").css("display","block")
					.css("#color","red").css("font-size","9pt")
					.text("암호가 다릅니다. 다시입력해주세요.");
					$("#pass").val("");
					$("#cpass").val("");
					$("#cpass").focus("");
				}
			}
		}
	}); 
	
		
	/**  이메일 주소 선택  **/
	$("#email3").change(function(){
		if($("#email3").val() != "선택하세요"){
			$("#email2").val($("#email3").val());
		}else{
			alert("메일 주소를 선택해 주세요");
			$("#email3").focus();
			$("#email2").val("");
		}
	});
	
	
	/**  board_notice_write form check **/
	$("#btnBoardWrite").click(function(){
		if($("#btitle").val()==""){
			alert("제목을 입력하세요");
			$("#btitle").focus();
		}else{
			boardForm.submit();
		}
	});
	
	$("#btnNoticeWrite").click(function(){
		if($("#ntitle").val()==""){
			alert("제목을 입력해주세요.");
			$("#ntitle").focus();
		}else{
			noticeForm.submit();
		}
	});

	
	
	
	
	
});//end of document




/***********************************************************
 * 					JavaScript form check 함수
 **********************************************************/

/**
 * 로그인 form check
 */

function login(){
	var uid = document.getElementById("id");
	var upw = document.getElementById("pw");
	
	if(uid.value == ""){
		alert("아이디 입력하셈");
		uid.focus();
	}else if(upw.value ==""){
		alert("비번 입력하셈");
		upw.focus();
	}else{
		alert("로그인완료");
		loginForm.submit();
	}
}

/**
 * 회원가입 form check
 */
function cbCheck(cbList){
	var check = false;
	for(i=0;i<cbList.length;i++){
		if(cbList[i].checked){
			check = true;
		}
	}
	return check;
}

function join(){
	
	var id = document.getElementById("id");
	var name = document.getElementById("name");
	/* Jquery에서는 사용하지 않지만 id로하면 번거로우니 name으로 가능 */
	
	var genderList = document.getElementsByName("gender");
	var genderCheck = cbCheck(genderList);
	
	var pass = document.getElementById("pass");
	var cpass = document.getElementById("cpass");
	var email1 = document.getElementById("email1");
	var email2 = document.getElementById("email2");
	var email3 = document.getElementById("email3");
	var addr = document.getElementById("addr");
	
	var phone_compList = document.getElementsByName("phone_comp");
	var phone_compCheck = cbCheck(phone_compList);
	
	var phone_number2 = document.getElementById("phone_number2");
	var phone_number3 = document.getElementById("phone_number3");
	
	var hobbyList = document.getElementsByName("hobby");
	var hobbyCheck = cbCheck(hobbyList);
	
	var intro = document.getElementById("intro");
	
	if(id.value==""){
		alert("아이디 입력하셈");
		id.focus();
	}else if(name.value==""){
		alert("이름 입력하셈");
		name.focus();
	}else if(genderCheck==false){
		alert("성별 입력하셈");
		genderList[0].focus();
	}else if(pass.value==""){
		alert("pw 입력하셈");
		pass.focus();
	}else if(cpass.value==""){
		alert("pw 확인 입력하셈");
		cpass.focus();
	}else if(email1.value==""){
		alert("email1 입력하셈");
		email1.focus();
	}else if(email2.value==""){
		alert("email2 입력하셈");
		email2.focus();
	}else if(addr.value==""){
		alert("주소 입력하셈");
		addr.focus();
	}else if(phone_compCheck==false){
		alert("통신사 입력하셈");
		phone_compList[0].focus();
	}else if(phone_number2.value==""){
		alert("번호 2번째 입력하셈");
		phone_number2.focus();
	}else if(phone_number3.value==""){
		alert("번호 3번째 입력하셈");		
		phone_number3.focus();
	}else if(hobbyCheck==false){
		alert("취미 입력하셈");
		hobbyList[0].focus();
	}else if(intro.value==""){
		alert("자기소개 입력하셈");
		intro.focus();
	}else{
		alert("완료");
		joinForm.submit();
	}
}

/*  패스워드 & 패워워드 확인 체크 */
function passCheck(){
	var pass = document.getElementById("pass");
	var cpass = document.getElementById("cpass");
	var msg = document.getElementById("passCheckResult");
	
	//1.암호, 암호확인 데이터 존재 !!
	if(pass.value==""){
		pass.focus();
	}else{
		if(cpass.value==""){
			cpass.focus();
			return false;
		}else{
			if(cpass.value !=""){
				if(pass.value == cpass.value){
					/* msg.style="display:block; color:blue; margin-left:220px;"; */
					msg.style.display="block";
					msg.style.color="blue"; 
					msg.style.marginLeft="220px";
					msg.style.fontSize="9pt";
					msg.innerHTML= "암호가 같습니다.";
					return true;
				}else{
					msg.style.display="block";
					msg.style.color="red"; 
					msg.style.marginLeft="220px";
					msg.style.fontSize="9pt";
					msg.innerHTML= "암호가 다릅니다. 다시입력해주세요.";
					cpass.value="";
					cpass.focus();
					return false;
				}
			}
		}
	}
}

function emailChoice(){
	var email2 = document.getElementById("email2");
	var email3 = document.getElementById("email3");
	if(email3.value !="선택"){
		email2.value = email3.value;
	}
}

/**
 *	admin_notice_write form check 
 */
function noticeFormCheck(){
	var ntitle = document.getElementById("ntitle");
	
	if(ntitle.value==""){
		alert("제목을 입력해주세요.");
		ntitle.focus();
	}else{
		noticeForm.submit();
	}
}

//Validation은 form이 있을때 사용하는 것인데 form이 없으면 server로 값이 넘어가지 않는다.
/**
 *	board_notice_write form check 
 */
function boardFormCheck(){
	var btitle = document.getElementById("btitle");
	if(btitle.value==""){
		alert("제목을 입력하세요");
		btitle.focus();
	}else{
		boardForm.submit();
	}
}

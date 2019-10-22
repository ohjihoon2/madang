$(document).ready(function(){
	
	//유효성체크
	$("button#mem_mod_btn").click(function(){
		if($("input#pw").val()==""){
			alert("비밀번호를 입력하세요");
			$("input#pw").focus();
		} else if($("input#phone1").val()=="" || $("input#phone2").val()=="" ||$("input#phone3").val()=="") {
			alert("전화번호를 입력하세요");
			$("input#phone1").focus();
		} else {
			alert("ㅇ");
			//mypage_mod_form.submit();
		}
	});
	
	
	//이메일주소 선택-전달
	$("#email3").change(function(){
		if($("#email3").val()=="선택"){
			$("#email2").val("");
		} else {
			$("#email2").val($("#email3").val());
		}
	});
	
	
	//우편번호
	$('input#addr_btn').click(function(){ 
	    new daum.Postcode({
	        oncomplete: function(data) {
	            var addr = ''; // 주소 변수
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            $('#sample6_postcode').val(data.zonecode);
	            $('#sample6_address').val(addr);
	        }
	    }).open();
	});
	
	
	
});
$(document).ready(function(){
	
	//정보수정 유효성체크
	$("button#mem_mod_btn").click(function(){
		if($("input#pw").val()==""){
			alert("비밀번호를 입력하세요");
			$("input#pw").focus();
		} else if($("input#phone1").val()=="" || $("input#phone2").val()=="" || $("input#phone3").val()=="") {
			alert("전화번호를 입력하세요");
			$("input#phone1").focus();
		} else if($("input#p_comp").val()=="통신사") {
			alert("통신사를 선택하세요");
		} else if($("input#email1").val()=="" || $("input#email2").val()=="") {
			alert("이메일을 입력하세요");
			$("input#email1").focus();
		} else {
			//alert("ㅇ");
			mypage_mod_form.submit();
		}
	});
	
	
	//정보수정 read only
	$("input#id").attr("readonly", true);
	$("input#name").attr("readonly", true);
	$("input#birth").attr("readonly", true);
	$("input#company").attr("readonly", true);
	$("input#cname").attr("readonly", true);
	$("input#licsnum").attr("readonly", true);
	
	
	//정보수정 이메일주소 선택-전달
	$("#email3").change(function(){
		if($("#email3").val()=="선택"){
			$("#email2").val("");
		} else {
			$("#email2").val($("#email3").val());
		}
	});
	
	
	//정보수정 우편번호
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
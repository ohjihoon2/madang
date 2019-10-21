<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>   
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>
<script>
$(document).ready(function(){
	$("button#mem_mod_btn").click(function(){
		
		if($("input#pw").val()==""){ /* 유효성체크 */
			alert("비밀번호를 입력하세요");
			$("input#pw").focus();
			
		} else if($("input#phone1").val()=="" || $("input#phone2").val()=="" ||$("input#phone3").val()=="") {
			alert("전화번호를 입력하세요");
			$("input#phone1").focus();
			
		} else {
			alert("ㅇ");
			//mypage_mod_form.submit();
		}
	})
	
	
	$("#email3").change(function(){ /* 이메일주소 선택-전달 */
		if($("#email3").val()=="선택"){
			$("#email2").val("");
		} else {
			$("#email2").val($("#email3").val());
		}
	});
})
</script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                /* var extraAddr = ''; // 참고항목 변수 */

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
               /*  if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                   document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                } */

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                /* document.getElementById("sample6_detailAddress").focus(); */
            }
        }).open();
    }
</script>


</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_mod_gen.jsp">회원정보 수정</a></li>
				<li><a href="mypage_reserv_list.jsp">예매내역 확인</a></li>
				<li><a href="mypage_bmark.jsp">찜한 공연/전시</a></li>
			</ul>
		</div>

		<div id="main_title">회원정보 수정</div>
		
		<div id="mypage_table">
			<form action="#" method="get" name="mypage_mod_form">
				<table border=1>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id" id="id" disabled="disabled"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pw" id="pw"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" id="name" disabled="disabled"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>
							<input type="text" name="phone1" id="phone1">
							- <input type="text" name="phone2" id="phone2">
							- <input type="text" name="phone3" id="phone3">
							<select name="comp" id="comp">
								<option>통신사</option>
								<option>SKT</option>
								<option>KT</option>
								<option>LG</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>
							<input type="text" name="email1" id="email1">
							@ <input type="text" name="email2" id="email2">
							<select name="email3" id="email3">
								<option>선택</option>
								<option>naver.com</option>
								<option>gmail.com</option>
								<option>daum.net</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td><input type="date" name="birth" id="birth"></td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
							<input type="radio" name="gender" value="m" id="gender">남
							<input type="radio" name="gender" value="f" id="gender">여
						</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>
							<!-- <input type="text" name="addr" id="addr">
							<button type="button" id="addr_btn">주소찾기</button> -->
							
							<input type="text" id="sample6_postcode" placeholder="우편번호">
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" id="sample6_address" placeholder="주소"><br>
							<!-- <input type="text" id="sample6_detailAddress" placeholder="상세주소">
							<input type="text" id="sample6_extraAddress" placeholder="참고항목"> -->
							
						</td>
					</tr>
					
					<tr>
						<td>이메일 수신</td>
						<td>
							<input type="radio" name="email_accept" value="Y">예
							<input type="radio" name="email_accept" value="N">아니오
						</td>
					</tr>
					
					<tr>
						<td>SMS 수신</td>
						<td>
							<input type="radio" name="sms_accept" value="Y">예
							<input type="radio" name="sms_accept" value="N">아니오
						</td>
					</tr>
					
				</table>
				
				<!--
				<div class="mem_mod_agr">
					<input type="checkbox" id="agr1"> 이메일 수신 동의 
				</div>
				
				<div class="mem_mod_agr">
					 <input type="checkbox" id="agr2"> SMS 수신 동의
				</div>
				-->
				
				<div class="button">
					<button type="button" id="mem_mod_btn" class="button_a">수정</button>
					<button type="button" class="button_b">취소</button>
					<a href="mypage_out.jsp"><button type="button" class="button_b">탈퇴</button></a>
				</div>
				
			</form>
		</div>
	
	</div>
</body>
</html>
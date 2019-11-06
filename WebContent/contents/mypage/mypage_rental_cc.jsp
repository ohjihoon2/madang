<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Rental_Service, com.madang.vo.Rental_VO" %>
<%
	String id=(String)session.getAttribute("groupID");
	String rental_code=request.getParameter("rental_code");
	
	Rental_Service service=new Rental_Service();
	Rental_VO vo=service.getContent(rental_code, id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>
<script>
	$(document).ready(function(){
		
		var pw_msg="";
		
		//대관취소 체크박스/비밀번호 체크
		$("button#out_btn").click(function(){
			if($("input:checkbox[id='out']").is(":checked")) {
				if($("input#out_pw_cfm").val()=="") {
					alert("비밀번호를 입력해주세요");
					$("input#out_pw_cfm").focus();
				} else {
					
					if(pw_msg=="비밀번호 확인이 완료되었습니다.") {
						alert("d");
						//mem_out_form.submit();
						
					} else {
						alert("비밀번호를 다시 입력해주세요")
						$("input#out_pw_cfm").focus();
					}
					
				}
			} else {
				alert("동의 후 진행해주세요");
			}
		});
		
		
		//비밀번호 확인
		$("input#out_pw_cfm").blur(function(){
			var u_pw=$("input#out_pw_cfm").val();
			
			$.ajax({
				url:"mem_pw_process.jsp?pw="+u_pw,
				success:function(result){
					if(u_pw!="") {
						if(result!=0) { //비밀번호 일치
							$("span#pw_check_result").text("비밀번호 확인이 완료되었습니다.");
							pw_msg=$("span#pw_check_result").text();
						} else {
							$("span#pw_check_result").text("비밀번호가 일치하지 않습니다.");
							pw_msg=$("span#pw_check_result").text();
						}
					}
				}
			});
			
		});
		
	});
</script>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_main.jsp">마이페이지</a></li>
				<li><a href="mypage_mod_grp.jsp">회원정보 수정</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="mypage_rental_list.jsp">대관 확인</a></li>
			</ul>
		</div>

		<div id="main_title">대관 신청 취소</div>
		
		<div class="ticket_box_2">
			<h2>대관 정보</h2>
			<br>
			<table border=1>
				<tr>
					<td>대관번호</td>
					<td><%= vo.getRental_code() %></td>
					<td>유형</td>
					<td><%= vo.getR_case() %></td>
				</tr>
				<tr>
					<% if(vo.getR_case().equals("공연")) { %>
						<td>공연명</td>
					<% } else if(vo.getR_case().equals("전시")) { %>
						<td>전시명</td>
					<% } %>
					<td colspan=3><%= vo.getR_title() %></td>
				</tr>
				<tr>
					<td>대관 시작일</td>
					<td><%= vo.getR_sdate() %></td>
					<td>대관 종료일</td>
					<td><%= vo.getR_edate() %></td>
				</tr>
			</table>
		</div>
		
		<div class="out_box">
			<h2>대관취소 유의사항</h2>
			<br>
			<br>취소 신청 시 관리자가 확인 후 신청 내역을 삭제합니다.
			<br>
			<br>취소가 완료되면 삭제된 데이터를 복구할 수 없습니다.
		</div>
		
		<div class="out_cfm">
			<input type="checkbox" id="out"> 안내사항을 모두 확인하였으며, 이에 동의합니다.
		</div>
		
		<form action="rental_cc_process.jsp" method="post" name="rental_cc_form">
			<div id="out_pw_cfm">
				<input type="password" name="out_pw_cfm" id="out_pw_cfm" placeholder="비밀번호를 입력해주세요">
				<br><br><span id="pw_check_result"></span>
			</div>
			
			<div class="button">
				<button type="button" id="out_btn" class="button_a">신청취소</button>
				<a href="mypage_rental_details.jsp?rental_code=<%= vo.getRental_code() %>"><button type="button" id="out_btn" class="button_b">취소</button></a>
			</div>
		</form>
	
	</div>
</body>
</html>
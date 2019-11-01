<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.General_mem_VO, com.madang.service.General_mem_Service" %>

<%
	String id=String.valueOf(session.getAttribute("generalID"));
	
	General_mem_Service service=new General_mem_Service();
	General_mem_VO vo=service.getContent(id);
	
	//null > 공백
 	if(vo.getPost_num()=="" || vo.getPost_num()==null) vo.setPost_num("");
	if(vo.getAddr()=="" || vo.getAddr()==null) vo.setAddr("");
	if(vo.getAddr_d()=="" || vo.getAddr_d()==null) vo.setAddr_d("");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>
<script src="http://localhost:9090/js/mypage.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 주소 API -->

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
			<form action="mod_gen_update_process.jsp" method="post" name="mypage_mod_form">
				<table border=1>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id" id="id" value="<%= vo.getId() %>"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pw" id="pw" value="<%= vo.getPw() %>"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" id="name" value="<%= vo.getName() %>"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>
							<input type="text" name="phone1" id="phone1" maxlength="4" value="<%= vo.getPhone1() %>">
							- <input type="text" name="phone2" id="phone2" maxlength="4" value="<%= vo.getPhone2() %>">
							- <input type="text" name="phone3" id="phone3" maxlength="4" value="<%= vo.getPhone3() %>">
							<select name="p_comp" id="p_comp">
								<option>통신사</option>
								<option <% if(vo.getP_comp().equals("SKT")) { %> selected <% } %>>SKT</option>
								<option <% if(vo.getP_comp().equals("KT")) { %> selected <% } %>>KT</option>
								<option <% if(vo.getP_comp().equals("LGU+")) { %> selected <% } %>>LGU+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>
							<input type="text" name="email_id" id="email1" value="<%= vo.getEmail_id() %>">
							@ <input type="text" name="email_addr" id="email2" value="<%= vo.getEmail_addr() %>">
							<select id="email3">
								<option>선택</option>
								<option <% if(vo.getEmail_addr().equals("naver.com")) { %> selected <% } %>>naver.com</option>
								<option <% if(vo.getEmail_addr().equals("gmail.com")) { %> selected <% } %>>gmail.com</option>
								<option <% if(vo.getEmail_addr().equals("daum.net")) { %> selected <% } %>>daum.net</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td><input type="date" name="birth" id="birth" value="<%= vo.getBirth() %>"></td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
							<input type="radio" name="gender" value="M" id="gender" <% if(vo.getGender().equals("M")) { %> checked="checked" <% } %>>남 &nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="radio" name="gender" value="F" id="gender" <% if(vo.getGender().equals("F")) { %> checked="checked" <% } %>>여
						</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>
							<!-- <input type="text" name="addr" id="addr">
							<button type="button" id="addr_btn">주소찾기</button> -->
							<input type="text" id="sample6_postcode" placeholder="우편번호" name="post_num" value="<%= vo.getPost_num() %>">
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기 " id="addr_btn">
							<br><input type="text" id="sample6_address" placeholder="주소" class="addr" name="addr" value="<%= vo.getAddr() %>">
							<br><input type="text" placeholder="상세주소" class="addr" name="addr_d" value="<%= vo.getAddr_d() %>"><br>
						</td>
					</tr>
					
					<tr>
						<td>이메일 수신</td>
						<td>
							<input type="radio" name="accept_email" value="Y" <% if(vo.getAccept_email().equals("Y")) { %> checked="checked" <% } %>>예 &nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="radio" name="accept_email" value="N" <% if(vo.getAccept_email().equals("N")) { %> checked="checked" <% } %>>아니오
						</td>
					</tr>
					
					<tr>
						<td>SMS 수신</td>
						<td>
							<input type="radio" name="accept_sms" value="Y" <% if(vo.getAccept_sms().equals("Y")) { %> checked="checked" <% } %>>예 &nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="radio" name="accept_sms" value="N" <% if(vo.getAccept_sms().equals("N")) { %> checked="checked" <% } %>>아니오
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
					<a href="mypage_main.jsp"><button type="button" class="button_b">취소</button></a>
					<a href="mypage_out.jsp"><button type="button" class="button_b">탈퇴</button></a>
				</div>
				
			</form>
		</div>
	
	</div>
</body>
</html>
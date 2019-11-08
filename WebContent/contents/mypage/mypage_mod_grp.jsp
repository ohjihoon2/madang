<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.Group_mem_VO, com.madang.service.Group_mem_Service" %>
<%
String general_id=(String)session.getAttribute("generalID");
String group_id=(String)session.getAttribute("groupID");


	String id=(String)session.getAttribute("groupID");
	Group_mem_Service service=new Group_mem_Service();
	Group_mem_VO vo=service.getContent(id);
	
	//null > 공백
	if(vo.getFax1()=="" || vo.getFax1()==null) vo.setFax1("");
	if(vo.getFax2()=="" || vo.getFax2()==null) vo.setFax2("");
	if(vo.getFax3()=="" || vo.getFax3()==null) vo.setFax3("");
	if(vo.getC_post_num()=="" || vo.getC_post_num()==null) vo.setC_post_num("");
	if(vo.getC_addr()=="" || vo.getC_addr()==null) vo.setC_addr("");
	if(vo.getC_addr_d()=="" || vo.getC_addr_d()==null) vo.setC_addr_d("");
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
				<li><a style="color: rgb(5, 135, 94)" href="mypage_mod_grp.jsp">회원정보 수정</a></li>
				<li><a href="mypage_rental_list.jsp">대관 확인</a></li>
			</ul>
		</div>

		<div id="main_title">회원정보 수정</div>
		
		<div id="mypage_table">
			<form action="mod_grp_update_process.jsp" method="post" name="mypage_mod_form">
				<table border=1>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id" id="id" value=<%= vo.getId() %>></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pw" id="pw" value=<%= vo.getPw() %>></td>
					</tr>
					<tr>
						<td>담당자 이름</td>
						<td><input type="text" name="name" id="name" value=<%= vo.getName() %>></td>
					</tr>
					<tr>
						<td>담당자 연락처</td>
						<td class="left">
							Tel.&nbsp&nbsp&nbsp <input type="text" name="phone1" id="phone1" maxlength="4" value=<%= vo.getPhone1() %>>
							- <input type="text" name="phone2" id="phone2" maxlength="4" value=<%= vo.getPhone2() %>>
							- <input type="text" name="phone3" id="phone3" maxlength="4" value=<%= vo.getPhone3() %>>
							<br>
							FAX.&nbsp <input type="text" name="fax1" id="fax1" maxlength="4" value=<%= vo.getFax1() %>>
							- <input type="text" name="fax2" id="fax2" maxlength="4" value=<%= vo.getFax2() %>>
							- <input type="text" name="fax3" id="fax3" maxlength="4" value=<%= vo.getFax3() %>>
						</td>
					</tr>
					<tr>
						<td>담당자 이메일</td>
						<td>
							<input type="text" name="email_id" id="email1" value=<%= vo.getEmail_id() %>>
							@ <input type="text" name="email_addr" id="email2" value=<%= vo.getEmail_addr() %>>
							<select name="email3" id="email3">
								<option>선택</option>
								<option <% if(vo.getEmail_addr().equals("naver.com")) { %> selected <% } %>>naver.com</option>
								<option <% if(vo.getEmail_addr().equals("gmail.com")) { %> selected <% } %>>gmail.com</option>
								<option <% if(vo.getEmail_addr().equals("daum.net")) { %> selected <% } %>>daum.net</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>회사명</td>
						<td><input type="text" name="company" id="company" value=<%= vo.getCompany() %>></td>
					</tr>
					<tr>
						<td>대표자명</td>
						<td>
							<input type="text" name="c_name" id="cname" value=<%= vo.getC_name() %>>
						</td>
					</tr>
					<tr>
						<td>사업자번호</td>
						<td><input type="text" name="c_number" id="licsnum" value=<%= vo.getC_number() %>>
					</tr>
					<tr>
						<td>대표번호</td>
						<td class="left">
							Tel.&nbsp&nbsp&nbsp <input type="text" name="c_phone1" id="cphone1" maxlength="4" value=<%= vo.getC_phone1() %>>
							- <input type="text" name="c_phone2" id="cphone2" maxlength="4" value=<%= vo.getC_phone2() %>>
							- <input type="text" name="c_phone3" id="cphone3" maxlength="4" value=<%= vo.getC_phone3() %>>
						</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>
							<!-- <input type="text" name="addr" id="addr">
							<button type="button" id="addr_btn">주소찾기</button> -->
							<input type="text" name="c_post_num" id="sample6_postcode" maxlength="5" placeholder="우편번호" value=<%= vo.getC_post_num() %>>
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기 " id="addr_btn">
							<br><input type="text" name="c_addr" id="sample6_address" placeholder="주소" class="addr" value=<%= vo.getC_addr() %>>
							<br><input type="text" name="c_addr_d" placeholder="상세주소" class="addr" value=<%= vo.getC_addr_d() %>><br>
						</td>
					</tr>
				</table>
				
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
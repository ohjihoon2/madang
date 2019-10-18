<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/>

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

		<div id="main_title">회원탈퇴</div>
		
		<div class="out_box">
			<h2>예술의 마당 회원 탈퇴</h2>
			회원 탈퇴 전 안내사항을 꼭 확인해주세요.
			<br><br>
			<br>회원정보 및 개인 이용기록은 모두 삭제되며, 삭제된 데이터는 복구 불가능합니다.
			<br>
			<br>삭제를 원하시는 게시물이 있다면 반드시 탈퇴 전 삭제하시기 바랍니다.
			<br>탈퇴 후에는 본인의 게시물임을 확인할 방법이 없어 임의로 삭제해 드릴 수 없습니다.
		</div>
		
		<div class="out_cfm">
			<input type="checkbox" id="out1"> 탈퇴 후 개인의 데이터를 복구할 수 없으며, 남아있는 게시물을 삭제할 수 없습니다.
		</div>
		<div  class="out_cfm">
			<input type="checkbox" id="out2"> 안내사항을 모두 확인하였으며, 이에 동의합니다.
		</div>
		
		<div class="button">
			<button type="button" id="out_btn" class="button_a">탈퇴</button>
			<a href="mypage_mod_gen.jsp"><button type="button" class="button_b">취소</button></a>
		</div>

	</div>
</body>
</html>
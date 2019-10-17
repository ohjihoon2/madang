<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/cs.css"/>

<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("span:last-child").click(function(){
			var fid=$(this).attr("id");
			
			$("div#"+fid).slideToggle();
		});
	});
</script>

</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a href="cs_main.jsp">고객센터</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="cs_faq.jsp">F&Q</a></li>
				<li><a href="cs_qaa.jsp">1:1 상담</a></li>
			</ul>
		</div>

		<div id="main_title">FAQ 자주 묻는 질문</div>
			
		
		
		<div id="faq_list">
			<ul>
				<li>
					<div>
						<span class="faq_list_category">공연</span>
						<span class="faq_list_title" id="f1">공연시간에 늦어도 입장할 수 있나요?</span>
					</div>
					<div class="faq_slide" id="f1">1</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">전시</span>
						<span class="faq_list_title" id="f2">전시장 안에서 촬영이 가능한가요?</span>
					</div>
					<div class="faq_slide" id="f2">2</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">예매</span>
						<span class="faq_list_title" id="f3">회원이 아니어도 티켓 예매가 가능한가요?</span>
					</div>
					<div class="faq_slide" id="f3">3</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">환불/취소</span>
						<span class="faq_list_title" id="f4">티켓 예매 취소 후 환불은 어떻게 되나요?</span>
					</div>
					<div class="faq_slide" id="f4">4</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">사이트</span>
						<span class="faq_list_title" id="f5">아이디, 비밀번호를 잊어버렸어요.</span>
					</div>
					<div class="faq_slide" id="f5">5</div>
				</li>
			</ul>
		
		</div>
		
		<div id="faq_search">
			<input type="text" name="faq_search" placeholder="검색어를 입력해주세요">
			<a href="#"><img src="http://localhost:9090/images/search.png"></a>
		</div>

	</div>
</body>
</html>
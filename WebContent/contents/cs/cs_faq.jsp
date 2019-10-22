<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/cs.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>
<script src="http://localhost:9090/js/cs.js"></script>

</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="cs_main.jsp">고객센터</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="cs_faq.jsp">F&Q</a></li>
				<li><a href="cs_qaa.jsp">1:1 상담</a></li>
			</ul>
		</div>

		<div id="main_title">FAQ 자주 묻는 질문</div>
			
		
		
		<div id="faq_list">
			<ul>
				<li>
					<div>
						<span class="faq_list_category">사이트</span>
						<span class="faq_list_title" id="f1">아이디, 비밀번호를 잊어버렸어요.</span>
					</div>
					<div class="faq_slide" id="f1">
						로그인 페이지에 있는 [아이디 찾기]와 [비밀번호 찾기]를 이용해 주십시오.
						<br>[아이디 찾기]시 성명, 생년월일, 회원 가입 시 입력한 이메일 주소를 입력하셔야 찾을 수 있습니다.
					</div>
				</li>
				<br>
				<li>
					<div>
						<span class="faq_list_category">공연</span>
						<span class="faq_list_title" id="f2">공연 정보를 알고 싶어요.</span>
					</div>
					<div class="faq_slide" id="f2">
						상단 메뉴의 [공연] > [공연일정]에서 공연장별, 날짜별 공연 작품을 안내해드리고 있으며 각 작품의 상세정보도 확인하실 수 있습니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">공연</span>
						<span class="faq_list_title" id="f3">객석 입장은 언제부터 가능한가요?</span>
					</div>
					<div class="faq_slide" id="f3">
						객석으로의 입장은 보통 공연시작 30분 전 부터 가능하지만 공연에 따라 다를 수 있으므로 해당 공연의 상세정보를 확인해주시기 바라며 충분한 시간 여유를 가지고 입장해주시길 부탁드립니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">공연</span>
						<span class="faq_list_title" id="f4">공연 사진 촬영, 녹음, 녹화가 가능한가요?</span>
					</div>
					<div class="faq_slide" id="f4">
						공연의 사진 촬영, 녹음, 녹화는 엄격히 금지되어 있습니다.
						<br>공연 장면과 출연자들은 물론, 무대장치까지 초상권 및 저작권 보호 대상이므로 공연 시작 전이나 공연이 끝난 후에도 촬영은 불가능하며 셀카 촬영도 하실 수 없습니다.
						<br>정숙한 공연관람을 위한 조치이니만큼 적극적인 협조 부탁드립니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">공연</span>
						<span class="faq_list_title" id="f5">비어있는 좌석으로 자리를 옮겨도 되나요?</span>
					</div>
					<div class="faq_slide" id="f5">
						좌석은 지정좌석제이며 본인의 티켓에 해당되는 좌석에 앉아야 합니다.
						<br>비어있는 좌석도 구매한 고객이 늦게 도착하는 경우가 있고, 판매가 되지 않은 좌석이라 하더라도 좌석 이동은 불가능합니다.
						<br>모두의 쾌적한 공연 관람을 위해 협조 부탁드립니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">공연</span>
						<span class="faq_list_title" id="f6">공연시작 시간에 늦었어요. 늦게라도 들어갈 수 있나요?</span>
					</div>
					<div class="faq_slide" id="f6">
						공연시작 후에는 정해진 시간에만 입장하실 수 있습니다.
						<br>입장 시간은 각 공연의 내용에 따라 다르며, 중간 입장이 불가한 경우도 있으므로 사전에 공연정보 확인 및 공연시작 시간 준수를 부탁드립니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">공연</span>
						<span class="faq_list_title" id="f7">공연장에 몇 시까지 도착해야 하나요?</span>
					</div>
					<div class="faq_slide" id="f7">
						적어도 공연시작 30분 전에 도착하여 티켓을 발권 받으시고 화장실 등의 용무를 보신 후 여유 있게 객석에 입장하시길 권장합니다.
						<br>만석 공연의 경우 객석으로 입장하는 시간이 더 오래 걸릴 수 있으니 공연의 정시 시작을 위해 많은 협조 부탁드립니다.
					</div>
				</li>
				<br>
				<li>
					<div>
						<span class="faq_list_category">전시</span>
						<span class="faq_list_title" id="f8">전시장 안에서 촬영이 가능한가요?</span>
					</div>
					<div class="faq_slide" id="f8">
						전시에 따라 다르므로 해당 전시실 입구의 안내원에게 문의하시거나 방문하시기 전 주최측에 문의해보시길 바랍니다.
						<br>사진촬영이 가능한 경우에도 전시품의 보호를 위하여 플래시 사용을 엄격히 금지하고 있으니 주의를 부탁드립니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">전시</span>
						<span class="faq_list_title" id="f9">전시장 안으로 음료 및 음식물을 가지고 들어갈 수 있나요?</span>
					</div>
					<div class="faq_slide" id="f9">
						전시장 안으로 음료 및 음식물을 가지고 입장하실 수 없습니다.
						<br>전시장 밖에 휴게시설이 갖춰져 있으니, 이 공간을 이용해 주시기 바랍니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">전시</span>
						<span class="faq_list_title" id="f10">공휴일에도 전시를 볼 수 있나요? 전시장 입장은 언제부터 가능한가요?</span>
					</div>
					<div class="faq_slide" id="f10">
						전시에 따라 차이는 있을 수 있습니다만, 매월 마지막 월요일에는 휴관합니다.
						<br>대부분 전시는 오전 11시부터 시작되고 끝나는 시간은 여름철엔 오후 8시, 겨울철엔 오후 7시입니다.
						<br>
						<br>입장은 전시가 끝나기 한 시간 전까지 가능합니다.(여름철 7시, 겨울철 6시)
						<br>
						<br>명절연휴 등은 각 전시별로 운영여부가 다르므로 예술의전당 홈페이지 또는 전시 주최측에 문의해 주시기 바랍니다.
					</div>
				</li>
				<br>
				<li>
					<div>
						<span class="faq_list_category">예매</span>
						<span class="faq_list_title" id="f11">티켓 결제수단은 어떤 종류가 있나요?</span>
					</div>
					<div class="faq_slide" id="f11">
						결제수단으로는 신용카드(체크카드), 가상계좌, 휴대폰 결제가 있습니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">예매</span>
						<span class="faq_list_title" id="f12">회원이 아니더라도 티켓 예매가 가능한가요?</span>
					</div>
					<div class="faq_slide" id="f12">
						비회원은 티켓 예매가 불가능합니다.
						<br>예술의마당 홈페이지 회원으로 가입하신 후 홈페이지를 통해 예매하실 수 있습니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">예매</span>
						<span class="faq_list_title" id="f13">예매내역 확인은 어떻게 하나요?</span>
					</div>
					<div class="faq_slide" id="f13">
						회원님께서 예매하신 내역은 [마이페이지] > [예매내역 확인]에서 확인하실 수 있습니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">예매</span>
						<span class="faq_list_title" id="f14">티켓 예매는 어떻게 하나요?</span>
					</div>
					<div class="faq_slide" id="f14">
						티켓예매 서비스는 예술의전당 회원으로 가입하신 후 이용이 가능하며, [티켓구매] > [티켓 예매]에서 예매하실 수 있습니다.
					</div>
				</li>
				<br>
				<li>
					<div>
						<span class="faq_list_category">환불/취소</span>
						<span class="faq_list_title" id="f15">예매한 티켓의 취소는 어떻게 하나요?</span>
					</div>
					<div class="faq_slide" id="f15">
						QR코드 티켓 수령 시
						<br>예술의전당 홈페이지 내 [마이페이지]를 통해 예매내역을 직접 취소하실 수 있으며
						<br>예술의마당에 직접 전화하여 환불하실 수도 있습니다.
						<br>(02-전화번호-전화번호, 09:00~17:00)
						<br>
						<br>티켓 현장수령 시
						<br>- 티켓박스에 직접 티켓을 반납해 주시면 환불이 가능합니다.
						<br>
						<br>* 티켓 구매 시 결제한 수단으로만 환불됩니다.
					</div>
				</li>
				<li>
					<div>
						<span class="faq_list_category">환불/취소</span>
						<span class="faq_list_title" id="f16">예매취소내역 확인은 어떻게 하나요?</span>
					</div>
					<div class="faq_slide" id="f16">
						취소하신 예매내역은 회원님의 계정으로 로그인 하신 뒤에 [마이페이지] > [예매내역 확인]에서 확인 가능합니다.
					</div>
				</li>
				<br>
			</ul>
		
		</div>
		
		<!-- <div id="faq_search">
			<input type="text" name="faq_search" placeholder="검색어를 입력해주세요">
			<a href="#"><img src="http://localhost:9090/images/search.png"></a>
		</div> -->

	</div>
</body>
</html>
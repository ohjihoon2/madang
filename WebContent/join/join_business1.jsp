<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	*{
		font-family:"나눔스퀘어라운드";
		padding:0px;
		margin:0px;
	}
	
	div.page_contents{
	
		width:1000px;
		height:1500px;
		margin:auto;
	}
	
	h1.page_title{
      width:700px;
      border-bottom:3px solid rgb(5,135,94);
      border-left:15px solid rgb(5,135,94);
      display:inline-block;
      margin:100px 0px 50px 0px;
      font-size:30pt;
      font-weight:bold;
      text-align:left;
   }
   
 /*대관자 전용_ 이용약관 동의*/  
	div#join_business1>form div#join_business1_paper{
		text-align:center;
	}
    div#join_business1 h2{
    	padding:0px 0px 10px 30px;
    }
	div#join_business1 div#join_business1_paper h3{
		text-align:left;
		padding:10px 0px 0px 80px;
	}
	div#join_business1 div#join_business1_paper article{
		display:inline-block;
		overflow:scroll;
		height:100px;
		width:700px;
		text-align:left;
		margin-left:60px;
	}
	div#join_business1 div#join_business1_paper div{
		text-align:right;	
		padding-right:50px;
	}
	
  /*이전, 다음 버튼*/
  	div#join_business1 div.joinbtn{
  		text-align:right;
  		padding-top:50px;
  	}
   	div#join_business1 div:last-child button:first-child{
   		background-color:rgb(155,155,155);
 		width:150px;
 		height:50px;
 		color:rgb(255,255,255);
 		border:none;
   	}   	
   	div#join_business1 div:last-child button:last-child{
   		background-color:rgb(5,135,94);
 		width:150px;
 		height:50px;
 		color:rgb(255,255,255);
 		border:none;
   	}
  	
</style>
</head>
<body>
<jsp:include page="../header.jsp"/>
<div id="join_business1" class="page_contents">
<h1 class="page_title">회원가입 - 대관자 전용</h1>
<form action="#" method="post" name="join_business1_form">
<h2><span style="color:rgb(5,135,94)">●</span> 이용약관</h2>
<div id=join_business1_paper>
		<h3>예술의 마당 이용약관 동의(필수)</h3>
		<article>
			<strong>제 1장 총칙</strong>
			<br><br>
			<strong>제 1조(목적)</strong>
			<br>
			"본 약관은 정부24 (이하 "당 사이트")가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 당 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.
			"
			<br><br>
			<strong>제2조(용어의 정의)</strong>
			<br>
				본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
			<br>① 이용자 : 본 약관에 따라 당 사이트가 제공하는 서비스를 이용할 수 있는 자.
			<br>② 가 입 : 당 사이트가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위
			<br>③ 회 원 : 당 사이트에 개인정보 등 관련 정보를 제공하여 회원등록을 한 개인(재외국민, 국내거주 외국인 포함)또는 법인으로서 당 사이트의 정보를 제공 받으며, 당 사이트가 제공하는 서비스를 이용할 수 있는 자.
			<br>④ 아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 문자와 숫자의 조합으로 설정한 고유의 체계
			<br>⑤ 비밀번호 : 이용자와 아이디가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합.
			<br>⑥ 탈 퇴 : 회원이 이용계약을 종료 시키는 행위
			<br>⑦ 본 약관에서 정의하지 않은 용어는 개별서비스에 대한 별도 약관 및 이용규정에서 정의하거나 일반적인 개념에 의합니다.
			<br>제3조(약관의 효력과 변경)
			<br>① 당 사이트는 귀하가 본 약관 내용에 동의하는 것을 조건으로 귀하에게 서비스를 제공할 것이며, 귀하가 본 약관의 내용에 동의하는 경우, 당 사이트의 서비스 제공 행위 및 귀하의 서비스 사용 행위에는 본 약관이 우선적으로 적용됩니다.
			<br>② 당 사이트는 본 약관을 변경할 수 있으며, 변경된 약관은 당 사이트 내에 공지함으로써 이용자가 직접 확인하도록 할 것입니다. 약관을 변경할 경우에는 적용일자 및 변경사유를 명시하여 당 사이트 내에 그 적용일자 30일 전부터 공지합니다. 약관 변경 공지 후 이용자가 명시적으로 약관 변경에 대한 거부의사를 표시하지 아니하면, 이용자가 약관에 동의한 것으로 간주합니다. 이용자가 변경된 약관에 동의하지 아니하는 경우, 이용자는 본인의 회원등록을 취소(회원탈퇴)할 수 있습니다
		</article>
		<div>동의합니다. <input type="checkbox" value="Y" name="join_geral1_agree1"></div>
		<h3>개인정보 수집 및 이용에 대한 안내(필수)</h3>
		<article>
			<strong>Ⅰ. 개인정보의 수집 및 이용 동의서</strong>
			<br><br>
			 - 이용자가 제공한 모든 정보는 다음의 목적을 위해 활용하며, 하기 목적 이외의 용도로는 사용되지 않습니다.
			 <br>① 개인정보 수집 항목 및 수집·이용 목적
			 <br> 가) 수집 항목 (필수항목)
			 <br> - 성명(국문), 주민등록번호, 주소, 전화번호(자택, 휴대전화), 사진, 이메일, 나이, 재학정보, 병역사항,외국어 점수, 가족관계, 재산정도, 수상내역, 사회활동, 타 장학금 수혜현황, 요식업 종사 현황 등 지원
			 신청서에 기재된 정보 또는 신청자가 제공한 정보
			 <br> 나) 수집 및 이용 목적
			 <br> - 하이트진로 장학생 선발 전형 진행
			 <br> - 하이트진로 장학생과의 연락 및 자격확인
			 <br> - 하이트진로 장학생 자원관리
			 <br>② 개인정보 보유 및 이용기간
			 <br> - 수집·이용 동의일로부터 개인정보의 수집·이용목적을 달성할 때까지
			 <br>③ 동의거부관리
			 <br> - 귀하께서는 본 안내에 따른 개인정보 수집, 이용에 대하여 동의를 거부하실 권리가 있습니다. 다만,귀하가 개인정보의 
			 수집/이용에 동의를 거부하시는 경우에 장학생 선발 과정에 있어 불이익이 발생할 수 있음을 알려드립니다.
			 <br><br>Ⅱ. 고유식별정보 처리 동의서
			 <br>① 고유식별정보 수집 항목 및 수집·이용 목적
			 <br> 가) 수집 항목 (필수항목)
			 <br> - 주민등록번호
			 <br> 나) 수집 및 이용 목적
			 <br> - 하이트진로 장학생 선발 전형 진행
			 <br> - 하이트진로 장학생과의 연락 및 자격확인
			 <br> - 하이트진로 장학생 자원관리
			 <br>② 개인정보 보유 및 이용기간
			 <br> - 수집·이용 동의일로부터 개인정보의 수집·이용목적을 달성할 때까지
			 <br>③ 동의거부관리
			 <br> - 귀하께서는 본 안내에 따른 개인정보 수집, 이용에 대하여 동의를 거부하실 권리가 있습니다. 다만, 귀하가 개인정보의 수집/이용에 동의를 
			 거부하시는 경우에 장학생 선발 과정에 있어 불이익이 발생할 수 있음을 알려드립니다.
		</article>
		<div>동의합니다. <input type="checkbox" value="Y" name="join_geral1_agree2"></div>		
		<h3>개인정보 제3자 제공에 동의합니다.(필수)</h3>
		<article>
			알라딘은 인터넷서비스화면을 통하여 공개된 정보를 제외하고는 이용자의 개인정보를 알라딘이 제공하는 인터넷 서비스 외의 용도로 사용하거나 이용자의 동의 없이 제3자에게 제공하지 않습니다. 다만, 다음 각 호의 경우에는 예외로 합니다.
			<br>금융실명거래 및 비밀보장에 관한 법률, 신용정보의 이용 및 보호에 관한 법률, 전기통신기본법, 전기통신사업법, 지방세법, 소비자보호법, 한국은행법, 형사소송법등 법령에 특별한 규정이 있는 경우
			<br>서비스제공에 따른 요금정산을 위하여 필요한 경우
			<br>통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정개인을 식별할 수 없는 형태로 제공하는 경우
			<br>
			<br>
		</article>
		<div>동의합니다. <input type="checkbox" value="Y" name="join_geral1_agree3"></div>
		<h3>대관자(기획사) 가입약관 동의.(필수)</h3>
		<article>
			<strong>제1장 총칙</strong>
			<br><br>제1조 (목적)
			<br>본 약관은 예술의전당(이하 ‘전당’이라 합니다) “대관자 홈페이지”(http://www.sacticket.co.kr/SAC/RentFront/)의 이용을 위하여 예술의전당과 대관자 간의 권리와 의무 사항을 규정하기 위하여 제정되었습니다.
			<br><br>
			<strong>제2조 (이용 약관의 효력, 명시와 개정)</strong>
			<br>① 본 약관은 전당이 대관자 홈페이지 화면 또는 지면에 게시하거나 기타 방법으로 대관자에게 공지함으로써 효력이 발생됩니다.
			<br>② 전당은 약관 개정 시 효력 발생일 1주일 이전에 본조 제1항과 같은 방법으로 공지하여야 합니다.
			<br>③ 약관 변경시 효력발생일 이후 대관자가 대관자 홈페이지 서비스에 로그인하면 변경된 약관에 동의한 것으로 간주됩니다.
			<br><br>
			<strong>제3조 (약관 이외의 준칙)</strong>
			<br>본 약관에 명시되지 않은 사항과 본 약관에 대한 해석은 관계법령 및 기타 상관례에 따릅니다.
			<br><br>
			<strong>제4조 (용어의 정의)</strong>
			<br>이 약관에서 사용하는 용어는 다음 각 호와 같이 정의됩니다.
			<br>1. “행사”라 함은 오페라하우스, 음악당, 한가람미술관, 한가람디자인미술관, 서울서예박물관, 비타민스테이션 V갤러리, 갤러리7 등 전당의 모든 공간에서 개최되는 공연과 전시 행사를 뜻합니다.
			<br>2. “판매대행사”라 함은 예술의전당 행사의 입장권을 판매 또는 발권하는 회사를 뜻합니다.
			<br>3. “실시간 예매 연동”이란 전당과 전당이 지정한 판매대행사 간에 입장권 판매를 위하여 실시간으로 좌석정보 및 판매정보를 공유하는 방식을 말하며, “실시간 예매 연동 판매망”이란 이에 따라 구성된 유통시장을 뜻합니다.
			<br>4. “연동 판매대행사”란 “실시간 예매 연동”을 통해 입장권을 판매하는 “판매대행사”를 뜻하며, “비연동 판매대행사”란 “실시간 예매 연동”을 통하지 않고 입장권을 판매하는 “판매대행사”를 뜻합니다.
			<br>5. “대관자”란 전당의 공연장과 미술관에 “행사”의 개최를 위하여 장소를 대관하는 주최사를 뜻합니다. 주최가 여럿일 경우, 장소를 대관하기 위하여 대관신청한 대관자를 주최사로 간주합니다. 다만, 법적으로나 행정적으로, 또는 전당의 내규 등을 통해 대관자를 가름할 수 있는 경우에는 그에 따릅니다.
			<br>6. “기획사”란 “대관자”의 “행사”에 대하여 입장권을 판매하는 회사를 뜻합니다. “기획사”는 대관자 자신이 될 수도 있으며 대행하는 회사가 될 수가 있습니다.
			<br>7. “아이디(ID)”란 서비스를 이용하기 위하여 대관자가 설정하고 전당이 승인한 회원 식별문자 및 숫자 조합이며, “비밀번호”란 대관자의 정보를 보호하기 위하여 대관자 자신이 설정한 문자 및 숫자의 조합입니다.
			<br>8. “해지”란 대관자가 대관자 홈페이지 서비스 이용의 중단을 위하여 밝히는 의사 표시를 말합니다. 다만, “해지”는 대관 규약상의 행사취소와는 다르며, 단지 대관자 홈페이지 서비스의 이용 중단에만 국한됩니다.
		</article>
		<div>동의합니다. <input type="checkbox" value="Y" name="join_geral1_agree3"></div>
	</div>
	</form>
		<div class="joinbtn">
		<button type="button" id="join_prv">이전으로</button>
		<button type="button" id="join_next">다음으로</button>
		</div>
		
</div>

</body>
</html>
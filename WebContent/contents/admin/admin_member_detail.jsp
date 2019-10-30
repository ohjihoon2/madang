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
	margin:0px;
	padding:0px;
}

aside.amdmin_left ul li:nth-child(5){
	color:black;
}

div.admin_content{
	width:70%;
	height:1400px;
	margin:auto;
	float:left;
	padding:130px 0px 0px 100px;
}


div.admin_content h1{
	font-size:40pt;
}



div#admin_notice_contents section h3{
	margin:30px 0px 10px 0px;
}


div#admin_notice_contents section table{
	width:70%;
	border-collapse: collapse;
}

div#admin_notice_contents section table th{
	background-color:rgb(195,195,195);
	border:1px solid gray;
	width:150px;
	height:40px;
}
div#admin_notice_contents section table tr td{
	padding-left:10px;
	border:1px solid gray;
}

div#admin_notice_contents section:nth-child(3) table tr td:nth-child(2),
div#admin_notice_contents section:nth-child(4) table tr td:nth-child(2){
	width:500px;
}

div#admin_notice_contents article {
	margin-top:50px;
	width:70%;
	text-align :right;
}
div#admin_notice_contents article button{
	width:100px;
	height:35px;
	border:none;
}



</style>
</head>
<body>
<jsp:include page="admin_left_nav.jsp"/>
<div id="admin_notice_contents" class="admin_content">
	<h1>회 원 관 리</h1>	
	<section>
		<h3>회원정보</h3>
		<table>
			<tr>
				<tr>
					<th>아이디</th>
					<td>ee</td>
					<th>가입일자</th>
					<td>ee</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>ee</td>
					<th>성별</th>
					<td>ee</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>ee</td>
					<th>생년월일</th>
					<td>ee</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>ee</td>
					<th>통신사</th>
					<td>ee</td>
				</tr>
				<tr>
					<th>우편번호</th>
					<td colspan="3">ee</td>
				</tr>
				<tr>
					<th>주소</th>
					<td colspan="3">ee</td>
				</tr>
				<tr>
					<th>이메일수신여부</th>
					<td>ee</td>
					<th>sms수신여부</th>
					<td>ee</td>
				</tr>
			</tr>
		</table>
	</section>
	<section>
		<h3>공연 예매내역</h3>
		<table>
			<tr>
				<th>예매번호</th>
				<th>공연명</th>
				<th>예매일</th>
				<th>관람일</th>
			</tr>
				<%for(int i=0;i<5;i++){ %>
			<tr>
				<td>dd</td>
				<td>dd</td>
				<td>dd</td>
				<td>dd</td>
			</tr>
			<%} %>
		</table>
	</section>
	<section>	
		<h3>전시 예매내역</h3>
		<table>
			<tr>
				<th>예매번호</th>
				<th>전시명</th>
				<th>예매일</th>
				<th>관람기간</th>
			</tr>
			<%for(int i=0;i<5;i++){ %>
			<tr>
				<td>dd</td>
				<td>dd</td>
				<td>dd</td>
				<td>dd</td>
			</tr>
			<%} %>
		</table>
	</section>
		<article>
			<a href="admin_member.jsp"><button type="button">목록으로</button></a>
		</article>
</div>
</body>
</html>
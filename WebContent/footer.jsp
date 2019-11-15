<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  
footer, div {
	margin: 0px;
	padding: 0px;
}

footer>div:first-child>div, footer>div:nth-child(2)>div, footer>div:last-child>div
	{
	width: 1000px;
	margin: auto;
}

footer>div:first-child {
	background: #d9d9d9;
	width: 100%;
	height: 45px;
	padding: 11px 0px 4px 0px;
}

footer>div:first-child>div>img {
	margin-bottom: -5px;
}

footer>div:first-child>div>div {
	display: inline-block;
	padding-left: 40px;
}

footer>div:first-child>div {
	background: white;
	color: black;
}

footer>div:nth-child(2) {
	background: #f3f3f3;
	width: 100%;
	height: 110px;
	border: 1px solid #f3f3f3;
}
  
footer>div:nth-child(2)>div>label {
	padding: 0px 10px 0px 20px;
	font-weight: bold;
	color: #999999;
	display: inline-block;
}

footer>div:nth-child(2)>div {
	margin-top: 20px;
	text-align: center;
}

footer>div:nth-child(2)>div>img {
	margin: 7px 20px -5px 20px;
}

footer>div:nth-child(2)>div>ul {
	list-style-type: none;
	text-align: center;
	display: block;
	padding-right:20px;
}

footer>div:nth-child(2)>div>ul>li {
	display: inline-block;
}

footer>div:nth-child(2)>div>ul>li>a {
	color: #999999;
	padding: 0px 10px 0px 10px;
	text-decoration: none;
}

footer>div:last-child {
	height: 200px;
	width: 100%;
	/* 	border:1px solid blue; */
}

footer>div:last-child>div>img {
	width: 135px;
	height: 50px;
}

footer>div:last-child>div>div {
	padding-bottom: 50px;
}

footer>div:last-child>div>div>span {
	color: #999999;
}

/* notice라벨 시 */
/* footer>div:first-child>div>div>label{
		border:1px solid red;
		background:#666666;
		color:white;
		font-weight:bold;
		padding:5px 8px 5px 8px;
	} */
</style>
</head>
<body>
	<footer>
		<div>
			<div>
				<img src="http://211.63.89.214:9090/images/footer/notice_icon.png" />
				<div>공지사항 한줄로 띄우기</div>
			</div>
		</div>
		<div>
			<div>
				<label>Contact With Us</label> <img
					src="http://211.63.89.214:9090/images/footer/sns_t.png" /> <img
					src="http://211.63.89.214:9090/images/footer/sns_n.png" /> <img
					src="http://211.63.89.214:9090/images/footer/sns_np.png" /> <img
					src="http://211.63.89.214:9090/images/footer/sns_t.png" /> <img
					src="http://211.63.89.214:9090/images/footer/sns_tv.png" /> <img
					src="http://211.63.89.214:9090/images/footer/sns_youtube.png" />
				<ul>
					<li><a href="#">사이트맵</a></li>
					<li><a href="#">이용약관/정책</a></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">홈페이지저작권보호정책</a></li>
					<li><a href="http://localhost:9090/contents/admin/admin_login.jsp">Admin</a></li>
				</ul>
			</div>
		</div>
		<div>
			<div>
				<img src="http://211.63.89.214:9090/images/footer/madang_Logo_G.png" />
				<div>
					<span>(04377)서울특별시 강남구 역삼동 735 예술의 마당 | </span> <span>대표이사 :
						장마당 | 사업자등록번호 : 104-81-45690 | 통신판매업신고번호 : 2017-서울강남-0662 | </span> <span>개인정보보호
						책임자 : 장마당 | 예술의 마당 고객센터 : 1544-1122 (AM 09:00 - PM 08:00) |
						webmaster@sac.or.kr | </span> <span>copyrightⓒ2017 Arts Yard All
						rights Reserved.</span>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
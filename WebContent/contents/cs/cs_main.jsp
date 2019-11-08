<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://211.63.89.214:9090/css/cs.css"/>
<script src="http://211.63.89.214:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://211.63.89.214:9090/js/madang.js"></script>   
<script src="http://211.63.89.214:9090/js/cs.js"></script>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="cs_main.jsp">고객센터</a></li>
				<li><a href="cs_faq.jsp">F&Q</a></li>
				<li><a href="cs_qaa_list.jsp">1:1 상담</a></li>
			</ul>
		</div>

		<div id="main_title">고객센터</div>
		
		<div class="body">
		
		<div class="faq_icon">
			<a href="cs_faq.jsp">
				<div>
					<p><br>FAQ<br><br>
					자주 묻는 질문</p>
				</div>
				<div>
					<p><br><br>궁금증을 해결해드립니다.<br>
					자주 묻는 질문과 답변을 확인하세요.</p>
				</div>
			</a>
		</div>
		
		<div class="qaa_icon">
		<a href="cs_qaa_list.jsp">
			<div>
				<p><br><br>1:1 상담</p>
			</div>
			<div>
				<p><br><br>궁금한 내용이 FAQ에 없으신가요?<br>
				로그인 후, 1:1 상담을 이용해주세요.</p>
			</div>
		</a>
		</div>
		
		</div>

	</div>
	<jsp:include page="../../footer.jsp" />
</body>
</html>
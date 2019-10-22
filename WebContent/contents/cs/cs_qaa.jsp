<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/cs.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/madang.js"></script>

</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div>
		<div id="left_nav">
			<ul>
				<li><a style="color: rgb(5, 135, 94)" href="cs_main.jsp">고객센터</a></li>
				<li><a href="cs_faq.jsp">F&Q</a></li>
				<li><a style="color: rgb(5, 135, 94)" href="cs_qaa.jsp">1:1 상담</a></li>
			</ul>
		</div>

		<div id="main_title">Q&A 1:1 상담</div>
		
		<div class="qaa_table">
			<table border=1>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>날짜</th>
					<th>답변여부</th>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="cs_qaa_content.jsp">예매 후 좌석변경이 가능한가요?</a></td>
					<td>2019-09-29</td>
					<td>Y</td>
				</tr>
				<tr>
					<td>2</td>
					<td><a href="cs_qaa_content.jsp">개천절에 전시 관람</a></td>
					<td>2019-10-01</td>
					<td>N</td>
				</tr>
			</table>
			
			<div class="button">
				<a href="cs_qaa_write.jsp"><button type="button" id="qaa_write" class="button_a">작성</button></a>
			</div>
		</div>
		
	</div>
</body>
</html>
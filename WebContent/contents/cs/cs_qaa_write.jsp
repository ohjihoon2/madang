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
				<li><a style="color: rgb(5, 135, 94)" href="cs_qaa_list.jsp">1:1 상담</a></li>
			</ul>
		</div>

		<div id="main_title">Q&A 1:1 상담</div>
		
		<div class="body">
		
		<div class="qaa_table_2">
			<form action="qaa_write_process.jsp" method="post" name="qaa_write_form" enctype="multipart/form-data">
				<table border=1>
					<tr>
						<td>제목</td>
						<td><input type="text" name="qa_title" id="qaa_title"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="qa_contents" id="qaa_contents"></textarea></td>
					</tr>
					<tr>
						<td>첨부파일</td>
						<td>
							<input type="file" name="qa_file"><br>
							<span>필요한 경우 파일을 첨부해주세요.</span>
						</td>
					</tr>
				</table>
				<div class="button">
					<button type="button" id="qaa_write" class="button_a">등록</button>
					<a href="cs_qaa_list.jsp"><button type="button" class="button_b">목록</button></a>
				</div>
			</form>
		</div>
		
		</div>
		
	</div>
	<jsp:include page="../../footer.jsp" />
</body>
</html>
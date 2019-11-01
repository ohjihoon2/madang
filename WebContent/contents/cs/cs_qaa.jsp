<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.QandA_VO, java.util.ArrayList, com.madang.service.QandA_Service" %>
<%
	QandA_Service service=new QandA_Service();
	String id="test";
	ArrayList<QandA_VO> list=service.getList(id);
%>
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
				<% for(QandA_VO vo : list) { %>
					<tr>
						<td><%= vo.getRownum() %></td>
						<td><a href="cs_qaa_content.jsp?qa_code=<%= vo.getQa_code() %>"><%= vo.getQa_title() %></a></td>
						<td><%= vo.getQa_date() %></td>
						<td>
							<% if(vo.getQa_adate()!="" && vo.getQa_adate()!=null) { %> Y <% } else { %> N <% } %>
						</td>
					</tr>
				<% } %>
			</table>
			
			<div class="button">
				<a href="cs_qaa_write.jsp"><button type="button" id="qaa_write" class="button_a">작성</button></a>
			</div>
		</div>
		
	</div>
</body>
</html>
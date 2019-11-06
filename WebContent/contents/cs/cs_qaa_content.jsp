<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.QandA_VO, com.madang.service.QandA_Service" %>
<%
	String qa_code=request.getParameter("qa_code");
	QandA_Service service=new QandA_Service();
	QandA_VO vo=service.getContent(qa_code);
	vo.setQa_contents(vo.getQa_contents().replace("\r\n", "<br>"));
	
	if(vo.getQa_acontents()!="" && vo.getQa_acontents()!=null){
		vo.setQa_acontents(vo.getQa_acontents().replace("\r\n", "<br>"));
	}
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
document.write(<%= vo.getQa_code() %>);
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
		
		<div class="qaa_table_1">
			<table border=1>
				<tr>
					<td>제목</td>
					<td><%= vo.getQa_title() %></td>
				</tr>
				<tr>
					<td>날짜</td>
					<td><%= vo.getQa_date() %></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><%= vo.getQa_contents() %></td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td>
						<% if(vo.getQa_sfile()!="" && vo.getQa_sfile()!=null) { %>
							<img src="http://localhost:9090/upload/<%= vo.getQa_sfile() %>"/>
						<% } else { %> 파일 없음 <% } %>
					</td>
				</tr>
				
				<% if(vo.getQa_adate()!="" && vo.getQa_adate()!=null) { %>
				<tr>
					<td>답변</td>
					<td>
						<%= vo.getQa_acontents() %>
						<br><br>( <%= vo.getQa_adate() %> )
					</td>
				</tr>
				<% } %>
			</table>
			<div class="button">
				<a href="qaa_delete_process.jsp?qa_code=<%= vo.getQa_code() %>"><button type="button" class="button_b">삭제</button></a>
				<a href="cs_qaa_list.jsp"><button type="button" class="button_b">목록</button></a>
			</div>
		</div>
		
	</div>
</body>
</html>
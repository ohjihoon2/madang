<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	QandA_Service service = new QandA_Service();
	ArrayList<QandA_VO> list = service.getQandAListAdmin();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 페이징처리 -->
<script src=http://localhost:9090/js/am-pagination.js></script>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/am-pagination.css">
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








div#admin_memberlist section div button{
	background-color:rgb(5,135,94);
	border:none;
	width:150px;
	height:30px;
	color:white;
}

div#admin_memberlist section table{
	width:80%;
	border-collapse: collapse;
	margin-top:80px;
}
div#admin_memberlist section table th{
	background-color:rgb(195,195,195);
	border:1px solid lightgray;
	height:40px;
}
div#admin_memberlist section table td{
	text-align:center;
	border:1px solid lightgray;
	height:40px;
}


</style>
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_memberlist" class="admin_content">
	<h1>1:1 상 담 관 리</h1>	
	<section>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>질문일자</th>
				<th>답변여부</th>
				<th>답변일자</th>
			</tr>
			<%for(QandA_VO vo : list){ %>
				<tr>
					<td><%=vo.getRownum() %></td>
					<td><a href="admin_QandA_detail.jsp?qa_code=<%=vo.getQa_code()%>"><%=vo.getQa_title() %></a></td>
					<td><%=vo.getId() %></td>
					<td><%=vo.getQa_date() %></td>
					<%if(vo.getQa_adate()!=null && vo.getQa_adate()!=""){ %>
						<td>Y</td>
						<td><%=vo.getQa_adate()%></td>
					<%}else{ %>
						<td> </td>
						<td> </td>
					<%} %>
				</tr>
					
			<%} %>
			<tr>
				<td colspan="6">이전   1 2 3 4   다음</td>
			</tr>
		</table>
	</section>
</div>
</body>
</html>
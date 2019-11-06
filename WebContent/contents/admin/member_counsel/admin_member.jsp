<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	General_mem_Service service = new General_mem_Service();
	ArrayList<General_mem_VO> list = service.getMemberListAdmin();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
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
	<h1>일 반 회 원 관 리</h1>	
	<section>
		<table>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>연락처</th>
				<th>이메일</th>
				<th>가입일자</th>
			</tr>
			<%for(General_mem_VO vo : list){ %>
				<tr>
					<td><%=vo.getRno() %></td>
					<td><a href="admin_member_detail.jsp?id=<%=vo.getId()%>"><%=vo.getId() %></a></td>
					<td><%=vo.getName() %></td>
					<td><%=vo.getPhone1() %> - <%=vo.getPhone2() %> - <%=vo.getPhone3() %></td>
					<td><%=vo.getEmail_id() %>@<%=vo.getEmail_addr() %></td>
					<td><%=vo.getJoindate() %></td>
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
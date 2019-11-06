<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	Rental_Service service = new Rental_Service();
	Rental_VO vo = service.getMemberListAdmin();
%>
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








div#admin_rental section div button{
	background-color:rgb(5,135,94);
	border:none;
	width:150px;
	height:30px;
	color:white;
}

div#admin_rental section table{
	width:80%;
	border-collapse: collapse;
	margin-top:80px;
}
div#admin_rental section table th{
	background-color:rgb(195,195,195);
	border:1px solid lightgray;
	height:40px;
}
div#admin_rental section table td{
	text-align:center;
	border:1px solid lightgray;
	height:40px;
}


</style>
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_rental" class="admin_content">
	<h1>대 관 관 리</h1>	
	<section>
		<table>
			<tr>
				<th>번호</th>
				<th>분류</th>
				<th>제목</th>
				<th>오픈시각</th>
				<th>시간</th>
				<th>신청자</th>
				<th>상태</th>
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
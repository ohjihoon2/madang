<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	String id = request.getParameter("id");
	String rpage = request.getParameter("page");
	Group_mem_Service service = new Group_mem_Service();
	Group_mem_VO vo = service.getMembergpContentsAdmin(id);
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



div#admin_member_detail_group section h3{
	margin:30px 0px 10px 0px;
}


div#admin_member_detail_group section table{
	width:70%;
	border-collapse: collapse;
}

div#admin_member_detail_group section table th{
	background-color:rgb(195,195,195);
	border:1px solid gray;
	width:150px;
	height:40px;
}
div#admin_member_detail_group section:nth-child(3) > table td{
	width:35%;
	padding-left:10px;
	border:1px solid gray;
}
div#admin_member_detail_group section:nth-child(3) > table tr:nth-child(2) > th:first-child,
div#admin_member_detail_group section:nth-child(3) > table tr:nth-child(5) > th:first-child{
	width:30px;
	padding:0px 2px 0px 2px;
}

div#admin_member_detail_group > article {
	width:70%;
	text-align :right;
	margin-top:30px;
}
div#admin_member_detail_group > article button{
	width:100px;
	height:35px;
	border:none;
	background-color:rgb(5,135,94);
	color:white;
}
</style>
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_member_detail_group" class="admin_content">
	<h1>회 원 관 리<h4>대관자</h4></h1>	
	<section>
		<h3>회원정보 </h3>
		<table>
			<tr>
				<tr>
					<th rowspan="3">담 당 자</th>
					<th>아이디</th>
					<td><%=vo.getId() %></td>
					<th>가입일자</th>
					<td><%=vo.getJoindate() %></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><%=vo.getName()%></td>
					<th>이메일</th>
					<td><%=vo.getEmail_id()%>@<%=vo.getEmail_addr()%></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><%=vo.getPhone1()%> - <%=vo.getPhone2()%> - <%=vo.getPhone3()%></td>
					<th>fax</th>
					<td><%=vo.getFax1()%> - <%=vo.getFax2()%> - <%=vo.getFax3()%></td>
				</tr>
				<tr>
					<th rowspan="4">업 체</th>
					<th>회사명</th>
					<td><%=vo.getCompany() %></td>
					<th>대표자</th>
					<td><%=vo.getC_name() %></td>
				</tr>
				<tr>
					<th>사업자번호</th>
					<td><%=vo.getC_number() %></td>
					<th>대표번호</th>
					<td><%=vo.getC_phone1() %> - <%=vo.getC_phone2() %> - <%=vo.getC_phone3() %></td>
				</tr>
				<tr>
					<th>회사 우편번호</th>
					<td colspan="3"><%=vo.getC_post_num()%></td>
				</tr>
				<tr>
					<th>회사 주소</th>
					<td colspan="3"><%=vo.getC_addr()%> <%=vo.getC_addr_d()%></td>
				</tr>
			</tr>
		</table>
	</section>
	<article>
			<a href="admin_member_group.jsp?page=<%=rpage%>"><button type="button">목록으로</button></a>
	</article>
</body>
</html>
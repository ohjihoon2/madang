<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	String id = request.getParameter("id");
	String rpage = request.getParameter("page");
	General_mem_Service service = new General_mem_Service();
	Reservation_Service rservice = new Reservation_Service();
	General_mem_VO vo = service.getMemberContentsAdmin(id);
	ArrayList<ReservationVO> rlist = rservice.AdminPerMemList(id);
	
	
	ArrayList<ConcertTicketVO> concert = new ArrayList<ConcertTicketVO>();
	
	
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



div#admin_notice_contents section h3{
	margin:30px 0px 10px 0px;
}


div#admin_notice_contents section table{
	width:70%;
	border-collapse: collapse;
	margin-bott
}

div#admin_notice_contents section table th{
	background-color:rgb(195,195,195);
	border:1px solid gray;
	width:150px;
	height:40px;
}
div#admin_notice_contents section table tr td{
	padding-left:10px;
	border:1px solid gray;
}


div#admin_notice_contents section:nth-child(3) table.gernalmem_reserve_List tr th:nth-child(4){
	width:65%;
}
div#admin_notice_contents article {
	margin-top:50px;
	width:70%;
	text-align :right;
}
div#admin_notice_contents article button{
	width:100px;
	height:35px;
	border:none;
}

div#admin_notice_contents > article {
	width:70%;
	text-align :right;
	margin-top:30px;
}
div#admin_notice_contents > article button{
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
<div id="admin_notice_contents" class="admin_content">
	<h1>회 원 관 리</h1>	
	<section>
		<h3>회원정보</h3>
		<table>
			<tr>
				<tr>
					<th>아이디</th>
					<td><%=vo.getId() %></td>
					<th>가입일자</th>
					<td><%=vo.getJoindate() %></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><%=vo.getName()%></td>
					<th>성별</th>
					<td><%=vo.getGender()%></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><%=vo.getEmail_id()%>@<%=vo.getEmail_addr()%></td>
					<th>생년월일</th>
					<td><%=vo.getBirth()%></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><%=vo.getPhone1()%> - <%=vo.getPhone2()%> - <%=vo.getPhone3()%></td>
					<th>통신사</th>
					<td><%=vo.getP_comp()%></td>
				</tr>
				<tr>
					<th>우편번호</th>
					<td colspan="3"><%=vo.getPost_num()%></td>
				</tr>
				<tr>
					<th>주소</th>
					<td colspan="3"><%=vo.getAddr()%> <%=vo.getAddr_d()%></td>
				</tr>
				<tr>
					<th>이메일수신여부</th>
					<td><%=vo.getAccept_email()%></td>
					<th>sms수신여부</th>
					<td><%=vo.getAccept_sms()%></td>
				</tr>
			</tr>
		</table>
	</section>
	<section>
		<h3>예매내역</h3>
		<table class="gernalmem_reserve_List">
			<tr>
				<th>번호</th>
				<th>관람종류</th>
				<th>예매코드</th>
				<th>제목</th>
				<th>예매일</th>
			</tr>
			<%for(ReservationVO rvo : rlist){ %>
				<tr>
					<td><%=rvo.getRno() %></td>
					<% if(rvo.getTicket_code().substring(0, 2).equals("tc")){ %>
						<td>공연</td>
					<%}else{ %>
						<td>전시</td>
					<%} %>
					<td><%=rvo.getTicket_code() %></td>
					<td><%=rvo.getTitle() %>  (<%=rvo.getCode() %>)</td>
					<td><%=rvo.getTime() %></td>
				</tr>
			<%} %>
		</table>
	</section>
		<article>
			<a href="admin_member.jsp?page=<%=rpage%>"><button type="button">목록으로</button></a>
		</article>
</div>
</body>
</html>
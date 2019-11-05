<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	EventService service = new EventService();
	ArrayList<EventVO> list = service.getResultListAdmin();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/dycgv/js/jquery-3.4.1.min.js"></script>
<style>
*{
	font-family:"나눔스퀘어라운드";
	margin:0px;
	padding:0px;
}

aside.amdmin_left ul li:nth-child(8){
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










div#admin_notice section div{
	margin:30px 0px 20px 0px;
	text-align:right;
	width:80%;
}

div#admin_notice section div button{
	background-color:rgb(5,135,94);
	border:none;
	width:150px;
	height:30px;
	color:white;
}

div#admin_notice section table{
	width:80%;
	border-collapse: collapse;
}
div#admin_notice section table th{
	background-color:rgb(195,195,195);
	height:40px;
}
div#admin_notice section table tr td{
	text-align:center;
	border:1px solid lightgray;
	height:40px;
}

div#admin_notice section table tr:last-child td{
	border-bottom:hidden;
	border-right:hidden;
	border-left:hidden;
	height:100px;
}
div#admin_notice section table td:first-child{
	padding-left:20px;
	border:1px solid lightgray;
	width:60%;
	text-align:left;
}
div#admin_notice section table td:first-child a{
	padding: 0px 10px 0px 6px;
	text-decoration: none;
	color: gray;
}

div#admin_notice section table td:first-child a:hover {
	color: #282828;
}
div#admin_notice section table td:first-child span{
	border:1px solid green;
	margin-left:20px;
	
}

</style>

</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_notice" class="admin_content">
	<h1>이 벤 트</h1>	
	<section>
		<div>
			<a href="admin_event_write.jsp"><button type="button">작성하기</button></a>
		</div>
		<table>
			<tr>
				<th>제목</th>
				<th>기간</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<%for(EventVO vo : list){ %>
				<tr>
					<td><a href="admin_event_contents.jsp?ev_code=<%=vo.getEv_code()%>"><%=vo.getEv_title()%></a><span><%=vo.getEv_status() %></span></td>
					<td><%=vo.getEv_sdate() %> ~ <%=vo.getEv_edate() %></td>
					<td><%=vo.getEv_date() %></td>
					<td><%=vo.getEv_hits() %></td>
				</tr>	
			<%} %>
			<tr>
				<td colspan="3">이전   1 2 3 4   다음</td>
			</tr>
		</table>
	</section>
</div>
</body>
</html>
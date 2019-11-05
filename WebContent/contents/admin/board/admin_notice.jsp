<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	height:500px; 
	border-collapse: collapse;
}
div#admin_notice section table th{
	background-color:rgb(195,195,195);
}
div#admin_notice section table td:nth-child(2),
div#admin_notice section table td:nth-child(3),
div#admin_notice section table tr:last-child td{
	text-align:center;
	border:1px solid lightgray;
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
	width:70%;
}


</style>
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_notice" class="admin_content">
	<h1>공 지 사 항</h1>	
	<section>
		<div>
			<a href="admin_notice_write.jsp"><button type="button">작성하기</button></a>
		</div>
		<table>
			<tr>
				<th>제목</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<%for(int i=0; i<10;i++){ %>
				<tr>
					<td><a href="admin_notice_contents.jsp">무료공지</a></td>
					<td>20190906</td>
					<td>3</td>
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
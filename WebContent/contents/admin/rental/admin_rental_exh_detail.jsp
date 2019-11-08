<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	String rental_code = request.getParameter("rental_code");
	String rpage = request.getParameter("page");
	Rental_Service service = new Rental_Service();
	Rental_VO rvo = service.getRentalContents_exh_Admin(rental_code);
	Group_mem_VO gvo = service.getRentalApplicantInfoAdmin(rvo.getR_id());
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




div#admin_rental_exh_d section table{
	width:70%;
	border-collapse: collapse;
	margin-top:40px;
}

div#admin_rental_exh_d section table th{
	background-color:rgb(195,195,195);
	border:1px solid gray;
	width:150px;
	height:40px;
}
div#admin_rental_exh_d section > table td{
	width:35%;
	padding-left:10px;
	border:1px solid gray;
}
div#admin_rental_exh_d section > table button#admin_rentalexh_d_cancel_btn,
div#admin_rental_exh_d section > table button#admin_rentalexh_d_accept_btn{
	background-color:rgb(5,135,94);
	border:none;
	width:80px;
	height:30px;
	margin-left:10px;
	color:white;
}


div#admin_rental_exh_d > article {
	width:70%;
	text-align :right;
	margin-top:30px;
}
div#admin_rental_exh_d > article button{
	width:100px;
	height:35px;
	border:none;
	background-color:rgb(5,135,94);
	color:white;
}
</style>
<script>
$(document).ready(function(){
	$('#r_con_file_dwn').click(function(e) {
		e.preventDefault();
	    window.open ('http://localhost:9090/upload/rental/<%=rvo.getR_sfile()%>');
	});//파일클릭 다운로드
	
	$('button#admin_rentalexh_d_accept_btn').click(function(){
		var ask = confirm("해당 대관신청을 승인하겠습니까?");
		if(ask==1){
			$.ajax({
				url:"admin_rental_proce.jsp?call=exh_accept&rental_code=<%=rental_code%>",
				success:function(result){
					alert(result);
					location.reload();
				}//success
			});//ajax
		}
	});//신청완료 클릭시 완료진행
	
	$('button#admin_rentalexh_d_cancel_btn').click(function(){
		var ask = confirm("해당 대관신청을 취소하겠습니까?");
		if(ask==1){
			$.ajax({
				url:"admin_rental_proce.jsp?call=exh_cancel&rental_code=<%=rental_code%>",
				success:function(result){
					alert(result);
					location.reload();
				}//success
			});//ajax
		}
	});//취소신청 클릭시 취소진행
	
	
});
</script>
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_rental_exh_d" class="admin_content">
	<h1>전 시 대 관</h1>	
	<section>
		<table>
			<tr>
				<tr>
					<th>제목</th>
					<td colspan="3"><%=rvo.getR_title()%></td>
				</tr>
				<tr>
					<th>신청일자</th>
					<td colspan="3"><%=rvo.getR_date() %></td>
				</tr>
				<tr>
					<th>대관코드</th>
					<td><%=rental_code%></td>
					<th>대관상태</th>
					<td>
						<%=rvo.getR_status() %>
						<%if(rvo.getR_status().equals("신청중")){ %>
							<button type="button" id="admin_rentalexh_d_accept_btn">신청완료</button>
						<%}else if(rvo.getR_status().equals("취소")){ %>
							<button type="button" id="admin_rentalexh_d_cancel_btn">취소완료</button>
						<%} %>
					</td>
				</tr>
				<tr>
					<th>대관유형</th>
					<td>전시</td>
					<th>대관장소</th>
					<td><%=rvo.getR_place()%></td>
				</tr>
				<tr>
					<th>대관 시작일</th>
					<td><%=rvo.getR_sdate() %></td>
					<th>대관 종료일</th>
					<td><%=rvo.getR_edate() %></td>
				</tr>
				<tr>
					<th>전시 시작시각</th>
					<td colspan="3"><%=rvo.getR_opentime()%></td>
				</tr>
				<tr>
					<th>전시시간</th>
					<td colspan="3"><%=rvo.getR_time()%></td>
				</tr>
			</table>
			<table>
				<tr>
					<th>신청 담당자</th>
					<td><%=gvo.getName()%> (<a href="http://localhost:9090/contents/admin/member_counsel/admin_member_detail_group.jsp?id=<%=rvo.getR_id() %>"><%=rvo.getR_id() %></a>)</td>
					<th>담당자 연락처</th>
					<td><%=gvo.getPhone1()%>-<%=gvo.getPhone2()%>-<%=gvo.getPhone3()%></td>
				</tr>
				<tr>	
					<th>신청업체</th>
					<td colspan="3"><%=gvo.getCompany()%></td>
				</tr>
				<tr>
					<th>신청서</th>
					<%if(rvo.getR_file()!=null && rvo.getR_file()!="") {%>
						<td colspan="3"><a href="#" id="r_con_file_dwn"><%=rvo.getR_file()%></a></td>
					<%}else{ %>
						<td colspan="3"> </td>
					<%} %>
				</tr>
			</tr>
		</table>
	</section>
	<article>
			<% if(rpage==null || rpage.equals(null)){ %>
				<a href="admin_rental_exh.jsp"><button type="button">목록으로</button></a>
			<%}else{ %>
				<a href="admin_rental_exh.jsp?page=<%=rpage%>"><button type="button">목록으로</button></a>
			<%} %>
	</article>
</body>
</html>
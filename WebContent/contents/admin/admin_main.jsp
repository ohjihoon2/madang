<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	ConcertService concert_service = new ConcertService();
	ArrayList<ConcertVO> concert_list = concert_service.getListAdminMain(); 
	int concert = concert_service.getAdminMainCount();

 	ExhibitionService exhibition_service = new ExhibitionService();
	ArrayList<ExhibitionVO> exhibition_list = exhibition_service.getListAdminMain(); 
	int exhibition = exhibition_service.getAdminMainCount();

	NoticeService notice_service = new NoticeService();
	ArrayList<NoticeVO> notice_list = notice_service.getListAdminMain();
	int notice = notice_service.getAdminMainCount();
	
	QandA_Service qna_service = new QandA_Service();
	ArrayList<QandA_VO> qna_list = qna_service.getListAdminMain();
	int qna = qna_service.getAdminMainCount();
	
	Rental_Service rental_service = new Rental_Service();
	ArrayList<Rental_VO> rental_list = rental_service.getListAdminMain();
	int rental = rental_service.getAdminMainCount();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<style>

*{
	/*border:1px solid red;*/
	font-family:"나눔스퀘어라운드";
	margin:0px;
	padding:0px;
}


div.admin_content{
	width:70%;
	height:1400px;
	float:left;
	padding:130px 0px 0px 100px;
}



div#admin_main section{
		height:300px;
	}


div#admin_main section >h5{
	margin-top:20px;
	width:80%;
	text-align:right;
}

div#admin_main section >article h5{
	margin-top:20px;
	width:100%;
	text-align:right;
}

div#admin_main section:first-child article{
		display : inline-block;
		width:450px;
		height:250px;
		margin-right:120px;
		
	}
	
div#admin_main section:first-child article ul {
		border:1px solid green;
		list-style-position: inside;
		padding:15px 0px 0px 20px;
		width:450px;
		height:200px;
		overflow:auto;
		border-radius:20px;
	}
	
div#admin_main section:first-child article ul li span:first-child{
	width:95%;
	height:18px;
	overflow:hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}	
	
	div#admin_main section:first-child article ul li{
		margin:5px 0px 15px 0px;
	}
	
	
/*게시글 미리보기 테이블*/
div#admin_main section > a h5{
	text-align:right;
	width:80%;
	margin:10px 0px 10px 0px;
}

div#admin_main section > table{
		width:80%;
		height:150px;
		border-collapse: collapse;
	}
div#admin_main section > table th{
		background-color:lightgray;
		border-bottom:1px solid gray;
		border-right:1px solid gray;
		text-align:center;
	}
div#admin_main section > table td{
	border-bottom:1px solid lightgray;
	border-right:1px solid lightgray;
	text-align:center;
	padding:0px 5px 0px 5px;
}
div#admin_main section > table td:last-child,
div#admin_main section > table th:last-child{
	border-right:none;
}
div#admin_main section > table td:first-child,
div#admin_main section:nth-child(2) > table td:last-child{
	width:50px;
}
div#admin_main section > table td:nth-child(2){
	text-align:left;
	width:600px;
}

div#admin_main section a{
	padding: 0px 10px 0px 6px;
	text-decoration: none;
	color: gray;
}

div#admin_main section a:hover {
	color: #282828;
}
	
</style>

</head>
<body>
<jsp:include page="admin_left_nav.jsp"/>
	<div id="admin_main" class="admin_content">
		<section>
		 	<article>
		 		<h2>진행중인 공연 </h2>
		 		<h5>더보기</h5>
				<ul>
		 		<%if(concert!=0){ %>
		 			<%for(int i=0; i<concert; i++){%> 
		 				<li>
			 				<span><%=concert_list.get(i).getC_title()%></span><br><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<%=concert_list.get(i).getC_sdate()%>~<%=concert_list.get(i).getC_edate()%>)</span>
			 			</li>
		 			<%} %>
		 		<%}else{ %>
		 			<li>진행중인 공연이 없습니다.</li>
		 		<%} %>
		 		</ul> 
		 	</article>
		 			 	<article>
		 		
		 		<h2>진행중인 전시 </h2>
		 		<h5>더보기</h5>
		 		<ul>
		 		<%if(exhibition!=0){ %>
		 			<%for(int i=0; i<exhibition; i++){%> 
		 				<li>
			 				<span><%=exhibition_list.get(i).getE_title()%></span><br><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<%=exhibition_list.get(i).getE_sdate()%>~<%=exhibition_list.get(i).getE_edate()%>)</span>
			 			</li>
		 			<%} %>
		 		<%}else{ %>
		 			<li>진행중인 전시가 없습니다.</li>
		 		<%} %>
		 		</ul> 
		 	</article>
		</section>
		<section>
	 		<h2>공지사항</h2>
	 		<a href="http://localhost:9090/contents/admin/board/admin_notice.jsp"><h5>더보기</h5></a>
			<table>
	 			<tr>
	 				<th>번호</th>
	 				<th>제목</th>
	 				<th>작성일자</th>
	 				<th>조회수</th>
	 			</tr>
	 			<%if(notice!=0){
	 					System.out.println(notice);%>
		 			<%for(int i=0 ; i<notice ; i++){ %>
		 				<tr>
		 					<td><%=notice_list.get(i).getRno()%></td>
		 					<td><a href="http://localhost:9090/contents/admin/board/admin_notice_contents.jsp?nt_code=<%=notice_list.get(i).getNt_code()%>">
		 						<%=notice_list.get(i).getNt_title()%></a>
		 					</td>
		 					<td><%=notice_list.get(i).getNt_date() %></td>
		 					<td><%=notice_list.get(i).getNt_hits() %></td>
		 				</tr>
					<%}//for%>
				<%}else{ %>
					<tr>
						<td colspan="4">공지사항이 없습니다.</td>
					</tr>
				<%} %>
	 		</table>
	 	</section>
	 	<section>
	 		<h2>1:1상담</h2>
	 		<a href="http://localhost:9090/contents/admin/member_counsel/admin_QandA.jsp"><h5>더보기</h5></a>
	 		<table>
	 			<tr>
	 				<th>번호</th>
	 				<th>제목</th>
	 				<th>질문일자</th>
	 				<th>답변일자</th>
	 			</tr>
	 			<%if(qna !=0){ %>
	 			<%for(int i=0 ; i<qna ; i++){ %>
	 				<tr>
	 					<td><%=qna_list.get(i).getRownum() %></td>
	 					<td><a href="http://localhost:9090/contents/admin/member_counsel/admin_QandA_detail.jsp?qa_code=<%=qna_list.get(i).getQa_code()%>"><%=qna_list.get(i).getQa_title() %></a></td>
	 					<td><%=qna_list.get(i).getQa_date() %></td>
	 					<td><%=qna_list.get(i).getQa_adate() %></td>
	 				</tr>
	 			<% }//for%>
	 			<%}else{ %>
					<tr>
						<td colspan="4">상담이 없습니다.</td>
					</tr>
				<%} %>
	 		</table>
	 	</section>
	 	<section>
	 		<h2>대관신청</h2>
	 		<a href="http://localhost:9090/contents/admin/rental/admin_rental_con.jsp"><h5>더보기</h5></a>
	 		<table>
	 			<tr>
	 				<th>번호</th>
	 				<th>타이틀</th>
	 				<th>종류</th>
	 				<th>신청일</th>
	 				<th>상태</th>
	 			</tr>
	 			<%if(rental!=0){ %>
		 			<%for(int i=0 ; i<rental ; i++){ %>
		 				<tr>
		 					<td><%=rental_list.get(i).getRno() %></td>
		 					<%if(rental_list.get(i).getR_case().equals("공연")){ %>
		 						<td>
		 							<a href="http://localhost:9090/contents/admin/rental/admin_rental_con_detail.jsp?rental_code=<%=rental_list.get(i).getRental_code()%>">
		 								<%=rental_list.get(i).getR_title() %>
		 							</a>
		 						</td>`
		 					<%}else if(rental_list.get(i).getR_case().equals("전시")){ %>
		 						<td><a href="http://localhost:9090/contents/admin/rental/admin_rental_exh_detail.jsp?rental_code=<%=rental_list.get(i).getRental_code()%>">
		 							<%=rental_list.get(i).getR_title() %>
		 							</a>
		 						</td>
		 					<%} %>
		 					<td><%=rental_list.get(i).getR_case() %></td>
		 					<td><%=rental_list.get(i).getR_date() %></td>
		 					<td><%=rental_list.get(i).getR_status() %></td>
		 				</tr>
		 			<%}//for%>
	 			<%}else{ %>
					<tr>
						<td colspan="5">대관신청이 없습니다.</td>
					</tr>
				<%} %>
	 		</table>
	 	</section>
	</div>
</div>
</body>
</html>
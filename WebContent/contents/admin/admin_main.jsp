<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	NoticeService notice_service = new NoticeService();
	ArrayList<NoticeVO> notice_list = notice_service.getListAdminMain();
	
	QandA_Service qna_service = new QandA_Service();
	ArrayList<QandA_VO> qna_list = qna_service.getListAdminMain();
	
	Rental_Service rental_service = new Rental_Service();
	ArrayList<Rental_VO> rental_list = rental_service.getListAdminMain();
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
		margin-right:40px;
		
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
div#admin_main section table{
		width:80%;
		height:150px;
		border-collapse: collapse;
	}
div#admin_main section table th{
		width:60%;
		background-color:lightgray;
		border-bottom:1px solid gray;
	}

div#admin_main section table th:nth-child(2),
div#admin_main section table th:last-child{
		width:20%;
		background-color:lightgray;
		border-bottom:1px solid gray;
		border-left:1px solid gray;
	}
		
div#admin_main section table td:first-child{
		border-bottom:1px solid gray;
		padding-left:10px;
	}
div#admin_main section table td:last-child,
div#admin_main section table td:nth-child(2){
		border-bottom:1px solid gray;
		border-left:1px solid gray;
		text-align:center;
	}
	
</style>

</head>
<body>
<jsp:include page="admin_left_nav.jsp"/>
	<div id="admin_main" class="admin_content">
		<section>
		 	<article>
		 		
		 		<h2>진행중인 전시 </h2>
		 		<h5>더보기</h5>
		 		<ul>
		 			<li>
		 				<span>자바란 무엇인가 자바자바 잇럽미 자바자바 잇럽미!!!</span><br><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(20190901~20190810)</span>
		 			</li>
		 			<li>
		 				<span>자바란 무엇인가</span><br><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(20190901~20190810)</span>
		 			</li>
		 		</ul> 
		 	</article>
		 	<article>
		 		<h2>진행중인 공연 </h2>
		 		<h5>더보기</h5>
		 		<ul>
		 			<li>
		 				어 컵- 어 컵 어컵!!! (20190901~20190810)
		 			</li>
		 			<li>
		 				공연장에서 실시하는 전시회 (20190901~20190810)
		 			</li>
		 		</ul> 
		 	</article>
		</section>
		<section>
	 		<h2>공지사항</h2>
	 		<a href="http://localhost:9090/contents/admin/board/admin_notice.jsp"><h5>더보기</h5></a>
	 		<table>
	 			<tr>
	 				<th>제목</th>
	 				<th>작성일</th>
	 				<th>조회수</th>
	 			</tr>
	 			<tr>
	 				<td>오늘 무료공연에 대한 공지사항</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>오늘 무료공연에 대한 공지사항</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>오늘 무료공연에 대한 공지사항</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 		</table>
	 	</section>
	 	<section>
	 		<h2>1:1상담</h2>
	 		<a href="http://localhost:9090/contents/admin/member_counsel/admin_QandA.jsp"><h5>더보기</h5></a>
	 		<table>
	 			<tr>
	 				<th>제목</th>
	 				<th>작성일</th>
	 			</tr>
	 			<tr>
	 				<td>환불안하세요?!!??</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>환불안하세요?!!??</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>환불안하세요?!!??</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 		</table>
	 	</section>
	 	<section>
	 		<h2>대관신청</h2>
	 		<a href="#"><h5>더보기</h5></a>
	 		<table>
	 			<tr>
	 				<th>제목</th>
	 				<th>장소</th>
	 				<th>신청일</th>
	 			</tr>
	 			<tr>
	 				<td>나때는 말이야 이런 파티는 생각도 못했어</td>
	 				<td>베토벤 홀</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>요즘 세상 참 좋아졌다?</td>
	 				<td>베토벤 홀</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 			<tr>
	 				<td>환불안하세요?!!??</td>
	 				<td>베토벤 홀</td>
	 				<td>2019-10-20</td>
	 			</tr>
	 		</table>
	 	</section>
	</div>
</div>
</body>
</html>
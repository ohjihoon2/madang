<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	String qa_code = request.getParameter("qa_code");
	String rpage = request.getParameter("page");

	QandA_Service service = new QandA_Service();
	QandA_VO vo = service.getQnAContentsAdmin(qa_code);
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



div#admin_QnA_detail section table{
	width:80%;
	border-collapse: collapse;
	margin-top:50px;
}



div#admin_QnA_detail section table:nth-child(2) td{
	width:85%;
}

div#admin_QnA_detail section> table:nth-child(2) tr:nth-child(2) td div,
div#admin_QnA_detail section> table:nth-child(1) tr:nth-child(4) td div{
	height:250px;
	overflow:auto;
	box-sizing:border-box;
	padding:3px;
}


div#admin_QnA_detail section>table th{
	background-color:rgb(195,195,195);
	border:1px solid gray;
	height:40px;
}

div#admin_QnA_detail section table td{
	width:35%;
	padding-left:10px;
	border:1px solid gray;
}



/*버튼*/
div#admin_QnA_detail > article {
	width:80%;
	text-align :right;
	margin-top:30px;
}
div#admin_QnA_detail > article button{
	width:100px;
	height:35px;
	border:none;

}
div#admin_QnA_detail > article> button#adboard_qna_reply{
	background-color:rgb(5,135,94);
	color:white;
}
</style>
<script>
	$(document).ready(function(){
		if(<%=vo.getQa_adate()%>!=null){
			$("button#adboard_qna_reply").css("display","none");
		}//수정하기 감추기
		$("button#adcoun_qna_reply_btn").click(function(){
			location.href="admin_QandA_reply.jsp?qa_code=<%=qa_code%>";
		});//수정하기 클릭
		
		 $('#qa_file_dwn').click(function(e){
				e.preventDefault();
			    window.open('http://localhost:9090/upload/q_and_a/<%=vo.getQa_sfile()%>');
			});//파일클릭 다운로드
	});
</script>
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_QnA_detail" class="admin_content">
	<h1>1:1 상 담 관 리</h1>	
	<section>
		<table>
				<tr>
					<th>제목</th>
					<td><%=vo.getQa_title() %></td>
					<th>코드</th>
					<td><%=qa_code %></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><a href="http://localhost:9090/contents/admin/member_counsel/admin_member_detail.jsp?id=<%=vo.getId()%>"><%=vo.getId()%></a></td>
					<th>질문일자</th>
					<td><%=vo.getQa_date()%></td>
				</tr>
				<tr>
					<th colspan="4">질의내용</th>
				</tr>
				<tr>
					<td colspan="4">
						<div><%=vo.getQa_contents()%></div>
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<%if(vo.getQa_file()!=null && vo.getQa_file()!=""){ %>
						<td colspan="3"><a href="#" id="qa_file_dwn"><%=vo.getQa_file()%></a></td>
					<%}else{ %>
						<td colspan="3"> </td>
					<%} %>
				</tr>
		</table>
		<table>
				<tr>
					<th colspan="2">답변내용</th>
				</tr>
				<tr>
					<%if(vo.getQa_acontents()!=null && vo.getQa_acontents()!=""){ %>
						<td colspan="2"><div><%=vo.getQa_acontents() %></div></td>
					<%}else{ %>
						<td colspan="2" ><div>  </div></td>
					<%} %>
				</tr>
				<tr>
					<th>답변일자</th>
					<%if(vo.getQa_adate()!=null && vo.getQa_adate()!=""){ %>
						<td><%=vo.getQa_adate() %></td>
					<%}else{ %>
						<td> </td>
					<%} %>					
				</tr>
		</table>
	</section>
	<article>
			<button type="button" id="adcoun_qna_reply_btn">답변하기</button>			
			<% if(rpage==null || rpage.equals(null)){ %>
				<a href="admin_QandA.jsp"><button type="button">목록으로</button></a>
			<%}else{ %>
				<a href="admin_QandA.jsp?page=<%=rpage%>"><button type="button">목록으로</button></a>
			<%} %>
	</article>
</body>
</html>
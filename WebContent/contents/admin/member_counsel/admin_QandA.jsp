<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	QandA_Service service = new QandA_Service();
	String rpage = request.getParameter("page"); //))page:페이지 위치 (1페이지, 2페이지...)


	//페이징 처리 - startCount, endCount 구하기
	int startCount = 0;
	int endCount = 0;
	int pageSize = 5;	//한페이지당 게시물 수
	int reqPage = 1;	//요청페이지 	
	int pageCount = 1;	//전체 페이지 수                        //))처음초기화작업인가봄
	int dbCount = service.execTotalCount();	//DB에서 가져온 전체 행수
	
	//총 페이지 수 계산 ((페이지 나누기 위해서)) 전체페이지의 수: db에서 가져온 전체개수/pageSize))
	if(dbCount % pageSize == 0){
		pageCount = dbCount/pageSize;
	}else{ //))살짝 넘치는 양이면 페이지 한장 더 추가 (6개의 게시글, pageSize=5 => 페이지 한장 더 추가해야 함
		pageCount = dbCount/pageSize+1;
	}

	//요청 페이지 계산
	if(rpage != null){ 
		reqPage = Integer.parseInt(rpage);//넘어오는 것이 String
		startCount = (reqPage-1) * pageSize+1; 
 		endCount = reqPage *pageSize;
	}else{ 
		startCount = 1;
		endCount = pageSize;
	}

	ArrayList<QandA_VO> list = service.getQandAListAdmin(startCount, endCount);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 페이징처리 -->
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/am-pagination.css">
<script src=http://localhost:9090/js/jquery-3.4.1.min.js></script>
<script src=http://localhost:9090/js/am-pagination.js></script>
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








div#admin_qna section div button{
	background-color:rgb(5,135,94);
	border:none;
	width:150px;
	height:30px;
	color:white;
}

div#admin_qna section table{
	width:80%;
	border-collapse: collapse;
	margin-top:80px;
}
div#admin_qna section table th{
	background-color:rgb(195,195,195);
	border:1px solid lightgray;
	height:40px;
}
div#admin_qna section table td{
	text-align:center;
	border:1px solid lightgray;
	height:40px;
}


</style>
<script>
	$(document).ready(function(){		
		var pager = jQuery('#ampaginationsm').pagination({
			
		    maxSize: 7,	    		// max page size
		    totals: <%=dbCount%>,	// total pages	
		    page: <%=rpage%>,		// initial page		
		    pageSize: <%=pageSize%>,			// max number items per page
		
		    // custom labels		
		    lastText: '&raquo;&raquo;', 		
		    firstText: '&laquo;&laquo;',		
		    prevText: '&laquo;',		
		    nextText: '&raquo;',
				     
		    btnSize:'sm'	// 'sm'  or 'lg'		
		});
		
		jQuery('#ampaginationsm').on('am.pagination.change',function(e){
			   jQuery('.showlabelsm').text('The selected page no: '+e.page);
	           $(location).attr('href', "http://localhost:9090/dycgv/board/board_list.jsp?page="+e.page);         
	    });
		
	});
</script>
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_qna" class="admin_content">
	<h1>1:1 상 담 관 리</h1>	
	<section>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>질문일자</th>
				<th>답변여부</th>
				<th>답변일자</th>
			</tr>
			<%for(QandA_VO vo : list){ %>
				<tr>
					<td><%=vo.getRownum() %></td>
					<td><a href="admin_QandA_detail.jsp?qa_code=<%=vo.getQa_code()%>"><%=vo.getQa_title() %></a></td>
					<td><%=vo.getId() %></td>
					<td><%=vo.getQa_date() %></td>
					<%if(vo.getQa_adate()!=null && vo.getQa_adate()!=""){ %>
						<td>Y</td>
						<td><%=vo.getQa_adate()%></td>
					<%}else{ %>
						<td> </td>
						<td> </td>
					<%} %>
				</tr>
					
			<%} %>
			<tr>
				<td colspan=6><div id="ampaginationsm"></div></td>
			</tr>
		</table>
	</section>
</div>
</body>
</html>
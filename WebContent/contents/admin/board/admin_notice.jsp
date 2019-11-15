<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	NoticeService service = new NoticeService();
	String rpage = request.getParameter("page"); 
	
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
		
		
	ArrayList<NoticeVO> list = service.getNoticeListAdmin(startCount, endCount);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자-예술의마당</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/am-pagination.css">
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://localhost:9090/js/am-pagination.js"></script>
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










div#admin_notice section div.admin_write_btn{
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
div#admin_notice section table td{
	text-align:center;
	border:1px solid lightgray;
	height:40px;
}
div#admin_notice section table tr:last-child td{
	border-bottom:hidden;
	border-right:hidden;
	border-left:hidden;
}
div#admin_notice section table td:nth-child(2){
	padding-left:20px;
	border:1px solid lightgray;
	width:70%;
	text-align:left;
}
div#admin_notice section table td:nth-child(2) a{
	padding: 0px 10px 0px 6px;
	text-decoration: none;
	color: gray;
}

div#admin_notice section table td:nth-child(2) a:hover {
	color: #282828;
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
	           $(location).attr('href', "http://localhost:9090/contents/admin/board/admin_notice.jsp?page="+e.page);         
	    });
		
	});
</script>
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_notice" class="admin_content">
	<h1>공 지 사 항</h1>	
	<section>
		<div class="admin_write_btn">
			<a href="admin_notice_write.jsp"><button type="button">작성하기</button></a>
		</div>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<%for(NoticeVO vo : list){ %>
				<tr>
					<td><%=vo.getRno() %></td>
					<td><a href="admin_notice_contents.jsp?nt_code=<%=vo.getNt_code()%>&page=<%=reqPage%>"><%=vo.getNt_title() %></a></td>
					<td><%=vo.getNt_date() %></td>
					<td><%=vo.getNt_hits() %></td>
				</tr>	
			<%} %>
			<tr>
				<td colspan=4><div id="ampaginationsm"></div></td>
			</tr>
		</table>
	</section>
</div>
</body>
</html>
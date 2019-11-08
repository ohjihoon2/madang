<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*, com.madang.vo.*,java.util.*" %>
<%
	NewsService service = new NewsService();
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
		
	ArrayList<NewsVO> list = service.getResultNewsListAdmin(startCount, endCount);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://211.63.89.214:9090/css/am-pagination.css">
<script src="http://211.63.89.214:9090/js/jquery-3.4.1.min.js"></script>
<script src="http://211.63.89.214:9090/js/am-pagination.js"></script>
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





div#admin_news section div.admin_write_btn{
	margin:30px 0px 20px 0px;
	text-align:right;
	width:80%;
}

div#admin_news section div button{
	background-color:rgb(5,135,94);
	border:none;
	width:150px;
	height:30px;
	color:white;
}

div#admin_news section table{
	width:80%;
	border-collapse: collapse;
}
div#admin_news section table th{
	background-color:rgb(195,195,195);
	height:40px;
}
div#admin_news section table td{
	height:40px;
	border:1px solid lightgray;
	text-align:center;
}


div#admin_news section table tr:last-child td{
	border-bottom:hidden;
	border-right:hidden;
	border-left:hidden;
}

/*url 내려오는 부분*/
div#admin_news section table td:nth-child(2){
	padding-left:20px;
	border:1px solid lightgray;
	width:70%;
	text-align:left;
}

div#admin_news section table tr td:nth-child(2) >div{
	height:50px;
	padding:5px 2px 5px 20px;
	border:1px solid lightgray;
	border-radius:5px;
	margin:10px 5px 10px 10px;
	display:none;
}

div#admin_news table div.adboard_news_url > div{
	text-align:right;
	height:30px;
}
div#admin_news table div.adboard_news_url > div > button{
	width:80px;
	height:25px;
	border:none;
	background-color:rgb(5,135,94);
	color:white;
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
           $(location).attr('href', "http://211.63.89.214:9090/contents/admin/board/admin_news.jsp?page="+e.page);         
    });
	
	
	$("span.adboard_news").click(function(){
		var fid=$(this).attr("id");
		$("div#"+fid+"_url").slideToggle();
	});//url내려오기
});

</script>
</head>
<body>
<jsp:include page="../admin_left_nav.jsp"/>
<div id="admin_news" class="admin_content">
	<h1>언 론 보 도</h1>	
	<section>
		<div class = "admin_write_btn">
			<a href="admin_news_write.jsp"><button type="button" style="background-color:rgb(5,135,94)">작성하기</button></a>
		</div>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>언론사</th>
				<th>작성일자</th>
			</tr>
			<%for(int i=0; i<list.size();i++){ %>
				<tr>
					<td><%=list.get(i).getRno() %></td>
					<td><span class="adboard_news" id="adboard_news<%=i%>">
							<%=list.get(i).getNw_title() %>
						</span>
						<div  class="adboard_news_url" id="adboard_news<%=i%>_url">
							<a href="<%=list.get(i).getNw_url() %>"><%=list.get(i).getNw_url() %></a>
							<div>
								<a href="admin_news_update.jsp?nw_code=<%=list.get(i).getNw_code()%>&page=<%=reqPage%>">
									<button type="button">수정하기</button>
								</a>
							</div>
						</div>
					</td>
					<td><%=list.get(i).getNw_press() %></td>
					<td><%=list.get(i).getNw_date() %></td>
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
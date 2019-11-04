<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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










div#admin_news section >div{
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
}
div#admin_news section table td:nth-child(2),
div#admin_news section table td:nth-child(3),
div#admin_news section table tr:last-child td{
	text-align:center;
	border:1px solid lightgray;
}
div#admin_news section table tr:last-child td{
	border-bottom:hidden;
	border-right:hidden;
	border-left:hidden;
	height:100px;
}

/*url 내려오는 부분*/
div#admin_news section table td:first-child{
	padding-left:20px;
	border:1px solid lightgray;
	width:70%;
}

div#admin_news section table tr td:first-child >div{
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
		<div>
			<a href="admin_news_write.jsp"><button type="button" style="background-color:rgb(5,135,94)">작성하기</button></a>
		</div>
		<table>
			<tr>
				<th>제목</th>
				<th>언론사</th>
				<th>작성일자</th>
			</tr>
			<%for(int i=0; i<10;i++){ %>
				<tr>
					<td><span class="adboard_news" id="adboard_news<%=i%>">
							언론에서 이러쿵저러쿵 하지만 난 신경쓰지 않아
						</span>
						<div  class="adboard_news_url" id="adboard_news<%=i%>_url">url:http://naver.com
								<div>
									<a href="admin_news_update.jsp"><button type="button">수정하기</button></a>
								</div>
						</div>
					</td>
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
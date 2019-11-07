<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.madang.vo.*, com.madang.service.*"%>
<%@ page import="com.madang.vo.Bookmark_VO, com.madang.service.Bookmark_Service" %>
<%
	String code = request.getParameter("exhibition_code");
	out.write(code);
	ExhibitionService service = new ExhibitionService();
	ExhibitionVO vo = new ExhibitionVO();
	vo =service.getResultExhibition(code);

%>
<% /* 찜 등록/삭제 */
	String id=(String)session.getAttribute("generalID");
	
	//기등록 여부 확인
	boolean b_check=false;
	Bookmark_Service b_service=new Bookmark_Service();
	b_check=b_service.getCheckExhibBmark(vo.getExhibition_code(), id);
	
	String on_off;
	String val;
	
	if(b_check) {
		on_off="on";
		val="on";
	} else {
		on_off="off";
		val="off";
	}
	
	//DB 북마크 코드 연동
	String bmark_code="";
	bmark_code=b_service.getExhibBmarkCode(vo.getExhibition_code(), id);
%>
document.write(<%= bmark_code %>);
document.write(<%= code %>);
document.write(<%= vo.getExhibition_code() %>);
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/mypage.css"/> <!-- 찜하기 버튼 -->
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	
	$("img.bmark_heart").click(function(){
		
		var e_bmark_code=$(this).attr("id");
		//alert("code:"+e_bmark_code);
		
		var bmark_val=$(this).attr("value");
		//alert("value:"+bmark_val);
		
		if(bmark_val=="on") {
			//삭제
			$.ajax({
				url:"../mypage/bookmark_delete_process.jsp?flag=detail&bmark_code="+e_bmark_code,
				success:function(result) {
					//alert(result); 1이면 성공
					if(result!=0) {
						//$("img.bmark_heart").attr("src", "http://localhost:9090/images/bookmark/off.png");
						alert("찜 목록에서 삭제되었습니다.");
					} else {
						alert("실패");
					}
				}
				
			});
			
		} else if (bmark_val=="off") {
			//등록
			$.ajax({
				url:"../mypage/bookmark_add_process.jsp?exhib_code=<%= code %>",
				success:function(result) {
					//alert(result);
					
					//alert(result); 1이면 성공
					if(result!=0) {
						//$("img.bmark_heart").attr("src", "http://localhost:9090/images/bookmark/on.png");
						alert("찜 목록에 등록되었습니다.");
					} else {
						alert("실패");
					}
					
				}
			});
			
		}
		
		location.reload();
	});
	
});
</script>
<style>
	*{
		font-family:"나눔스퀘어라운드";
		padding:0px;
		margin:0px;
	}
	
	
	body{
		margin:auto;
		/* text-align:center; */
	}
	
	/** 타이틀 & 공연날짜 **/
	div#main_title{
		width:500px;
		border-bottom:3px solid rgb(5,135,94);
		border-left:15px solid rgb(5,135,94);
		display:inline-block;
		margin:100px 0px 0px 0px;
		font-size:30pt;
		font-weight:bold;
		font-family:"궁서체";
		text-align:left;
	}
	div#date_info{
		display:inline-block;
		margin:30px 0px 50px 20px;
		
	}
	
	/** 왼쪽 nav **/
	
	#left_nav{
		width:180px;
		margin:180px -20px 0px 200px;
		padding-right:30px;
		display:inline-block;
		float:left;
		text-decoration:none;		
		color:rgb(34,34,34);
	}
	div#left_nav>ul{
		border-right:2px solid #9b9b9b;
		text-align:center;
		list-style-type:none;;		
	}
	div#left_nav>ul>li{
      height:50px;
   }
	div#left_nav>ul>li:nth-child(1) {
		font-size:20pt;
		font-style: bold;
		margin-bottom:10px;
		margin-right:20px;
	}
	
	div#left_nav>ul>li>a{
		text-decoration: none;
		color:black;
	}
		
	div#left_nav>ul>li>a:hover {
		color: rgb(155,155,155);
	}
	div#left_nav>ul>li>a:active {
		color: rgb(155,155,155);
	}
	
	/** 중앙 concert contents **/
	div.exhibition_detail_info{
		width:1000px;
		height:400px;
		margin:auto;
		margin-top:100px;
	}
	
	div.exhibition_detail_info>a{
		float:left;
		padding:8px;
	}
	
	div.exhibition_detail_info>a>img.Info_img{
		width:270px; 
		height:330px;
	}
	
	#exhibition_detail_right{
		width:900px;
		height:300px;
		margin:7px 0px 0px 100px;
	}
	
	div.exhibition_detail_info>div>h2{
		text-align:left;
		color:black;
		margin:50px 0px 0px 350px;
	}
	div.exhibition_detail_info>div>h2>a{
		text-decoration: none;
	}
	
	div.exhibition_detail_info>div>#hide_space{
		width:550px;
		height:130px;
	}
	div.exhibition_detail_info>div>#text_space{
		text-align:left;
		margin-left:10px;
	}
	div.exhibition_detail_info>div>#text_space>div>a{
		display:inline-block;	
		color:#e5002c;
		border:1px solid #e5002c;
		text-decoration:none;
		margin:-10px 20px 0px -30px;
		padding:5px 30px 5px 30px;
		border-radius: 5px;
		float:right;
		
	}
	div.exhibition_detail_info>div>div#exhibition_detail_right>table{
		margin:30px 0px 20px 250px;
		text-align: left;
	}
	div.exhibition_detail_info>div>div#exhibition_detail_right>a{
		display:inline-block;
		background:#e5002c;
		color:white;
		border:1px solid #e5002c;
		text-decoration:none;
		margin:20px 20px 0px 250px;
		padding:5px 55px 5px 55px;
		border-radius: 5px;
	}
	th{
		width:100px;
	}
		
	div.exhibition_detail_info>div>#text_space>div>a:hover{
	 
	  background-color: #e5002c;
	  color:white;
	}
	
	#content_image{
		width:1000px;
	}
	.exhibitition_text>span{
		font-size:15pt;
		display:inline-block;
		margin:20px;
	}
	
	.exhibitition_text>span:nth-child(1){
		color:red;
	}
	
	.exhibitition_text>span:nth-child(5){
		color:blue;
	}
	
	.exhibitition_text>span:nth-child(7){
		margin-bottom:50px;
	}
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<img src="http://localhost:9090/images/concert_main/concert_main.png">
	<div id="left_nav">
		<ul>
			<li><a href="exhibition.jsp">전시</a></li>
			<li><a href="exhibition.jsp" style="color:rgb(5,135,94)">전시일정</a></li>
			<li><a href="concert_seat_beethoven.jsp">전시장안내</a></li>
		</ul>
	</div>
	<div class="exhibition_detail_info">
		<a href=#><img src="http://localhost:9090/images/exhibition/<%=vo.getE_poster() %>" class="Info_img"></a>
		<div>
			<h2><%=vo.getE_title() %></h2>
			<div id="exhibition_detail_right">
				<table>
					<tr>
						<th scope="row">기간</th>
						<td>
								<%=vo.getE_sdate() %> ~ <%=vo.getE_edate() %>
						</td>
					</tr>
					<tr>
						<th scope="row">시간</th>
						<td>
							<%=vo.getE_etime() %>
						</td>
					</tr>
					<tr>
						<th scope="row">장소</th>
						<td><%=vo.getE_place() %></td>
					</tr>
					<tr>
						<th scope="row">관람등급</th>
						<td><%=vo.getE_rating() %></td>
					</tr>
					<tr>
						<th scope="row">장르</th>
						<td><%=vo.getE_genre() %></td>
					</tr>
					<tr>
						<th scope="row">가격</th>
						<td><%=vo.getE_price() %> 원</td>
					</tr>
					
					<tr>
						<th scope="row">주최</th>
						<td><%=vo.getE_host() %></td>
					</tr>
					<tr>
						<th scope="row">문의</th>
						<td><%=vo.getE_contact() %></td>
					</tr>
				</table>
				<a href="#">예매하기</a>
				
				<!-- 찜 등록/삭제 버튼 -->
				<img id="<%= bmark_code %>" src="http://localhost:9090/images/bookmark/<%= on_off %>.png" class="bmark_heart" value="<%= val %>" />
				
			</div>
			<div class="exhibitition_text">
				<img src="http://localhost:9090/images/exhibition/<%=vo.getE_info_poster() %>" id="content_image">
			</div>
		</div>
	</div>
</body>
</html>
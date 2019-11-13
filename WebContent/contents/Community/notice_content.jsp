<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>
<%
	String nt_code = request.getParameter("nt_code");
	NoticeService service = new NoticeService();
	NoticeVO vo = service.getResultNoticeContent(nt_code);
	
	if(vo.getNt_title()!="" && vo.getNt_title()!=null){
		service.getResultUpdateNthits(nt_code);/* 제목이 있으면 조회수 1증가 */		
		
		if(vo.getNt_contents()!="" && vo.getNt_contents()!=null){/* 내용이 있으면 내용 엔터까지 바꿔서 화면에 보여주기 */
			vo.setNt_contents(vo.getNt_contents().replace("\r\n","<br>"));

		
		}else{
			vo.setNt_contents("내용이 없습니다.");
		}
		
	}else{ 
		response.sendRedirect("../errorPage.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>
<script src="http://localhost:9090/js/madang.js"></script>
</head>
<body>
<jsp:include page="../../header.jsp" />
	<div id="left_nav">
		<ul>
			<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">커뮤니티</a></li>
			<li><a href="review_byDate.jsp">관람후기</a></li>
			<li><a href="event.jsp">이벤트</a></li>
			<li><a style="color: rgb(5, 135, 94)" href="notice_list.jsp">공지사항</a></li>
			<li><a href="news.jsp">언론보도</a></li>
		</ul>
	</div>

	<div id="main_title">공지사항</div>

	<div id="notice_content">
		<div id="sub_title">공지사항</div>
			<h1 id="review_title"><%=vo.getNt_title() %><span> <%=vo.getNt_date() %> || 조회수:<%=vo.getNt_hits() %> </span></h1>
			<div id="review_contents"><%=vo.getNt_contents() %></div>	
			<div id="notice_sfile">
				<div id="not_sfile">파일</div>
				<%if(vo.getNt_sfile()==null) {
					vo.setNt_sfile("파일 없음");%>
				
				<%=vo.getNt_sfile() %>
				<%} %>
			</div>	
			<div>
				<a href="notice_list.jsp"><button id="btnNoticeList" type="button">목록보기</button></a>
			</div>
	</div>
	
	<jsp:include page="../../footer.jsp"/>			
</body>
</html>
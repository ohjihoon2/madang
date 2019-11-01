<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9090/css/community.css"/>
<script src="http://localhost:9090/js/jquery-3.4.1.min.js"></script>
<style>
	
</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
<div>
	<div id="left_nav">
		<ul>
			<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">커뮤니티</a></li>
			<li><a style="color: rgb(5, 135, 94)" href="review_byDate.jsp">관람후기</a></li>
			<li><a href="event.jsp">이벤트</a></li>
			<li><a href="notice_list.jsp">공지사항</a></li>
			<li><a href="news.jsp">언론보도</a></li>
		</ul>
	</div>

	<div id="main_title">관람후기</div>

	<div id="content"> <!-- form.submit을 해야하므로 form없으면 생성 -->
		<form action="review_write_process.jsp" method="post" name="reviewForm" enctype="multipart/form-data">
			<h1 id="review_title">제목<input type="text" id="review_title">
			<span id="span_c_title">
					<select name="op_concert" id="rv_op_title">
						<option>카르멘</option>
						<option>공연</option>
						<option>장명훈오케스트라</option>						
					</select>
				</span></h1>
			<textarea id="review_contents" placeholder="카르멘을 보고 나서... 리뷰내용"></textarea>
			
		<div>		
            <button type="submit" class="btnRVWrite">등록</button>
            <button type="reset" class="btnRVWrite">취소</button>
            <a href="board_list.jsp"><button type="button" class="btnRVWrite">목록</button></a>
        </div>    
		</form>
	</div>
	
</div>	
	<jsp:include page="../../footer.jsp"/>
</body>
</html>
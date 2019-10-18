<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9090/css/madangcss.css">
</head>
<body>
<!-- 일반회원과 대관자 회원 분기점 -->
<jsp:include page="../../header.jsp"/>
<div id="join0" class="page_contents">
	<h1 class="page_title">회원가입</h1>
	<div>
	
	</div>
	<div>
		<a href="join_general1.jsp"><button type="button">일 반 개 인 회 원</button></a>
		<a href="join_group1.jsp"><button type="button">법 인 / 단 체 회 원<br>(학교,기업,기관)</button></a>
	</div>
</body>
</html>
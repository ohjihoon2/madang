<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.*, com.madang.service.*, java.util.*" %>     
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.madang.vo.ReviewVO"></jsp:useBean>
<jsp:setProperty name="vo" property="*"></jsp:setProperty>
<%
	ReviewService service = new ReviewService();
	Boolean result = service.getResultReviewUpdate(vo);
	
	//if(result) response.sendRedirect("review_content.jsp?="+vo.getRv_code());
	if(result) response.sendRedirect("review_byDate.jsp");
	else response.sendRedirect("../../errorPage.jsp");
	
%>
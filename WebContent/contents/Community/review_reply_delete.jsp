<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.madang.vo.*, com.madang.service.*" %>   

<%
	String rv_rp_code = request.getParameter("rv_rp_code");
	String rv_code = request.getParameter("rv_code");

	ReviewService service = new ReviewService();
	boolean result = service.getResultReplyDelete(rv_rp_code);
	
	if(result) response.sendRedirect("review_contents.jsp?rv_code="+rv_code);
	else response.sendRedirect("../../errorPage.jsp");
	
%>
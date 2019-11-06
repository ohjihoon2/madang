<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.madang.vo.*, com.madang.service.*" %>   

<%
	String rv_rp_code = request.getParameter("rv_rp_code");
System.out.println("rv_rp_code:"+rv_rp_code);	
	ReviewService service = new ReviewService();
	boolean result = service.getResultReplyDelete(rv_rp_code);
	
	if(result) response.sendRedirect("review_byDate.jsp");
	else response.sendRedirect("../../errorPage.jsp");
	
%>
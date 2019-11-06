<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>
<%

	String rv_code = request.getParameter("rv_code");
	
	ReviewService service = new ReviewService();
	boolean result = service.getResultDelete(rv_code);
	
	if(result) response.sendRedirect("review_byDate.jsp");
	else response.sendRedirect("../../errorPage.jsp");
	
%>
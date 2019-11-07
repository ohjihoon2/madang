<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.madang.vo.*, com.madang.service.*" %>   

<%
	String ev_rp_code = request.getParameter("ev_rp_code");
	String ev_code = request.getParameter("ev_code");

	EventService service = new EventService();
	boolean result = service.getEventReplyDelete(ev_rp_code);

	
	if(result) response.sendRedirect("event_content.jsp?ev_code="+ev_code);
	else response.sendRedirect("../../errorPage.jsp");
	
%>
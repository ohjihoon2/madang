<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.madang.vo.*, com.madang.service.*,com.madang.dao.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
 	String ev_rp_content = request.getParameter("ev_rp_content");
	String ev_rp_code = request.getParameter("ev_rp_code");
	
	EventService service = new EventService();
	boolean result = service.getResultEventReplyUpdate(ev_rp_content, ev_rp_code);
	
	out.write(String.valueOf(result));

	
%> 
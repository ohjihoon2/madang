<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String situation = request.getParameter("situation");



	if(situation.equals("event_del")){
		response.sendRedirect("admin_event.jsp");
	}


%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.General_mem_VO, com.madang.dao.General_mem_DAO" %>

<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="vo" class="com.madang.vo.General_mem_VO"></jsp:useBean>
<jsp:setProperty name="vo" property="*"/>

<%
	General_mem_DAO dao = new General_mem_DAO();
	boolean result = dao.getResultJoin(vo);
	
	if(result){
		response.sendRedirect("join3.jsp");
	}else{
		response.sendRedirect("../../errorPage.jsp");
	}
%>
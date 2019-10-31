<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.General_mem_DAO" %>
<%
	String id=request.getParameter("id");
	String u_pw=request.getParameter("pw");
	
	General_mem_DAO dao=new General_mem_DAO();
	
	int result=dao.getResultPw(id, u_pw);
	
	out.write(String.valueOf(result)); //일치하면 1
%>
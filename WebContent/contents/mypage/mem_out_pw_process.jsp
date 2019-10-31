<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*" %>
<%
	//String id=request.getParameter("id");
	String general_id=String.valueOf(session.getAttribute("generalID"));
	String group_id=String.valueOf(session.getAttribute("grouopID"));
	String u_pw=request.getParameter("pw");
	
	int result=0;
	
	if(general_id!=null && group_id==null) { //개인회원
		General_mem_DAO dao=new General_mem_DAO();
		result=dao.getResultPw(general_id, u_pw);
	} else if((group_id!=null && general_id==null)) { //그룹회원
		Group_mem_DAO dao=new Group_mem_DAO();
		result=dao.getResultPw(general_id, u_pw);
	}
	
	
	out.write(String.valueOf(result)); //일치하면 1
%>
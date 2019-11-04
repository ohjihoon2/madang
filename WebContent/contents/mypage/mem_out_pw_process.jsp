<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*" %>
<%
	//String id=request.getParameter("id");
	String general_id=(String)session.getAttribute("generalID");
	String group_id=(String)session.getAttribute("groupID");
	String u_pw=request.getParameter("pw");
	
	int result=0;
	System.out.println("process genearl id "+general_id);
	System.out.println("process group id "+group_id);
	System.out.println("process pw "+u_pw);
	
	if(general_id!=null && group_id==null) { //개인회원
		General_mem_DAO dao=new General_mem_DAO();
		result=dao.getResultPw(general_id, u_pw);
		System.out.println("개인회원 if "+result);
	} else if(group_id!=null && general_id==null) { //그룹회원
		Group_mem_DAO dao=new Group_mem_DAO();
		result=dao.getResultPw(group_id, u_pw);
		System.out.println("그룹회원 if "+result);
	}
	
	
	out.write(String.valueOf(result)); //일치하면 1
%>
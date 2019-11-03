<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.madang.service.*"%>
<%
	String code = request.getParameter("code");
	String tc_cdate = request.getParameter("tc_cdate");
	out.write(code);
	out.write(tc_cdate);
/* 	
	ConcertService service = new ConcertService();
	 boolean result = service.getResultInsertTC();
	 
	 if(result){
		 out.write("저장");
	 }else{
		 out.write("실패");
	 }
 */	
 	
%>
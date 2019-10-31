<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//신청폼 띄우기
	String gpId = (String)session.getAttribute("groupID");
	String situation = request.getParameter("situation");
	if(situation.equals("open")){
		//if(gpId!=null){
			out.write("openform");
		//}else{
		//	out.write("reject");
		//}
	}
	
	

	
%>
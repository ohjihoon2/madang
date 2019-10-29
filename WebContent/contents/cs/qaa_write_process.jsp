<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.QandA_VO, com.madang.service.QandA_Service" %>
    
<%
	request.setCharacterEncoding("utf-8");
	
	String id="test";
	String title=request.getParameter("qa_title");
	String contents=request.getParameter("qa_contents");
	
	QandA_VO vo=new QandA_VO();
	vo.setId(id);
	vo.setQa_title(title);
	vo.setQa_contents(contents);
	
	QandA_Service service=new QandA_Service();
	boolean result=service.getResultWrite(vo);
	
	if(result) {
		response.sendRedirect("cs_qaa.jsp");
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
%>
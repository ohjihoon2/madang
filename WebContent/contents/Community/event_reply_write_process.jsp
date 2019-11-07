<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>   
<%
	String ev_code = request.getParameter("ev_code");
	String ev_rp_code = request.getParameter("ev_rp_code");
	String ev_rp_content = request.getParameter("rcontent");
System.out.println(	ev_code+ev_rp_code+ev_rp_content);
	EventService service  = new EventService();
	
	EventReplyVO vo = new EventReplyVO();
	vo.setEv_code(ev_code);
	vo.setEv_rp_code(ev_rp_code);
	vo.setEv_rp_content(ev_rp_content);
	
	
	
System.out.println(vo.getEv_code()+vo.getEv_rp_code()+vo.getEv_rp_content());	
	int result = service.getResultReplyWrite(vo);
	
	
	out.write(String.valueOf(result));

%>   

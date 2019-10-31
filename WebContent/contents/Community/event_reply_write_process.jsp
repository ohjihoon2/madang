<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.dao.*,com.madang.service.*,com.madang.vo.*,java.util.*" %>   
<%
	String ev_code = request.getParameter("ev_code");
	String ev_content = request.getParameter("rcontent");
	
	EventService service  = new EventService();
	
	EventReplyVO vo = new EventReplyVO();
	vo.setEv_code(ev_code);
	vo.setEv_rp_content(ev_content);
	
	int result = service.getResultReplyWrite(vo);
	
	
	out.write(String.valueOf(result));

%>   

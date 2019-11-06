<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.madang.vo.*, com.madang.service.*,com.madang.dao.*" %>    
<%
	String rv_code = request.getParameter("rv_code");
	String rv_rp_content = request.getParameter("comment");
	String rv_rp_id = request.getParameter("rv_rp_id");
System.out.println("id"+rv_rp_id);	
	ReviewService service = new ReviewService();
	ReviewReplyVO vo = new ReviewReplyVO();
	vo.setRv_code(rv_code);
	vo.setRv_rp_content(rv_rp_content);
	vo.setRv_rp_id(rv_rp_id);
	
	
	boolean result = service.getResultReplyWrite(vo);
	
	out.write(String.valueOf(result));
%>    

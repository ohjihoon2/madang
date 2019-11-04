<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.*, com.madang.dao.*, com.madang.service.*" %>  
  
<% request.setCharacterEncoding("utf-8");%>

<%
	ReviewService service = new ReviewService();

	ReviewVO vo = new ReviewVO();
	vo.setRv_title(request.getParameter("rv_title"));
	vo.setRv_content(request.getParameter("rv_content"));
	vo.setConcert_code(request.getParameter("concert_code"));
	vo.setRv_staravg(Integer.parseInt(request.getParameter("rv_staravg")));

	
	boolean result = service.getResultWrite(vo);
	
	if(result) response.sendRedirect("review_byDate.jsp");
	else response.sendRedirect("../errorPage.jsp"); 
%>	
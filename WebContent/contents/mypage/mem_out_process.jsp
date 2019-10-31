<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.General_mem_Service" %>
<%
	String id=request.getParameter("id");
	General_mem_Service service=new General_mem_Service();
	boolean result=service.getResultOut(id);
	
	if(result) {
		//PrintWriter out = response.getWriter();
		
		out.println("<script>alert('회원 탈퇴가 완료되었습니다'); location.href='http://localhost:9090/contents/mypage/mypage_mod_grp.jsp';</script>");
		
		
		//response.sendRedirect("http://localhost:9090/contents/mypage/mypage_mod_grp.jsp");
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
	
%>
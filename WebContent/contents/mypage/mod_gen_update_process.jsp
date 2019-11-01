<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.General_mem_Service, com.madang.vo.General_mem_VO" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.madang.vo.General_mem_VO" />
<jsp:setProperty name="vo" property="*" />
<%
	General_mem_Service service=new General_mem_Service();
	boolean result=service.getResultUpdate(vo);
	
	if(result) {
		//response.sendRedirect("mypage_mod_gen.jsp");
		//response.sendRedirect("http://localhost:9090/contents/mypage/mypage_mod_gen.jsp");
		out.println("<script>alert('정보 수정 완료'); location.href='mypage_mod_gen.jsp'</script>");
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
%>
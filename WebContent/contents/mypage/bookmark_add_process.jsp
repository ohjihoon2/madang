<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Bookmark_Service" %>
<%
	String id=(String)session.getAttribute("generalID");
	String concert_code=request.getParameter("concert_code");
	
	Bookmark_Service service=new Bookmark_Service();
	int result=0;
	result=service.getResultAdd(concert_code, id);
	
	out.write(result);
	
	/* 
	if(result) {
		out.println("<script>alert('찜 목록에 등록되었습니다.'); "
					+"location.href='http://localhost:9090/contents/concert/concert_detail.jsp?concert_code="+concert_code+"';</script>");
		
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
	
	 */
%>
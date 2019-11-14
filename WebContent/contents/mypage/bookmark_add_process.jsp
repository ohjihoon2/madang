<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Bookmark_Service" %>
<%
	String id=(String)session.getAttribute("generalID");
	String concert_code=request.getParameter("concert_code");
	String exhib_code=request.getParameter("exhib_code");
	 
	Bookmark_Service service=new Bookmark_Service();
	int result=0;
	
	if(concert_code!=null && exhib_code==null) { //공연 등록
		System.out.println("add proc 공연등록");
		System.out.println(id);
		System.out.println(concert_code);
		result=service.getResultConcertAdd(concert_code, id);
	} else if(exhib_code!=null && concert_code==null) { //전시 등록
		System.out.println("add proc 전시등록");
		System.out.println(id);
		System.out.println(exhib_code);
		result=service.getResultExhibAdd(exhib_code, id);
	}
	
	out.write(String.valueOf(result));
	
	/* 
	if(result) {
		out.println("<script>alert('찜 목록에 등록되었습니다.'); "
					+"location.href='http://localhost:9090/contents/concert/concert_detail.jsp?concert_code="+concert_code+"';</script>");
		
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
	
	 */
%>
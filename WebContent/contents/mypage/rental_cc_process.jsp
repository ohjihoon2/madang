<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Rental_Service, com.madang.vo.Rental_VO" %>
<%
	String id=(String)session.getAttribute("groupID");
	String rental_code=request.getParameter("rental_code");
	
	Rental_Service service=new Rental_Service();
	boolean result=service.getResultcancel(rental_code);
	
	if(result) {
		out.println("<script>alert('취소 신청이 완료되었습니다.'); "
				+"location.href='http://localhost:9090/contents/mypage/mypage_rental_details.jsp?rental_code="+rental_code+"';</script>");
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
	
%>

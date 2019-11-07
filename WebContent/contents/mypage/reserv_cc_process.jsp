<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Reservation_Service, com.madang.vo.*" %>
<%
	String id=(String)session.getAttribute("generalID");
	String p_code=request.getParameter("p_code");
	
	Reservation_Service service=new Reservation_Service();
	boolean result=service.getConcertReservDelete(id, p_code);
	
	if(result) {
		out.println("<script>alert('예매 취소가 완료되었습니다.'); "
				+"location.href='http://localhost:9090/contents/mypage/mypage_reserv_list.jsp';</script>");
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
%>
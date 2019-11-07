<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.*, com.madang.service.*" %>
<%
	String call = request.getParameter("call");
	String rental_code = request.getParameter("rental_code");
	
	Rental_Service service = new Rental_Service();
	

	if(call.equals("con_accept")||call.equals("exh_accept")){//공연-신청완료
		boolean result = service.getResultUpdate(rental_code);
		if(result){
			out.write("해당 대관신청이 신청완료되었습니다.");
		}else{
			out.write("오류발생");
		}
	}else if(call.equals("con_cancel") || call.equals("exh_cancel")){//취소완료
		boolean result = service.getResultCancel(rental_code);
		if(result){
			out.write("해당 대관신청이 취소되었습니다.");
		}else{
			out.write("오류발생");
		}
	}
	
%>
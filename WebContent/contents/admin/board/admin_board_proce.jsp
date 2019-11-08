<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.* , com.madang.vo.*"%>
<%
	String situation = request.getParameter("situation");


	//이벤트 삭제
	if(situation.equals("event_del")){
		EventService service = new EventService();
		boolean result = service.getResultDeleteAdmin(request.getParameter("ev_code"));
		if(result){
			out.println("<script>alert('게시글이 삭제되었습니다.'); location.href='http://211.63.89.214:9090/contents/admin/board/admin_event.jsp';</script>");
		}else{
			response.sendRedirect("../admin_error.jsp");
		}
	}
	
	//공지사항 삭제
	if(situation.equals("notice_del")){
		NoticeService service = new NoticeService();
		boolean result = service.getResultDeleteAdmin(request.getParameter("nt_code"));
		if(result){
			out.println("<script>alert('게시글이 삭제되었습니다.'); location.href='http://211.63.89.214:9090/contents/admin/board/admin_notice.jsp';</script>");
		}else{
			response.sendRedirect("../admin_error.jsp");
		}
	}
	
	


%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.Bookmark_Service" %>
<%
	String id=(String)session.getAttribute("generalID");
	String bmark_code=request.getParameter("bmark_code");
	
//	String concert_code=request.getParameter("concert_code");
	String flag=request.getParameter("flag");
	
	int result=0;
	Bookmark_Service service=new Bookmark_Service();
	result=service.getResultDelete(bmark_code, id);
	
//	System.out.println("process "+concert_code);
	System.out.println("process "+bmark_code);
	System.out.println("process "+result);
	
	if(flag.equals("bmark")) {
		if(result!=0) {
			out.println("<script>alert('찜 목록에서 삭제되었습니다.'); "
					+"location.href='http://localhost:9090/contents/mypage/mypage_bookmark.jsp';</script>");
		} else {
			response.sendRedirect("../../errorPage.jsp");
		}
		
	} else if(flag.equals("detail")) {
		//out.println("<script>alert('찜 목록에서 삭제되었습니다.'); "
		//		+"location.href='http://localhost:9090/contents/concert/concert_detail.jsp?concert_code="+concert_code+"';</script>");
		
		out.write(result);
	}
	
	
	
	/* 
	if(result) {
		
		if(flag.equals("bmark")) {
			out.println("<script>alert('찜 목록에서 삭제되었습니다.'); "
					+"location.href='http://localhost:9090/contents/mypage/mypage_bookmark.jsp';</script>");
			
		} else if(flag.equals("detail")) {
			out.println("<script>alert('찜 목록에서 삭제되었습니다.'); "
					+"location.href='http://localhost:9090/contents/concert/concert_detail.jsp?concert_code="+concert_code+"';</script>");
		}
		
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
	 */
%>
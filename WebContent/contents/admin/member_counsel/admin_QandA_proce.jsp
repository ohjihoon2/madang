<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*" %>
<%

	request.setCharacterEncoding("utf-8");
//답변 업데이트
	String qa_code = request.getParameter("qa_code");
	String qa_acontents = request.getParameter("qa_acontents");
	
	QandA_Service service = new QandA_Service();
	boolean result = service.getResultReply(qa_code, qa_acontents);
	
	System.out.println(qa_code+"and~"+result);
	
	if(result){
		out.println("<script>alert('답변이 등록되었습니다'); location.href='http://localhost:9090/contents/admin/member_counsel/admin_QandA.jsp';</script>");
	}else{
		response.sendRedirect("../admin_error.jsp");
	}
	
%>
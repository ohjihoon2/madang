<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.madang.service.QandA_Service" %>
<%
	String qa_code=request.getParameter("qa_code");
	
	QandA_Service service=new QandA_Service();
	boolean result=service.getResultDelete(qa_code);
	
	if(result) {
		out.print("<script>alert('삭제 완료'); location.href='cs_qaa.jsp'</script>");
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
	
%>
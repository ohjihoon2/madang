<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.*" %>
<%
	//String id=request.getParameter("id");
	
	String general_id=(String)session.getAttribute("generalID");
	String group_id=(String)session.getAttribute("groupID");
	
	String u_pw=request.getParameter("u_pw");
	
	boolean result=false;
	
	if(general_id!=null && group_id==null) { //개인회원 탈퇴
		General_mem_Service service=new General_mem_Service();
		result=service.getResultOut(general_id, u_pw);
		session.removeAttribute("generalID");
		System.out.println("개인 탈퇴 "+result);
	} else if(group_id!=null && general_id==null) { //그룹회원 탈퇴
		Group_mem_Service service=new Group_mem_Service();
		result=service.getResultOut(group_id, u_pw);
		session.removeAttribute("groupID");
		System.out.println("그룹 탈퇴  "+result);
	}
	
	if(result) {
		out.println("<script>alert('회원 탈퇴가 완료되었습니다'); location.href='http://211.63.89.214:9090/mainpage.jsp';</script>");
		//response.sendRedirect("http://211.63.89.214:9090/contents/mypage/mypage_mod_grp.jsp");
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
	
%>
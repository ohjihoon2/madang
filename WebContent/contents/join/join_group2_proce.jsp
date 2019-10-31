<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.Group_mem_VO, com.madang.dao.Group_mem_DAO" %>

<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="vo" class="com.madang.vo.Group_mem_VO"></jsp:useBean>
<jsp:setProperty name="vo" property="*"/>

<%
	String nid = request.getParameter("id");
	Group_mem_DAO dao = new Group_mem_DAO();
	
	if(vo!=null){ //vo가 유효한지를 보고 폼을 다 채웠는지 확인 -> 회원등록 진행
		boolean result = dao.getResultJoin(vo);
		
		if(result){
			response.sendRedirect("join3.jsp");
		}else{
			response.sendRedirect("../../errorPage.jsp");
		}
	}else if(!nid.equals("")){
		boolean result = dao.IsOverlapId(nid);  //true=중복, false=중복X
		if(result){ //중복됨
			out.write("overlap");
		}else{ //중복x
			out.write("nonOverlap");			
		}
	}
%>
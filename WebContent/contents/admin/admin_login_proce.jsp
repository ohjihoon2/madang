<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.*, com.madang.dao.*" %>
    
<%
	General_mem_DAO dao = new General_mem_DAO();
	General_mem_VO vo = new General_mem_VO();
	
	vo.setId(request.getParameter("id"));
	vo.setPw(request.getParameter("pw"));
	
	boolean result = dao.getResultLogin(vo);
	dao.close();
	if(result){
		//로그인 성공 : 관리자는 세션저장하지 않는다.
		out.write("관리자 로그인에 성공했습니다.");
	}else{//로그인 실패
		out.write("아이디/패스워드가 잘못되었습니다.");
	}
	
%>
	
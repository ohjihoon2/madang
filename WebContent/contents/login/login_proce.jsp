<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.*, com.madang.dao.*" %>
    
<%
	String distinguish = request.getParameter("distinguish");
	if(distinguish.equals("general")){
		General_mem_DAO dao = new General_mem_DAO();
		General_mem_VO vo = new General_mem_VO();
		
		vo.setId(request.getParameter("id"));
		vo.setPw(request.getParameter("pw"));
		
		boolean result = dao.getResultLogin(vo);
		dao.close();
		if(result){
			//로그인 성공 : 세션에 아이디를 넣고, 메인페이지로 이동
			session.setAttribute("generalID",vo.getId());
			out.write("로그인에 성공했습니다.");
		}else{//로그인 실패
			out.write("아이디/패스워드가 잘못되었습니다.");
		}
		
		
	}else if(distinguish.equals("group")){
		Group_mem_DAO dao = new Group_mem_DAO();
		Group_mem_VO vo2 = new Group_mem_VO();
		
		vo2.setId(request.getParameter("id"));
		vo2.setPw(request.getParameter("pw"));		
		
		boolean result = dao.getResultLogin(vo2);
		
		dao.close();
		if(result){
			//로그인 성공 : 세션에 아이디를 넣고, 메인페이지로 이동
			session.setAttribute("groupID",vo2.getId());
			out.write("로그인에 성공했습니다.");
		}else{//로그인 실패
			out.write("아이디/패스워드가 잘못되었습니다.");
		}

	
	
	
	}else{
		System.out.println("구별오류");
	}
	
	
%>
    

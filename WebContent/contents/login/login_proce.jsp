<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.*, com.madang.dao.*" %>
    
<%
	String distinguish = request.getParameter("distinguish");
	if(distinguish.equals("general")){
		General_mem_DAO dao = new General_mem_DAO();
%>
		<jsp:useBean id="vo" class="com.madang.vo.General_mem_VO"></jsp:useBean>
		<<jsp:setProperty property="*" name="vo"/>
<%
		boolean result = dao.getResultLogin(vo);
		dao.close();
		if(result){
			//로그인 성공 : 세션에 아이디를 넣고, 메인페이지로 이동
			session.setAttribute("generalID",vo.getId());
			response.sendRedirect("http://localhost:9090/mainpage.jsp");
		}else{//로그인 실패
			response.sendRedirect("http://localhost:9090/errorPage.jsp");	
		}
		
		
	}else if(distinguish.equals("group")){
		Group_mem_DAO dao = new Group_mem_DAO();
%>
		<jsp:useBean id="vo2" class="com.madang.vo.Group_mem_VO"></jsp:useBean>
		<jsp:setProperty property="*" name="vo2"/>
<%
		boolean result = dao.getResultLogin(vo2);
		dao.close();
		if(result){
			//로그인 성공 : 세션에 아이디를 넣고, 메인페이지로 이동
			session.setAttribute("groupID",vo2.getId());
			System.out.println(vo2.getId());
			System.out.println((String)session.getAttribute("groupID"));
			
			response.sendRedirect("http://localhost:9090/mainpage.jsp");
		}else{//로그인 실패
			response.sendRedirect("http://localhost:9090/errorPage.jsp");
		}

	
	
	
	}else{
		System.out.println("구별오류");
	}
	
	
%>
    

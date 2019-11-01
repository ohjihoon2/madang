<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String generalId=(String)session.getAttribute("generalID");
	String grouplId=(String)session.getAttribute("groupID");
	
	
	if(generalId!=null){   //일반회원 로그아웃
		session.removeAttribute("generalID");
		response.sendRedirect("http://211.63.89.214:9090/mainpage.jsp");
	}else if(grouplId!=null){   //대관자 회원 로그아웃
		session.removeAttribute("groupID");
		response.sendRedirect("http://211.63.89.214:9090/mainpage.jsp");
	}
%>



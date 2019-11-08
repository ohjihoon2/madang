<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.*, com.madang.service.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String situation = request.getParameter("situation");
	boolean result = false;
	NewsService service = new NewsService();
	
	if(situation.equals("news_update")){//뉴스 업데이트
%>
		<jsp:useBean id="upvo" class="com.madang.vo.NewsVO"></jsp:useBean>
		<jsp:setProperty name = "upvo" property="*"></jsp:setProperty>
<%

		result = service.getResultUpdate(upvo);
		
		
	}else if(situation.equals("news_wirte")){//뉴스 작성
%>
		<jsp:useBean id="wrvo" class="com.madang.vo.NewsVO"></jsp:useBean>
		<jsp:setProperty name = "wrvo" property="*"></jsp:setProperty>
<%	
		result = service.getResultWrite(wrvo);
		
		
	}else if(situation.equals("news_del")){//뉴스 삭제
		String nw_code=request.getParameter("nw_code");
		result = service.getResultDelete(nw_code);
		System.out.println("삭제의 코드"+nw_code);
		System.out.println("삭제하기:"+result);
	}
	
	
	if(result){ //true - 정상처리
		out.println("<script>alert('게시글이 처리되었습니다.'); location.href='http://211.63.89.214:9090/contents/admin/board/admin_news.jsp';</script>");
	}else{ //false - 에러발생
		response.sendRedirect("../admin_error.jsp");
	}	
	
%>
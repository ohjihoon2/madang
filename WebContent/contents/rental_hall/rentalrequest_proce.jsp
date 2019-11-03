<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//charsetting
	

	//신청폼 띄우기
	String gpId = (String)session.getAttribute("groupID");
	String situation = request.getParameter("situation");
	String r_case= request.getParameter("r_case");
	
	System.out.println(situation);
	System.out.println(r_case);
	
/* 	if(situation.equals("open")){
		//if(gpId!=null){
			out.write("openform");
		//}else{
		//	out.write("reject");
		//}
	}else if(situation.equals("rqsubmit")){
		
		//multi인걸 잊지마. import시켜야 해.
		//+ 폴더만들기= 렌탈, 이벤트, 공지사항 ..
		
		//대관신청 폼 쓰고나서. (공연/전시 분류 -> DAO등록 -> 창꺼지고 rentalrequest.jsp 새로고침) 
		//만약, 전시장소와 날짜가 겹치게 된다면, 다른날짜 선택하시오 + 날짜는 rentalInfo.jsp에서 확인하라는 메시지 오픈
		
		response.sendRedirect("http://localhost:9090/mainpage.jsp");
	} */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.* , com.madang.vo.*"
 		  import="com.oreilly.servlet.multipart.*, com.oreilly.servlet.*, java.io.*" %>
 		  
<%
//이벤트 작성 및 수정하기

//))파일 업로드 하기
String save_path=request.getServletContext().getRealPath("/upload/rental");
int max_size=1024*1024*5;
MultipartRequest multi = new MultipartRequest(request,save_path,max_size,"utf-8",new DefaultFileRenamePolicy());

	File file = new File(save_path+"/"+multi.getFilesystemName("r_file"));
	boolean result=false;
 
	Rental_Service service = new Rental_Service();
	
	String r_case = multi.getParameter("r_case");
	
if(r_case.equals("concert")){ //공연신청	
	Rental_VO vo = new Rental_VO();
	//입력한 내용 vo에 넣기
	vo.setR_title(multi.getParameter("r_title"));
	vo.setR_case(multi.getParameter("r_case"));
	vo.setR_place(multi.getParameter("r_place"));
	vo.setR_sdate(multi.getParameter("r_sdate"));
	vo.setR_edate(multi.getParameter("r_edate"));
	System.out.println("ppO"+vo.getR_title());
	System.out.println("ppO"+vo.getR_place());

		//공연시각, 시간, 리허설시간
	vo.setR_opentime(multi.getParameter("r_opentime_h")+":"+multi.getParameter("r_opentime_min"));	
	vo.setR_time(multi.getParameter("r_time_h")+":"+multi.getParameter("r_time_min"));	
	vo.setR_rhtime(multi.getParameter("r_rhtime_h")+":"+multi.getParameter("r_rhtime_min"));	
	
	vo.setR_status("신청중");
	vo.setR_id((String)session.getAttribute("groupID"));
		
		
	//파일이 존재하면.....
	if(file.exists()){
		vo.setR_file(multi.getOriginalFileName("r_file"));
		vo.setR_sfile(multi.getFilesystemName("r_file"));
		//service 객체에 전송
		result = service.getResultRentalRequest(vo);
	}else{
		result=false;
	}


	
}else if(r_case.equals("exhibition")){ //전시신청
	Rental_VO vo = new Rental_VO();
	//입력한 내용 vo에 넣기
		vo.setR_title(multi.getParameter("r_title"));
		vo.setR_case(multi.getParameter("r_case"));
		vo.setR_place(multi.getParameter("r_place"));
		vo.setR_sdate(multi.getParameter("r_sdate"));
		vo.setR_edate(multi.getParameter("r_edate"));

			//전시시각, 시간, 
		vo.setR_opentime(multi.getParameter("r_opentime_h")+":"+multi.getParameter("r_opentime_min"));	
		vo.setR_time(multi.getParameter("r_time_h")+":"+multi.getParameter("r_time_min"));	
		
		vo.setR_status("신청중");
		vo.setR_id((String)session.getAttribute("groupID"));
			
			
		//파일이 존재하면.....
		if(file.exists()){
			vo.setR_file(multi.getOriginalFileName("r_file"));
			vo.setR_sfile(multi.getFilesystemName("r_file"));
			//service 객체에 전송
			result = service.getResultRentalRequest(vo);
		}else{
			result=false;
		}
}	
//페이지 이동
if(result){
	out.println("<script>alert('대관신청이 완료되었습니다'); window.close(); </script>");
}else{
	response.sendRedirect("../errorPage.jsp");
}
		

%> 		  
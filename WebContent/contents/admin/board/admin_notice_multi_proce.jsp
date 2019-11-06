<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.* , com.madang.vo.*"
 		  import="com.oreilly.servlet.multipart.*, com.oreilly.servlet.*, java.io.*" %>
 		  
<%
//이벤트 작성 및 수정하기

//))파일 업로드 하기
String save_path=request.getServletContext().getRealPath("/upload/notice");
int max_size=1024*1024*5;
MultipartRequest multi = new MultipartRequest(request,save_path,max_size,"utf-8",new DefaultFileRenamePolicy());

	File file = new File(save_path+"/"+multi.getFilesystemName("nt_file"));
	boolean result=false;
 
	NoticeService service = new NoticeService();
	NoticeVO vo = new NoticeVO();
	vo.setNt_title(multi.getParameter("nt_title"));
	vo.setNt_contents(multi.getParameter("nt_contents"));
	
	
	String situation = multi.getParameter("situation");
	System.out.println(situation);
	System.out.println(vo.getNt_title());
	
if(situation.equals("notice_write")){ //작성하기	
	if(file.exists()){
		//BoardVO 객체에 데이터 넣기
		vo.setNt_file(multi.getOriginalFileName("nt_file"));
		vo.setNt_sfile(multi.getFilesystemName("nt_file"));
		//service 객체에 전송
		result = service.getResultWriteAdmin(vo);
	}else{
		result = service.getResultWriteAdmin(vo);
	}


	
}else if(situation.equals("notice_update")){ //업데이트
	System.out.println("service: "+vo.getNt_code());
	if(file.exists()){
		//BoardVO 객체에 데이터 넣기
		vo.setNt_file(multi.getOriginalFileName("nt_file"));
		vo.setNt_sfile(multi.getFilesystemName("nt_file"));
		//service 객체에 전송
		vo.setNt_code(multi.getParameter("nt_code"));
		result = service.getResultUpdateAdmin(vo);
	}else{
		vo.setNt_code(multi.getFilesystemName("nt_code"));
		result = service.getResultUpdateAdmin(vo);
	}
}	
//페이지 이동
if(result){
	out.println("<script>alert('게시글이 처리되었습니다.'); location.href='http://localhost:9090/contents/admin/board/admin_notice.jsp';</script>");
}else{
	response.sendRedirect("../admin_error.jsp");
}
		

%> 		  
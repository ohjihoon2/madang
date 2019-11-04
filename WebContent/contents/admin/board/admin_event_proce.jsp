<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.service.* , com.madang.vo.*"
 		  import="com.oreilly.servlet.multipart.*, com.oreilly.servlet.*, java.io.*" %>
 		  
<%
//이벤트 작성 및 수정하기

//))파일 업로드 하기
String save_path=request.getServletContext().getRealPath("/upload/event");
int max_size=1024*1024*5;
System.out.println(save_path);//))request폴더인듯?

//MultipartRequest multi = new MultipartRequest(request,파일저장위치,파일사이즈설정,인코딩타입,파일이름 중복방지(시퀀스같다!));
MultipartRequest multi = new MultipartRequest(request,save_path,max_size,"utf-8",new DefaultFileRenamePolicy());

System.out.println(save_path);//))request폴더인듯?

	File detailfile = new File(save_path+"/"+multi.getFilesystemName("ev_detail"));
	File thumbnailfile = new File(save_path+"/"+multi.getFilesystemName("ev_thumbnail"));
	boolean result=false;

	EventService service = new EventService();
	EventVO vo = new EventVO();
	vo.setEv_title(multi.getParameter("ev_title"));
	vo.setEv_sdate(multi.getParameter("ev_sdate"));
	vo.setEv_edate(multi.getParameter("ev_edate"));
	
	if(detailfile.exists()&&thumbnailfile.exists()){
		//BoardVO 객체에 데이터 넣기
		vo.setEv_detail(multi.getOriginalFileName("ev_detail"));
		vo.setEv_sdetail(multi.getFilesystemName("ev_detail"));
		vo.setEv_thumbnail(multi.getOriginalFileName("ev_thumbnail"));
		vo.setEv_sthumbnail(multi.getFilesystemName("ev_thumbnail"));
		//service 객체에 전송
	}
	
	result = service.getResultWriteAdmin(vo);
	System.out.println(result);

%> 		  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.madang.vo.QandA_VO, com.madang.service.QandA_Service" %>
<%@ page import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*, java.io.*" %>
<%
	String id=(String)session.getAttribute("generalID");
	
	String save_path=request.getServletContext().getRealPath("/upload");
	int max_size=1024*1024*10;
	MultipartRequest multi=new MultipartRequest(request, save_path, max_size, "utf-8", new DefaultFileRenamePolicy());
	
	/*
	System.out.println("path: "+save_path);
	System.out.println("title: "+multi.getParameter("qa_title"));
	System.out.println("contents: "+multi.getParameter("qa_contents"));
	System.out.println("file: "+multi.getOriginalFileName("qa_file"));
	System.out.println("sfile: "+multi.getFilesystemName("qa_file")); //폴더 저장명
	System.out.println("위치: "+save_path+"/"+multi.getFilesystemName("qa_file"));
	*/
	
	File file=new File(save_path+"/"+multi.getFilesystemName("qa_file"));
	
	QandA_VO vo=new QandA_VO();
	vo.setId(id);
	vo.setQa_title(multi.getParameter("qa_title"));
	
	/* 
	String a=multi.getParameter("qa_contents");
	System.out.println(a);
	 */
	
	if(multi.getParameter("qa_contents")!="" && multi.getParameter("qa_contents")!=null) {
		vo.setQa_contents(multi.getParameter("qa_contents"));
	}
	
	if(file.exists()) {		
		vo.setQa_file(multi.getOriginalFileName("qa_file"));
		vo.setQa_sfile(multi.getFilesystemName("qa_file"));
	}
	
	
	QandA_Service service=new QandA_Service();
	boolean result=service.getResultWrite(vo);
	
	if(result) {
		response.sendRedirect("cs_qaa_list.jsp");
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
	
	
%>



<%--
	request.setCharacterEncoding("utf-8");
	
	String id="test";
	String title=request.getParameter("qa_title");
	String contents=request.getParameter("qa_contents");
	
	QandA_VO vo=new QandA_VO();
	vo.setId(id);
	vo.setQa_title(title);
	vo.setQa_contents(contents);
	
	QandA_Service service=new QandA_Service();
	boolean result=service.getResultWrite(vo);
	
	if(result) {
		response.sendRedirect("cs_qaa_list.jsp");
	} else {
		response.sendRedirect("../../errorPage.jsp");
	}
--%>
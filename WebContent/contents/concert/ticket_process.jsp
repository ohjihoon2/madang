<%@page import="com.madang.vo.ConcertTicketVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.madang.service.*"%>
    
<%


	String code = request.getParameter("code");
	String tc_cdate = request.getParameter("tc_cdate");
	String tc_cplace= request.getParameter("tc_cplace");
	String tc_cseat= request.getParameter("tc_cseat");
	String tc_cancelc= request.getParameter("tc_cancelc");
	String tc_canceld= request.getParameter("tc_canceld");
	String tc_price= request.getParameter("tc_price");
	String tc_recive= request.getParameter("tc_recive");
	String tc_id= request.getParameter("tc_id");
	String tc_name= request.getParameter("tc_name");
	String tc_birth= request.getParameter("tc_birth");
	String tc_phone1= request.getParameter("tc_phone1");
	String tc_phone2= request.getParameter("tc_phone2");
	String tc_phone3= request.getParameter("tc_phone3");
	String tc_email= request.getParameter("tc_email");
	String tc_paym= request.getParameter("tc_paym");
	String tc_payw= request.getParameter("tc_payw");
	String tc_pays= request.getParameter("tc_pays");
	
	
	System.out.println(code);
	System.out.println(tc_cdate);
	System.out.println(tc_cplace);
	System.out.println(tc_cseat);
	System.out.println(tc_canceld);
	System.out.println(tc_cancelc);
	System.out.println(tc_price);
	System.out.println(tc_recive);
	System.out.println(tc_id);
	System.out.println(tc_name);
	System.out.println(tc_birth);
	System.out.println(tc_phone1);
	System.out.println(tc_phone2);
	System.out.println(tc_phone3);
	System.out.println(tc_email);
	System.out.println(tc_paym);
	System.out.println(tc_payw);
	System.out.println(tc_pays);
	
	ConcertService service = new ConcertService();
	ConcertTicketVO vo = new ConcertTicketVO();
		
	vo.setConcert_code(code);
	vo.setTc_cdate(tc_cdate);
	vo.setTc_cplace(tc_cplace);
	vo.setTc_cseat(tc_cseat);
	vo.setTc_cancelc(Integer.parseInt(tc_cancelc));
	vo.setTc_canceld(tc_canceld);
	vo.setTc_price(Integer.parseInt(tc_price));
	vo.setTc_recive(tc_recive);
	vo.setTc_id(tc_id);
	vo.setTc_name(tc_name);
	vo.setTc_birth(tc_birth);
	vo.setTc_phone1(tc_phone1);
	vo.setTc_phone2(tc_phone2);
	vo.setTc_phone3(tc_phone3);
	vo.setTc_email(tc_email);
	vo.setTc_paym(tc_paym);
	vo.setTc_payw(tc_payw);
	vo.setTc_pays(tc_pays);
	
	
	
 	 boolean result = service.getResultInsertTC(vo);	
	 if(result){
		 out.write("true");
	 }else{
		 out.write("false");
	 }
 	
%>
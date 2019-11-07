<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.madang.vo.*, com.madang.service.*"%>
<%

	String code = request.getParameter("code");
	String te_cplace= request.getParameter("te_cplace");
	String te_cticket= request.getParameter("te_cticket");
	String te_cancelc= request.getParameter("te_cancelc");
	String te_canceld= request.getParameter("te_canceld");
	String te_price= request.getParameter("te_price");
	String te_recive= request.getParameter("te_recive");
	String te_id= request.getParameter("te_id");
	String te_name= request.getParameter("te_name");
	String te_birth= request.getParameter("te_birth");
	String te_phone1= request.getParameter("te_phone1");
	String te_phone2= request.getParameter("te_phone2");
	String te_phone3= request.getParameter("te_phone3");
	String te_email= request.getParameter("te_email");
	String te_paym= request.getParameter("te_paym");
	String te_payw= request.getParameter("te_payw");
	String te_pays= request.getParameter("te_pays");
	
	
	System.out.println(code);
	System.out.println(te_cticket);
	System.out.println(te_cplace);
	System.out.println(te_canceld);
	System.out.println(te_cancelc);
	System.out.println(te_price);
	System.out.println(te_recive);
	System.out.println(te_id);
	System.out.println(te_name);
	System.out.println(te_birth);
	System.out.println(te_phone1);
	System.out.println(te_phone2);
	System.out.println(te_phone3);
	System.out.println(te_email);
	
	System.out.println(te_paym);
	System.out.println(te_payw);
	System.out.println(te_pays);
	
	ExhibitionService service = new ExhibitionService();
	ExhibitionTicketVO vo = new ExhibitionTicketVO();
		
	vo.setExhibition_code(code);
	vo.setTe_cplace(te_cplace);
	vo.setTe_cticket(Integer.parseInt(te_cticket));
	vo.setTe_cancelc(Integer.parseInt(te_cancelc));
	vo.setTe_canceld(te_canceld);
	vo.setTe_price(Integer.parseInt(te_price));
	vo.setTe_recive(te_recive);
	vo.setTe_id(te_id);
	vo.setTe_name(te_name);
	vo.setTe_birth(te_birth);
	vo.setTe_phone1(te_phone1);
	vo.setTe_phone2(te_phone2);
	vo.setTe_phone3(te_phone3);
	vo.setTe_email(te_email);
	
	System.out.println("전시 코드 = " +vo.getExhibition_code());
	PurchaseVO cvo = new PurchaseVO();
	
	cvo.setMem_id(te_id);
	cvo.setCe_code(code);
	cvo.setTce_paym(te_paym);
	cvo.setTce_payw(te_payw);
	cvo.setTce_pays(te_pays);
	
	
	Boolean resultP = service.getResultInsertPurchase(cvo);
	boolean resultT = service.getResultInsertTE(vo);	
	System.out.println(resultP);
	System.out.println(resultT);
	if(resultT){
		out.write("true");
	}else{
		out.write("false");
	}

%>
<%@page import="com.madang.service.ConcertService, com.google.gson.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String concert_code = request.getParameter("concert_code");
	String datetime = request.getParameter("datetime");
	
	//1. DB연동
	ConcertService service = new ConcertService();
	String seats = service.getResultSeats(concert_code, datetime);
	String[] seatList = seats.split("석 /");
	
	//2. json 객체 생성 및 전송 
	Gson gson = new Gson();
	JsonArray jlist = new JsonArray();
	
	 for(String seat : seatList){
		 JsonArray list = new JsonArray();
		 jlist.add(seat);
	}
	out.write(gson.toJson(jlist));
%>
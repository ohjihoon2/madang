package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.Reservation_DAO;
import com.madang.vo.Concert_Reserv_VO;

public class Reservation_Service {
	/** ���� ���ų��� ����Ʈ */
	public ArrayList<Concert_Reserv_VO> getConcertReservList(String id) {
		ArrayList<Concert_Reserv_VO> list=new ArrayList<Concert_Reserv_VO>();
		Reservation_DAO dao=new Reservation_DAO();
		list=dao.getConcertReservList(id);
		dao.close();
		return list;
	}
	
	
	/** ���� ���� �󼼳��� */
	public Concert_Reserv_VO getConcertReservContent(String id, String tc_code) {
		Concert_Reserv_VO vo=new Concert_Reserv_VO();
		Reservation_DAO dao=new Reservation_DAO();
		vo=dao.getConcertReservContent(id, tc_code);
		dao.close();
		return vo;
	}
	
	
	/** ���� ������� */
	public boolean getConcertReservDelete(String id, String p_code) {
		boolean result=false;
		Reservation_DAO dao=new Reservation_DAO();
		result=dao.getConcertReservDelete(id, p_code);
		dao.close();
		return result;
	}
	
	
	
	
	/** ���� ���ų��� ����Ʈ */
	
	
	
	/** ���� ���� �󼼳��� */
	
	
	
	/** ���� ������� */
}

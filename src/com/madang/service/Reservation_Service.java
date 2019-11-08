package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.Reservation_DAO;
import com.madang.vo.Concert_Reserv_VO;
import com.madang.vo.Exhib_Reserv_VO;

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
	
	
	/** ������� */
	public boolean getReservDelete(String id, String p_code) {
		boolean result=false;
		Reservation_DAO dao=new Reservation_DAO();
		result=dao.getReservDelete(id, p_code);
		dao.close();
		return result;
	}
	
	
	
	
	/** ���� ���ų��� ����Ʈ */
	public ArrayList<Exhib_Reserv_VO> getExhibReservList(String id) {
		ArrayList<Exhib_Reserv_VO> list=new ArrayList<Exhib_Reserv_VO>();
		Reservation_DAO dao=new Reservation_DAO();
		list=dao.getExhibReservList(id);
		dao.close();
		return list;
	}
	
	
	
	/** ���� ���� �󼼳��� */
	public Exhib_Reserv_VO getExhibReservContent(String id, String te_code) {
		Exhib_Reserv_VO vo=new Exhib_Reserv_VO();
		Reservation_DAO dao=new Reservation_DAO();
		vo=dao.getExhibReservContent(id, te_code);
		dao.close();
		return vo;	
	}
	
	
}

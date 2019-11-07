package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.Reservation_DAO;
import com.madang.vo.Concert_Reserv_VO;

public class Reservation_Service {
	/** 공연 예매내역 리스트 */
	public ArrayList<Concert_Reserv_VO> getConcertReservList(String id) {
		ArrayList<Concert_Reserv_VO> list=new ArrayList<Concert_Reserv_VO>();
		Reservation_DAO dao=new Reservation_DAO();
		list=dao.getConcertReservList(id);
		dao.close();
		return list;
	}
	
	
	/** 공연 예매 상세내역 */
	public Concert_Reserv_VO getConcertReservContent(String id, String tc_code) {
		Concert_Reserv_VO vo=new Concert_Reserv_VO();
		Reservation_DAO dao=new Reservation_DAO();
		vo=dao.getConcertReservContent(id, tc_code);
		dao.close();
		return vo;
	}
	
	
	/** 공연 예매취소 */
	public boolean getConcertReservDelete(String id, String p_code) {
		boolean result=false;
		Reservation_DAO dao=new Reservation_DAO();
		result=dao.getConcertReservDelete(id, p_code);
		dao.close();
		return result;
	}
	
	
	
	
	/** 전시 예매내역 리스트 */
	
	
	
	/** 공연 예매 상세내역 */
	
	
	
	/** 공연 예매취소 */
}

package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.Rental_DAO;
import com.madang.vo.Rental_VO;

public class Rental_Service {
	/** 리스트 출력 */
	public ArrayList<Rental_VO> getList(String id){
		ArrayList<Rental_VO> list=new ArrayList<Rental_VO>();
		Rental_DAO dao=new Rental_DAO();
		list=dao.getList(id);
		dao.close();
		return list;
	}
	
	/** 상세내역 출력 */
	public Rental_VO getContent(String rental_code, String id) {
		Rental_VO vo=new Rental_VO();
		Rental_DAO dao=new Rental_DAO();
		vo=dao.getContent(rental_code, id);
		dao.close();
		return vo;
	}
	
	/** 취소 신청 */
	public boolean getResultcancel(String rental_code) {
		boolean result=false;
		Rental_DAO dao=new Rental_DAO();
		result=dao.getResultcancel(rental_code);
		dao.close();
		return result;
	}
	
	//rental request (insert)
	public boolean getResultRentalRequest(Rental_VO vo) {
		System.out.println("service"+vo.getR_place());
		boolean result = false;
		Rental_DAO dao=new Rental_DAO();
		result=dao.getResultRentalRequest(vo);
		dao.close();
		return result;
	}
}

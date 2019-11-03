package com.madang.service;

import com.madang.dao.ConcertDAO;
import com.madang.vo.ConcertVO;
import com.madang.vo.General_mem_VO;

public class ConcertService {

	/**
	 * 공연 상세내용
	 * @param code
	 * @return
	 */
	public ConcertVO getConcertDetail(String code) {
		
		ConcertDAO dao = new ConcertDAO();
		ConcertVO vo = dao.getResultConcertDetail(code);
		
		return vo;
	}
	
	/**
	 * 티켓에서 일반회원 값 mapping 
	 * @param id
	 * @return
	 */
	public General_mem_VO getResultMemInfo(String id) {
		ConcertDAO dao = new ConcertDAO();
		General_mem_VO vo = dao.getResultMemInfo(id);
		
		return vo;
	}
	
	/**
	 * Ticket_Concert 추가하기
	 */
	public boolean  getResultInsertTC() {
		boolean result = false;
		ConcertDAO dao = new ConcertDAO();
		result = dao.getResultInsertTC();
		return result;
	}
}

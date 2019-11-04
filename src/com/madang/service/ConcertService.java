package com.madang.service;

import com.madang.dao.ConcertDAO;
import com.madang.vo.ConcertTicketVO;
import com.madang.vo.ConcertVO;
import com.madang.vo.General_mem_VO;

public class ConcertService {

	/**
	 * 怨듭뿰 �긽�꽭�궡�슜
	 * @param code
	 * @return
	 */
	public ConcertVO getConcertDetail(String code) {
		
		ConcertDAO dao = new ConcertDAO();
		ConcertVO vo = dao.getResultConcertDetail(code);
		
		return vo;
	}
	
	/**
	 * �떚耳볦뿉�꽌 �씪諛섑쉶�썝 媛� mapping 
	 * @param id
	 * @return
	 */
	public General_mem_VO getResultMemInfo(String id) {
		ConcertDAO dao = new ConcertDAO();
		General_mem_VO vo = dao.getResultMemInfo(id);
		
		return vo;
	}
	
	/**
	 * Ticket_Concert 異붽��븯湲�
	 */
	public boolean  getResultInsertTC(ConcertTicketVO vo) {
		boolean result = false;
		ConcertDAO dao = new ConcertDAO();
		result = dao.getResultInsertTC(vo);
		return result;
	}
}

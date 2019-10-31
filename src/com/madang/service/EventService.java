package com.madang.service;

import java.util.*;
import com.madang.dao.*;
import com.madang.vo.*;

public class EventService {
	EventDAO dao = new EventDAO();

	/** LIST*/
	/** 이벤트 리스트 가져오기 */
	public ArrayList<EventVO> getResultList(){
		ArrayList<EventVO> list = new ArrayList<EventVO>();
		EventDAO dao = new EventDAO();		
		list = dao.getResultList();	
		
		return list;
	}
	
	/** 현재 진행중인 이벤트 리스트 가져오기 */
	public ArrayList<EventVO> getResultIngList(){
		ArrayList<EventVO> inglist = new ArrayList<EventVO>();
		EventDAO dao = new EventDAO();
		inglist = dao.getResultList();	
		
		return inglist;
	}

	/** CONTENT
	/** 이벤트 내용 VO 가져오기 */
	public EventVO getResultContent(String ev_code) {
		EventVO vo = new EventVO();
		EventDAO dao = new EventDAO();
		vo = dao.getResultVO(ev_code);
		
		return vo;	
	}
	
	/** 댓글 리스트 가져오기 **/
	public ArrayList<EventReplyVO> getResultReplyList(String ev_code) {
		ArrayList<EventReplyVO> rvo = new ArrayList<EventReplyVO>();
		EventDAO dao = new EventDAO();
		rvo = dao.getResultReplyList(ev_code);		
		
		return rvo;
	}
	
	/** 댓글 등록 **/
	public int getResultReplyWrite(EventReplyVO vo) {
		int result = 0;
		EventDAO dao = new EventDAO();
		result = dao.getResultReplyWrite(vo);
		
		return result;
	}
	
	
}

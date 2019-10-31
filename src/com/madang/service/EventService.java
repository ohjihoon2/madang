package com.madang.service;

import java.util.*;
import com.madang.dao.*;
import com.madang.vo.*;

public class EventService {
	EventDAO dao = new EventDAO();

	/** LIST*/
	/** �̺�Ʈ ����Ʈ �������� */
	public ArrayList<EventVO> getResultList(){
		ArrayList<EventVO> list = new ArrayList<EventVO>();
		EventDAO dao = new EventDAO();		
		list = dao.getResultList();	
		
		return list;
	}
	
	/** ���� �������� �̺�Ʈ ����Ʈ �������� */
	public ArrayList<EventVO> getResultIngList(){
		ArrayList<EventVO> inglist = new ArrayList<EventVO>();
		EventDAO dao = new EventDAO();
		inglist = dao.getResultList();	
		
		return inglist;
	}

	/** CONTENT
	/** �̺�Ʈ ���� VO �������� */
	public EventVO getResultContent(String ev_code) {
		EventVO vo = new EventVO();
		EventDAO dao = new EventDAO();
		vo = dao.getResultVO(ev_code);
		
		return vo;	
	}
	
	/** ��� ����Ʈ �������� **/
	public ArrayList<EventReplyVO> getResultReplyList(String ev_code) {
		ArrayList<EventReplyVO> rvo = new ArrayList<EventReplyVO>();
		EventDAO dao = new EventDAO();
		rvo = dao.getResultReplyList(ev_code);		
		
		return rvo;
	}
	
	/** ��� ��� **/
	public int getResultReplyWrite(EventReplyVO vo) {
		int result = 0;
		EventDAO dao = new EventDAO();
		result = dao.getResultReplyWrite(vo);
		
		return result;
	}
	
	
}
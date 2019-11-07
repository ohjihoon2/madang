package com.madang.service;

import java.util.*;
import com.madang.dao.*;
import com.madang.vo.*;

public class EventService {
	EventDAO dao = new EventDAO();

	/** LIST*/
	/** 占싱븝옙트 占쏙옙占쏙옙트 占쏙옙占쏙옙占쏙옙占쏙옙 */
	public ArrayList<EventVO> getResultList(){
		ArrayList<EventVO> list = new ArrayList<EventVO>();
		EventDAO dao = new EventDAO();		
		list = dao.getResultList();	
		
		dao.close();
		return list;
	}
	
	//add hits
	public void getResultUpdateHits(String ev_code) {
		EventDAO dao = new EventDAO();
		dao.getResultUpdateHits(ev_code);
	}
	
	//reply update
	public boolean getResultEventReplyUpdate(String ev_rp_content, String ev_rp_code) {
		boolean result = false;
		EventDAO dao = new EventDAO();
		dao.getResultEventReplyUpdate(ev_rp_content, ev_rp_code);
		
		return result;
	}
	
	/** 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱븝옙트 占쏙옙占쏙옙트 占쏙옙占쏙옙占쏙옙占쏙옙 */
	public ArrayList<EventVO> getResultIngList(){
		ArrayList<EventVO> inglist = new ArrayList<EventVO>();
		EventDAO dao = new EventDAO();
		inglist = dao.getResultList();	
		
		return inglist;
	}

	/** CONTENT
	/** 占싱븝옙트 占쏙옙占쏙옙 VO 占쏙옙占쏙옙占쏙옙占쏙옙 */
	public EventVO getResultContent(String ev_code) {
		EventVO vo = new EventVO();
		EventDAO dao = new EventDAO();
		vo = dao.getResultVO(ev_code);
		System.out.println("title"+vo.getEv_title());			
		return vo;	
	}
	
	/** 占쏙옙占� 占쏙옙占쏙옙트 占쏙옙占쏙옙占쏙옙占쏙옙 **/
	public ArrayList<EventReplyVO> getResultReplyList(String ev_code) {
		ArrayList<EventReplyVO> rvo = new ArrayList<EventReplyVO>();
		EventDAO dao = new EventDAO();
		rvo = dao.getResultReplyList(ev_code);		
		
		return rvo;
	}
	
	/** 占쏙옙占� 占쏙옙占� **/
	public boolean getResultReplyWrite(EventReplyVO vo) {
		boolean result = false;
		EventDAO dao = new EventDAO();
		result = dao.getResultReplyWrite(vo);
		
		return result;
	}
	
	
	//Admin list
	public ArrayList<EventVO> getResultListAdmin(int startCount, int endCount){
		ArrayList<EventVO> list = new ArrayList<EventVO>();
		EventDAO dao = new EventDAO();		
		list = dao.getResultListAdmin(startCount, endCount);	
		dao.close();
		
		return list;
	}
	
	
	//Admin paging
	public int execTotalCount(){
		int result =0;
		EventDAO dao = new EventDAO();
		result = dao.execTotalCount();
		return result;
	}
	
	
	//愿�由ъ옄-�씠踰ㅽ듃 �옉�꽦
	public boolean getResultWriteAdmin(EventVO vo) {
		boolean result=false;
		EventDAO dao = new EventDAO();		
		result = dao.getResultWriteAdmin(vo);
		
		dao.close();
		return result;
	}
	
	//愿�由ъ옄 �궡�슜 媛��졇�삤湲�
	public EventVO getResultContentAdmin(String ev_code) {
		EventVO vo = new EventVO();
		EventDAO dao = new EventDAO();
		vo = dao.getResultContentAdmin(ev_code);
		dao.close();
		return vo;	
	}
	
	
	//愿�由ъ옄-�씠踰ㅽ듃 �뾽�뜲�씠�듃
	public boolean getResultUpdateAdmin(EventVO vo) {
		boolean result=false;
		EventDAO dao = new EventDAO();		
		result = dao.getResultUpdateAdmin(vo);
		
		dao.close();
		return result;
	}

	
	//admin delete
	public boolean getResultDeleteAdmin(String ev_code) {
		boolean result=false;
		EventDAO dao = new EventDAO();		
		result = dao.getResultDeleteAdmin(ev_code);
		
		dao.close();
		return result;
	}
	
	//리뷰 댓글 삭제
	public boolean getEventReplyDelete(String ev_rp_code) {
		boolean result = false;
		EventDAO dao = new EventDAO();
		result = dao.getEventtReplyDelete(ev_rp_code);
		
		dao.close();
		return result;
	}
	
	
}

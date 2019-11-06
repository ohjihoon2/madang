package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.EventDAO;
import com.madang.dao.NoticeDAO;
import com.madang.vo.NoticeVO;

public class NoticeService {

	//bring the notice list
	public ArrayList<NoticeVO> getNoticeListAdmin(){
		NoticeDAO dao = new NoticeDAO();
		ArrayList<NoticeVO> list = dao.getNoticeListAdmin();
		dao.close();
		return list;
	}
	
	//insert new notice
	public boolean getResultWriteAdmin(NoticeVO vo) {
		boolean result=false;
		NoticeDAO dao = new NoticeDAO();
		result = dao.getResultWriteAdmin(vo);
		dao.close();
		return result;
	}
	
	
	//bring
	public NoticeVO getNoticeContentsAdmin(String nt_code){
		NoticeDAO dao = new NoticeDAO();
		NoticeVO vo = dao.getNoticeContentsAdmin(nt_code);
		dao.close();
		return vo;
	}
	
	//update notice update
	public boolean getResultUpdateAdmin(NoticeVO vo) {
		boolean result=false;
		NoticeDAO dao = new NoticeDAO();
		result = dao.getResultUpdateAdmin(vo);
		dao.close();
		System.out.println("업데이트"+result);
		return result;	
	}
	
	//admin delete
		public boolean getResultDeleteAdmin(String nt_code) {
			boolean result=false;
			EventDAO dao = new EventDAO();		
			result = dao.getResultDeleteAdmin(nt_code);
			System.out.println("ser"+nt_code + result);
			dao.close();
			return result;
		}
}

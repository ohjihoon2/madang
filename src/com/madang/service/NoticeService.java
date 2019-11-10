package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.EventDAO;
import com.madang.dao.ExhibitionDAO;
import com.madang.dao.NoticeDAO;
import com.madang.dao.QandA_DAO;
import com.madang.vo.NoticeVO;
import com.madang.vo.QandA_VO;

public class NoticeService {

	//bring the notice list admin
	public ArrayList<NoticeVO> getNoticeListAdmin(int startCount, int endCount){
		NoticeDAO dao = new NoticeDAO();
		ArrayList<NoticeVO> list = dao.getNoticeListAdmin(startCount, endCount);
		dao.close();
		return list;
	}
	
	//bring the notice list
	public ArrayList<NoticeVO> getResultNoticeList(){
		NoticeDAO dao = new NoticeDAO();
		ArrayList<NoticeVO> list = dao.getResultNoticeList();
		
		dao.close();
		return list;
	}
	
	//Admin paging
	public int execTotalCount(){
		int result =0;
		NoticeDAO dao = new NoticeDAO();
		result = dao.execTotalCount();
		return result;
	}
	
	
	//admin main list
	public ArrayList<NoticeVO> getListAdminMain(){
		NoticeDAO dao = new NoticeDAO();
		ArrayList<NoticeVO> list = dao.getListAdminMain();
		dao.close();
		System.out.println("����");
		for(int i=0; i<list.size();i++) {
			list.get(i).getRno();
		}
		return list;
	}
	
	//Admin main list count
	public int getAdminMainCount() {
		NoticeDAO dao = new NoticeDAO();
		int count = dao.getAdminMainCount();
		dao.close();
		System.out.println("service"+count);
		return count;
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
	
	//bring
	public NoticeVO getResultNoticeContent(String nt_code){
		NoticeDAO dao = new NoticeDAO();
		NoticeVO vo = dao.getResultNoticeContent(nt_code);
		dao.close();
		return vo;
	}
	
	//update notice update
	public boolean getResultUpdateAdmin(NoticeVO vo) {
		boolean result=false;
		NoticeDAO dao = new NoticeDAO();
		result = dao.getResultUpdateAdmin(vo);
		dao.close();
		System.out.println("������Ʈ"+result);
		return result;	
	}
	
	//add hits
	public void getResultUpdateNthits(String nt_code) {
		NoticeDAO dao = new NoticeDAO();
		dao.getResultUpdateNthits(nt_code);
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

package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.Bookmark_DAO;
import com.madang.vo.Bookmark_VO;

public class Bookmark_Service {
	/** 리스트 출력 */
	public ArrayList<Bookmark_VO> getConcertList(String id) {
		ArrayList<Bookmark_VO> list=new ArrayList<Bookmark_VO>();
		Bookmark_DAO dao=new Bookmark_DAO();
		list=dao.getConcertList(id);
		dao.close();
		return list;
	}
	
	
	/** 등록 */
	public boolean getResultAdd() {
		boolean result=false;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getResultAdd();
		dao.close();
		return result;
	}
	
	
	/** 삭제 */
	public boolean getResultDelete() {
		boolean result=false;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getResultDelete();
		dao.close();
		return result;
	}
}

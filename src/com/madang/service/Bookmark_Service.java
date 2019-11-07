package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.Bookmark_DAO;
import com.madang.vo.Bookmark_VO;

public class Bookmark_Service {
	/** 공연 리스트 출력 */
	public ArrayList<Bookmark_VO> getConcertList(String id) {
		ArrayList<Bookmark_VO> c_list=new ArrayList<Bookmark_VO>();
		Bookmark_DAO dao=new Bookmark_DAO();
		c_list=dao.getConcertList(id);
		dao.close();
		return c_list;
	}
	
	
	/** 공연 북마크 여부 */
	public boolean getCheckConcertBmark(String concert_code, String id) {
		boolean result=false;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getCheckConcertBmark(concert_code, id);
		dao.close();
		return result;
	}
	
	
	/** 공연 북마크 코드 */
	public String getConcertBmarkCode(String concert_code, String id) {
		String bmark_code="";
		Bookmark_DAO dao=new Bookmark_DAO();
		bmark_code=dao.getConcertBmarkCode(concert_code, id);
		dao.close();
		return bmark_code;
	}
	
	
	/** 전시 리스트 출력 */
	public ArrayList<Bookmark_VO> getExhibitionList(String id) {
		ArrayList<Bookmark_VO> e_list=new ArrayList<Bookmark_VO>();
		Bookmark_DAO dao=new Bookmark_DAO();
		e_list=dao.getExhibitionList(id);
		dao.close();
		return e_list;
	}
	
	
	/** 전시 북마크 여부 */
	public boolean getCheckExhibBmark(String exhib_code, String id) {
		boolean result=false;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getCheckExhibBmark(exhib_code, id);
		dao.close();
		return result;
	}
	
	
	/** 전시 북마크 코드 */
	public String getExhibBmarkCode(String exhib_code, String id) {
		String result="";
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getExhibBmarkCode(exhib_code, id);
		dao.close();
		return result;
	}
	
	
	/** 공연 등록 */
	public int getResultConcertAdd(String concert_code, String id) {
		int result=0;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getResultConcertAdd(concert_code, id);
		dao.close();
		return result;
	}
	
	
	/** 전시 등록 */
	public int getResultExhibAdd(String exhib_code, String id) {
		int result=0;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getResultExhibAdd(exhib_code, id);
		dao.close();
		return result;
	}
	
	
	/** 삭제 */
	public int getResultDelete(String bmark_code, String id) {
		int result=0;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getResultDelete(bmark_code, id);
		dao.close();
		return result;
	}
}

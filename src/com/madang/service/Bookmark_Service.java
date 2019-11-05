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
	public boolean getCheckBmark(String concert_code, String id) {
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
	
	
	/** 전시 북마크 코드 */
	
	
	
	
	/** 등록 */
	public int getResultAdd(String concert_code, String id) {
		int result=0;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getResultAdd(concert_code, id);
		dao.close();
		System.out.println("dao 등록 "+concert_code);
		System.out.println("dao 등록 "+result);
		return result;
	}
	
	
	/** 삭제 */
	public int getResultDelete(String bmark_code, String id) {
		int result=0;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getResultDelete(bmark_code, id);
		dao.close();
		System.out.println("service 삭제 "+bmark_code);
		System.out.println("service 삭제 "+result);
		return result;
	}
}

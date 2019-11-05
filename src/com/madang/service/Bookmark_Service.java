package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.Bookmark_DAO;
import com.madang.vo.Bookmark_VO;

public class Bookmark_Service {
	/** ����Ʈ ��� */
	public ArrayList<Bookmark_VO> getConcertList(String id) {
		ArrayList<Bookmark_VO> list=new ArrayList<Bookmark_VO>();
		Bookmark_DAO dao=new Bookmark_DAO();
		list=dao.getConcertList(id);
		dao.close();
		return list;
	}
	
	
	/** ���� �ϸ�ũ ���� */
	public boolean getCheckBmark(String concert_code, String id) {
		boolean result=false;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getCheckConcertBmark(concert_code, id);
		dao.close();
		return result;
	}
	
	/** ���� �ϸ�ũ �ڵ� */
	public String getConcertBmarkCode(String concert_code, String id) {
		String bmark_code="";
		Bookmark_DAO dao=new Bookmark_DAO();
		bmark_code=dao.getConcertBmarkCode(concert_code, id);
		dao.close();
		return bmark_code;
	}
	
	/** ��� */
	public int getResultAdd(String concert_code, String id) {
		int result=0;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getResultAdd(concert_code, id);
		dao.close();
		System.out.println("dao ��� "+concert_code);
		System.out.println("dao ��� "+result);
		return result;
	}
	
	
	/** ���� */
	public int getResultDelete(String bmark_code, String id) {
		int result=0;
		Bookmark_DAO dao=new Bookmark_DAO();
		result=dao.getResultDelete(bmark_code, id);
		dao.close();
		System.out.println("service ���� "+bmark_code);
		System.out.println("service ���� "+result);
		return result;
	}
}

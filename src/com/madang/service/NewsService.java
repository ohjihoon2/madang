package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.NewsDAO;
import com.madang.vo.NewsVO;

public class NewsService {

	//관리자-언론리스트 가져오기
	
	public ArrayList<NewsVO> getNewsListAdmin(){
		NewsDAO dao = new NewsDAO();	
		ArrayList<NewsVO> list = dao.getNewsListAdmin();
		dao.close();
		return list;
	}
	
	
	//관리자 업데이트_1.내용가져오기
	public NewsVO getNewsContentAdmin(String nw_code) {
		NewsDAO dao = new NewsDAO();	
		NewsVO vo = dao.getNewsContentAdmin(nw_code);
		dao.close();
		return vo;
	}
	
	//관리자 업데이트_2.내용수정하기
	public boolean getResultUpdate(NewsVO vo) {
		boolean result = false;
		NewsDAO dao = new NewsDAO();	
		result = dao.getResultUpdate(vo);
		dao.close();
		return result;
	}
	
	
	//관리자 등록하기
	public boolean getResultWrite(NewsVO vo) {
		boolean result = false;
		NewsDAO dao = new NewsDAO();	
		result = dao.getResultWrite(vo);
		dao.close();
		return result;
	}
	
	//관리자 삭제하기
	public boolean getResultDelete(String nw_code) {
		boolean result = false;
		NewsDAO dao = new NewsDAO();	
		result = dao.getResultDelete(nw_code);
		dao.close();
		return result;
	}
}

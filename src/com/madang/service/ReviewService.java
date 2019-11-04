package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.ReviewDAO;
import com.madang.vo.ConcertVO;
import com.madang.vo.ReviewVO;

public class ReviewService {
	//후기 리스트 출력
	public ArrayList<ReviewVO> getResultListByDate(){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		ReviewDAO dao = new ReviewDAO();
		list = dao.getResultListByDate();
		
		return list;
	}
	
	//후기 리스트 출력
	public ArrayList<ReviewVO> getResultListByStar(){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		ReviewDAO dao = new ReviewDAO();
		list = dao.getResultListByStar();
		
		return list;
	}
	
	//공연 목록 출력
	public ArrayList<ConcertVO> getConcertList(){
		ArrayList<ConcertVO> clist = new ArrayList<ConcertVO>();
		ReviewDAO dao = new ReviewDAO();
		clist = dao.getConcertList();
		
		return clist;
	}

	
	//후기 글쓰기
	public boolean getResultWrite(ReviewVO vo){
		boolean result = false;
		ReviewDAO dao = new ReviewDAO();
		result = dao.getResultWrite(vo);
		
		return result;
	}
}

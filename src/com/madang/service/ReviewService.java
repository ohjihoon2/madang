package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.ReviewDAO;
import com.madang.vo.ConcertVO;
import com.madang.vo.ReviewReplyVO;
import com.madang.vo.ReviewVO;

public class ReviewService {
	//후기 리스트 출력
	public ArrayList<ReviewVO> getResultListByDate(String listOrder){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		ReviewDAO dao = new ReviewDAO();
		list = dao.getResultListByDate(listOrder);
		
		dao.close();
		return list;
	}
	
	//후기 리스트 출력
	public ArrayList<ReviewVO> getResultListByDate(){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		ReviewDAO dao = new ReviewDAO();
		list = dao.getResultListByDate();
		
		dao.close();
		return list;
	}
	
	//공연 목록 출력
	public ArrayList<ConcertVO> getConcertList(){
		ArrayList<ConcertVO> clist = new ArrayList<ConcertVO>();
		ReviewDAO dao = new ReviewDAO();
		clist = dao.getConcertList();
		
		dao.close();
		return clist;
	}

	
	//후기 글쓰기
	public boolean getResultWrite(ReviewVO vo){
		boolean result = false;
		ReviewDAO dao = new ReviewDAO();
		result = dao.getResultWrite(vo);
		
		dao.close();
		return result;
	}
	
	//내용 불러오기
	public ReviewVO getResultContent(String rv_code) {
		ReviewVO vo = new ReviewVO();
		ReviewDAO dao = new ReviewDAO();
		vo = dao.getResultContent(rv_code);
		
		dao.close();
		return vo;
	}
	
	//조회수 증가
	public void getResultUpdateHits(String rv_code) {
		ReviewDAO dao = new ReviewDAO();
		dao.getResultUpdateHits(rv_code);		
	}
	
	//리뷰 내용 업데이트
	public boolean getResultReviewUpdate(ReviewVO vo) {
		boolean result = false;
		ReviewDAO dao = new ReviewDAO();
		result = dao.getResultReviewUpdate(vo);
		
		dao.close();
		return result;
	}
	
	//댓글 리스트
	public ArrayList<ReviewReplyVO> getReplyList(String rv_code){
		ArrayList<ReviewReplyVO> list = new ArrayList<ReviewReplyVO>();
		ReviewDAO dao = new ReviewDAO();
		list = dao.getReplyList(rv_code);
		
		dao.close();
		return list;
	}
	
	//댓글 글쓰기
	public boolean getResultReplyWrite(ReviewReplyVO vo){
		boolean result = false;
		ReviewDAO dao = new ReviewDAO();
		result = dao.getResultReplyWrite(vo);
		
		dao.close();
		return result;
	}
	
	
	
	
}//class

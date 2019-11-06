package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.ReviewDAO;
import com.madang.vo.ConcertVO;
import com.madang.vo.ReviewReplyVO;
import com.madang.vo.ReviewVO;

public class ReviewService {
	//�ı� ����Ʈ ���
	public ArrayList<ReviewVO> getResultListByDate(String listOrder){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		ReviewDAO dao = new ReviewDAO();
		list = dao.getResultListByDate(listOrder);
		
		dao.close();
		return list;
	}
	
	//�ı� ����Ʈ ���
	public ArrayList<ReviewVO> getResultListByDate(){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		ReviewDAO dao = new ReviewDAO();
		list = dao.getResultListByDate();
		
		dao.close();
		return list;
	}
	
	//���� ��� ���
	public ArrayList<ConcertVO> getConcertList(){
		ArrayList<ConcertVO> clist = new ArrayList<ConcertVO>();
		ReviewDAO dao = new ReviewDAO();
		clist = dao.getConcertList();
		
		dao.close();
		return clist;
	}

	
	//�ı� �۾���
	public boolean getResultWrite(ReviewVO vo){
		boolean result = false;
		ReviewDAO dao = new ReviewDAO();
		result = dao.getResultWrite(vo);
		
		dao.close();
		return result;
	}
	
	//���� �ҷ�����
	public ReviewVO getResultContent(String rv_code) {
		ReviewVO vo = new ReviewVO();
		ReviewDAO dao = new ReviewDAO();
		vo = dao.getResultContent(rv_code);
		
		dao.close();
		return vo;
	}
	
	//��ȸ�� ����
	public void getResultUpdateHits(String rv_code) {
		ReviewDAO dao = new ReviewDAO();
		dao.getResultUpdateHits(rv_code);		
	}
	
	//���� ���� ������Ʈ
	public boolean getResultReviewUpdate(ReviewVO vo) {
		boolean result = false;
		ReviewDAO dao = new ReviewDAO();
		result = dao.getResultReviewUpdate(vo);
		
		dao.close();
		return result;
	}
	
	//��� ����Ʈ
	public ArrayList<ReviewReplyVO> getReplyList(String rv_code){
		ArrayList<ReviewReplyVO> list = new ArrayList<ReviewReplyVO>();
		ReviewDAO dao = new ReviewDAO();
		list = dao.getReplyList(rv_code);
		
		dao.close();
		return list;
	}
	
	//��� �۾���
	public boolean getResultReplyWrite(ReviewReplyVO vo){
		boolean result = false;
		ReviewDAO dao = new ReviewDAO();
		result = dao.getResultReplyWrite(vo);
		
		dao.close();
		return result;
	}
	
	
	
	
}//class

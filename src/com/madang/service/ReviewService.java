package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.ReviewDAO;
import com.madang.vo.ConcertVO;
import com.madang.vo.ReviewVO;

public class ReviewService {
	//�ı� ����Ʈ ���
	public ArrayList<ReviewVO> getResultListByDate(){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		ReviewDAO dao = new ReviewDAO();
		list = dao.getResultListByDate();
		
		return list;
	}
	
	//�ı� ����Ʈ ���
	public ArrayList<ReviewVO> getResultListByStar(){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		ReviewDAO dao = new ReviewDAO();
		list = dao.getResultListByStar();
		
		return list;
	}
	
	//���� ��� ���
	public ArrayList<ConcertVO> getConcertList(){
		ArrayList<ConcertVO> clist = new ArrayList<ConcertVO>();
		ReviewDAO dao = new ReviewDAO();
		clist = dao.getConcertList();
		
		return clist;
	}

	
	//�ı� �۾���
	public boolean getResultWrite(ReviewVO vo){
		boolean result = false;
		ReviewDAO dao = new ReviewDAO();
		result = dao.getResultWrite(vo);
		
		return result;
	}
}

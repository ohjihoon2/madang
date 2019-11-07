package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.NewsDAO;
import com.madang.dao.QandA_DAO;
import com.madang.vo.NewsVO;
import com.madang.vo.QandA_VO;

public class NewsService {

	//愿�由ъ옄-�뼵濡좊━�뒪�듃 媛��졇�삤湲�
	//can i delete this code?
	public ArrayList<NewsVO> getNewsListAdmin(){
		NewsDAO dao = new NewsDAO();	
		ArrayList<NewsVO> list = dao.getNewsListAdmin();
		dao.close();
		return list;
	}
	
	
	//愿�由ъ옄 �뾽�뜲�씠�듃_1.�궡�슜媛��졇�삤湲�
	public NewsVO getNewsContentAdmin(String nw_code) {
		NewsDAO dao = new NewsDAO();	
		NewsVO vo = dao.getNewsContentAdmin(nw_code);
		dao.close();
		return vo;
	}
	
	//愿�由ъ옄 �뾽�뜲�씠�듃_2.�궡�슜�닔�젙�븯湲�
	public boolean getResultUpdate(NewsVO vo) {
		boolean result = false;
		NewsDAO dao = new NewsDAO();	
		result = dao.getResultUpdate(vo);
		dao.close();
		return result;
	}
	
	
	//愿�由ъ옄 �벑濡앺븯湲�
	public boolean getResultWrite(NewsVO vo) {
		boolean result = false;
		NewsDAO dao = new NewsDAO();	
		result = dao.getResultWrite(vo);
		dao.close();
		return result;
	}
	
	//愿�由ъ옄 �궘�젣�븯湲�
	public boolean getResultDelete(String nw_code) {
		boolean result = false;
		NewsDAO dao = new NewsDAO();	
		result = dao.getResultDelete(nw_code);
		dao.close();
		return result;
	}
	
	public ArrayList<NewsVO> getResultNewsList(){
		ArrayList<NewsVO> list = new ArrayList<NewsVO>();
		NewsDAO dao = new NewsDAO();
		list = dao.getResultNewsList();
		dao.close();
		return list;
	}
	
	public ArrayList<NewsVO> getResultNewsListAdmin(int startCount, int endCount){
		ArrayList<NewsVO> list = new ArrayList<NewsVO>();
		NewsDAO dao = new NewsDAO();
		list = dao.getResultNewsListAdmin(startCount, endCount);
		dao.close();
		return list;
	}
	
	//Admin paging
	public int execTotalCount(){
		int result =0;
		NewsDAO dao = new NewsDAO();
		result = dao.execTotalCount();
		return result;
	}
}

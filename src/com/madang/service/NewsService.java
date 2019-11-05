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
	
}

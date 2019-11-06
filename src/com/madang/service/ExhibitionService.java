package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.ConcertDAO;
import com.madang.dao.ExhibitionDAO;
import com.madang.vo.ExhibitionVO;
import com.madang.vo.General_mem_VO;

public class ExhibitionService {

	public ExhibitionVO getResultExhibition(String code) {
		ExhibitionVO vo = new ExhibitionVO();
		
		ExhibitionDAO dao = new ExhibitionDAO();
		vo = dao.getResultExhibition(code);
		
		return vo;
	}
	
	public ArrayList<ExhibitionVO> getResultExhibitionList() {
		ArrayList<ExhibitionVO> list = new ArrayList<ExhibitionVO>();
		
		ExhibitionDAO dao = new ExhibitionDAO();
		
		list = dao.getResultExhibitionList();
		
		return list;
	}
	
	public General_mem_VO getResultMemInfo(String id) {
		ExhibitionDAO dao = new ExhibitionDAO();
		General_mem_VO vo = dao.getResultMemInfo(id);
		
		return vo;
	}
	
}

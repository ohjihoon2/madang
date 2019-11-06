package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.ExhibitionDAO;
import com.madang.vo.ExhibitionVO;

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
}

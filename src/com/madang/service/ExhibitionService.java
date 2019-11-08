package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.ExhibitionDAO;
import com.madang.vo.ExhibitionTicketVO;
import com.madang.vo.ExhibitionVO;
import com.madang.vo.General_mem_VO;
import com.madang.vo.PurchaseVO;

public class ExhibitionService {

	public ExhibitionVO getResultExhibition(String exhibitioCode) {
		ExhibitionVO vo = new ExhibitionVO();
		ExhibitionDAO dao = new ExhibitionDAO();
		vo = dao.getResultExhibition(exhibitioCode);
		
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
	
	public Boolean  getResultInsertPurchase(PurchaseVO cvo) {
		Boolean result = false;
		ExhibitionDAO dao = new ExhibitionDAO();
		result = dao.getResultInsertPurchase(cvo);
		
		return result;
	}
	
	public boolean getResultInsertTE(ExhibitionTicketVO vo) {
		boolean result = false;
		ExhibitionDAO dao = new ExhibitionDAO();
		result = dao.getResultInsertTE(vo);
		return result;
	}
	//Admin main list
	public ArrayList<ExhibitionVO> getListAdminMain(){
		ExhibitionDAO dao = new ExhibitionDAO();
		ArrayList<ExhibitionVO> list = dao.getListAdminMain();
		dao.close();
		
		if(list.size()<3) {
			for(int i=list.size(); i<3;i++) {
				ExhibitionVO vo = new ExhibitionVO();
				vo.setExhibition_code("");
				vo.setE_title("");
				vo.setE_sdate("");
				vo.setE_edate("");
				list.add(vo);
			}
		}
		return list;
	}
	
}

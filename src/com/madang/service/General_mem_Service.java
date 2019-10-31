package com.madang.service;

import com.madang.dao.General_mem_DAO;
import com.madang.vo.General_mem_VO;

public class General_mem_Service {
	
	/** Ãâ·Â */
	public General_mem_VO getContent(String id) {
		General_mem_VO vo=new General_mem_VO();
		General_mem_DAO dao=new General_mem_DAO();
		vo=dao.getContent(id);
		dao.close();
		return vo;
	}
	
	/** ¼öÁ¤ */
	public boolean getResultUpdate(General_mem_VO vo) {
		boolean result=false;
		General_mem_DAO dao=new General_mem_DAO();
		result=dao.getResultUpdate(vo);
		dao.close();
		return result;
	}
	
	/** Å»Åð */
	public boolean getResultOut(String id) {
		boolean result=false;
		General_mem_DAO dao=new General_mem_DAO();
		result=dao.getResultOut(id);
		dao.close();
		return result;
	}
}

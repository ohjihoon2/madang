package com.madang.service;

import com.madang.dao.Group_mem_DAO;
import com.madang.vo.Group_mem_VO;

public class Group_mem_Service {
	
	/** Ãâ·Â */
	public Group_mem_VO getContent(String id) {
		Group_mem_VO vo=new Group_mem_VO();
		Group_mem_DAO dao=new Group_mem_DAO();
		vo=dao.getContent(id);
		dao.close();
		return vo;
	}
	
	/** ¼öÁ¤ */
	public boolean getResultUpdate(Group_mem_VO vo) {
		boolean result=false;
		Group_mem_DAO dao=new Group_mem_DAO();
		result=dao.getResultUpdate(vo);
		dao.close();
		return result;
	}
	
	/** Å»Åð */
	public boolean getResultOut(String id, String pw) {
		boolean result=false;
		Group_mem_DAO dao=new Group_mem_DAO();
		result=dao.getResultOut(id, pw);
		dao.close();
		return result;
	}
}

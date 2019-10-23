package com.madang.service;

import com.madang.dao.General_member_DAO;
import com.madang.vo.General_member_VO;

public class General_member_Service {
	
	public General_member_VO getContent(String id) {
		General_member_VO vo=new General_member_VO();
		General_member_DAO dao=new General_member_DAO();
		vo=dao.getContent(id);
		dao.close();
		return vo;
	}
	
	
	
	public boolean getResultUpdate(General_member_VO vo) {
		boolean result=false;
		General_member_DAO dao=new General_member_DAO();
		dao.getResultUpdate(vo);
		dao.close();
		return result;
	}
}

package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.QandA_DAO;
import com.madang.vo.QandA_VO;

public class QandA_Service {
	/** 등록 */
	public boolean getResultWrite(QandA_VO vo) {
		boolean result=false;
		QandA_DAO dao=new QandA_DAO();
		result=dao.getResultWrite(vo);
		dao.close();
		return result;
	}
	
	/** 내용 출력 */
	public QandA_VO getContent(String qa_code) {
		QandA_DAO dao=new QandA_DAO();
		QandA_VO vo=new QandA_VO();
		vo=dao.getContent(qa_code);
		dao.close();
		return vo;
	}
	
	/** 전체 리스트 */
	public ArrayList<QandA_VO> getList(String id) {
		ArrayList<QandA_VO> list=new ArrayList<QandA_VO>();
		QandA_DAO dao=new QandA_DAO();
		list=dao.getList(id);
		dao.close();
		return list;
	}
	
	/** 삭제 */
	public boolean getResultDelete(String qa_code) {
		boolean result=false;
		QandA_DAO dao=new QandA_DAO();
		result=dao.getResultDelete(qa_code);
		dao.close();
		return result;
	}
}

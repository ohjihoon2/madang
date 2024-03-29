package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.ExhibitionDAO;
import com.madang.dao.NoticeDAO;
import com.madang.dao.QandA_DAO;
import com.madang.vo.NoticeVO;
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
	
	//admin main list
	public ArrayList<QandA_VO> getListAdminMain(int qna){
		QandA_DAO dao = new QandA_DAO();
		ArrayList<QandA_VO> list = dao.getListAdminMain(qna);
		dao.close();
		return list;
	}
	
	//Admin main list count
	public int getAdminMainCount() {
		QandA_DAO dao = new QandA_DAO();
		int count = dao.getAdminMainCount();
		dao.close();
		return count;
	}
	
	//Admin list
	public ArrayList<QandA_VO> getQandAListAdmin(int startCount, int endCount){
		QandA_DAO dao=new QandA_DAO();
		ArrayList<QandA_VO> list = dao.getQandAListAdmin(startCount, endCount);
		dao.close();
		return list;
	}
	
	//Admin contents
	public QandA_VO getQnAContentsAdmin(String qa_code) {
		QandA_DAO dao=new QandA_DAO();
		QandA_VO vo = dao.getQnAContentsAdmin(qa_code);
		dao.close();
		return vo;
	}
	
	//Admin replys
	public boolean getResultReply(String qa_code, String qa_acontents) {
		QandA_DAO dao=new QandA_DAO();
		boolean result = dao.getResultReply(qa_code, qa_acontents);
		dao.close();
		return result;
	}
	
	//Admin paging
	public int execTotalCount(){
		int result =0;
		QandA_DAO dao = new QandA_DAO();
		result = dao.execTotalCount();
		return result;
	}
	
	
}

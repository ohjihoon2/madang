package com.madang.service;

import java.util.ArrayList;

import com.madang.dao.ExhibitionDAO;
import com.madang.dao.Rental_DAO;
import com.madang.vo.Group_mem_VO;
import com.madang.vo.Rental_VO;

public class Rental_Service {
	/** 리스트 출력 */
	public ArrayList<Rental_VO> getList(String id){
		ArrayList<Rental_VO> list=new ArrayList<Rental_VO>();
		Rental_DAO dao=new Rental_DAO();
		list=dao.getList(id);
		dao.close();
		return list;
	}
	
	/** 상세내역 출력 */
	public Rental_VO getContent(String rental_code, String id) {
		Rental_VO vo=new Rental_VO();
		Rental_DAO dao=new Rental_DAO();
		vo=dao.getContent(rental_code, id);
		dao.close();
		return vo;
	}
	
	/** 취소 신청 */
	public boolean getResultcancel(String rental_code) {
		boolean result=false;
		Rental_DAO dao=new Rental_DAO();
		result=dao.getResultcancel(rental_code);
		dao.close();
		return result;
	}
	
	//admin main list
	public ArrayList<Rental_VO> getListAdminMain(){
		Rental_DAO dao = new Rental_DAO();
		ArrayList<Rental_VO> list = dao.getListAdminMain();
		dao.close();
		return list;
	}
	
	
	//Admin main list count
	public int getAdminMainCount() {
		Rental_DAO dao = new Rental_DAO();
		int count = dao.getAdminMainCount();
		dao.close();
		return count;
	}
	
	
///////////////////////////////////////////////////////////////////concert	
	//admin list_concert
	public ArrayList<Rental_VO> getListAdminConcert(int startCount, int endCount){
		Rental_DAO dao = new Rental_DAO();
		ArrayList<Rental_VO> list = dao.getListAdminConcert(startCount, endCount);
		dao.close();
		return list;
	}
	
	
	//Admin paging_concert
	public int execTotalCountConcert(){
		int result =0;
		Rental_DAO dao = new Rental_DAO();
		result = dao.execTotalCountConcert();
		dao.close();
		return result;
	}

	
	//Admin bring the contents
	public Rental_VO getRentalContents_con_Admin(String retal_code) {
		Rental_DAO dao = new Rental_DAO();
		Rental_VO vo = dao.getRentalContents_con_Admin(retal_code);
		return vo;
	}
		
	

//////////////////////////////////////////////////////////////////////////////exhibition
	//admin list_exhibition
	public ArrayList<Rental_VO> getListAdminExhibition(int startCount, int endCount){
		Rental_DAO dao = new Rental_DAO();
		ArrayList<Rental_VO> list = dao.getListAdminExhibition(startCount, endCount);
		dao.close();
		return list;
	}
	
	
	//Admin paging_exhibition
	public int execTotalCountExhibition(){
		int result =0;
		Rental_DAO dao = new Rental_DAO();
		result = dao.execTotalCountExhibition();
		dao.close();
		return result;
	}
	
	
	//Admin bring the contents
	public Rental_VO getRentalContents_exh_Admin(String retal_code) {
		Rental_DAO dao = new Rental_DAO();
		Rental_VO vo = dao.getRentalContents_exh_Admin(retal_code);
		return vo;
	}
	
	
	
	
////////////////////////////////////////////////////////////////	
	//rental request (insert)
	public boolean getResultRentalRequest(Rental_VO vo) {
		System.out.println("service"+vo.getR_place());
		boolean result = false;
		Rental_DAO dao=new Rental_DAO();
		result=dao.getResultRentalRequest(vo);
		dao.close();
		return result;
	}
	
	
	//+) detail - rental applicant info
		public Group_mem_VO getRentalApplicantInfoAdmin(String r_id) {
			Rental_DAO dao = new Rental_DAO();
			Group_mem_VO vo = dao.getRentalApplicantInfoAdmin(r_id);
			return vo;
		}
		
		//detail accept request
		public boolean getResultUpdate(String rental_code) {
			Rental_DAO dao = new Rental_DAO();
			boolean result = dao.getResultUpdate(rental_code);
			return result;
		}
		
		//detail cancel request
		public boolean getResultCancel(String rental_code) {
			Rental_DAO dao = new Rental_DAO();
			boolean result = dao.getResultCancel(rental_code);
			return result;
		}
}

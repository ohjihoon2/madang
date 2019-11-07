package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.ExhibitionTicketVO;
import com.madang.vo.ExhibitionVO;
import com.madang.vo.General_mem_VO;
import com.madang.vo.PurchaseVO;

public class ExhibitionDAO {
	String url ="jdbc:oracle:thin:@211.63.89.214:1521";
	String user ="madang";
	String pass ="1234";
	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	//1,2
	public ExhibitionDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url,user,pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//3
	public void getPreparedStatement(String sql) {
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * show  Exhibition list
	 * @return
	 */
	public ArrayList<ExhibitionVO> getResultExhibitionList() {
		ArrayList<ExhibitionVO> list = new ArrayList<ExhibitionVO>();
		String sql = "select exhibition_code, e_title, TO_CHAR(e_sdate,'YYYY.MM.DD(DY)'),   TO_CHAR(e_edate,'YYYY.MM.DD(DY)'), e_place, e_poster , TO_CHAR(E_SDATE, 'YYMMDD') as SDAY , TO_CHAR(E_EDATE, 'YYMMDD') as EDAY from exhibition";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ExhibitionVO vo = new ExhibitionVO();
				
				vo.setExhibition_code(rs.getString(1));
				vo.setE_title(rs.getString(2));
				vo.setE_sdate(rs.getString(3));
				vo.setE_edate(rs.getString(4));
				vo.setE_place(rs.getString(5));
				vo.setE_poster(rs.getString(6));
				vo.setSday(rs.getString(7));
				vo.setEday(rs.getString(8));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * show  Exhibition detail 
	 * @return
	 */
	public ExhibitionVO getResultExhibition(String exhibitioCode) {
		ExhibitionVO vo = new ExhibitionVO();
		String sql = "select exhibition_code,e_title, e_sdate,  e_edate, e_etime, e_place, e_rating, e_genre, e_price, e_host, e_poster, e_sposter, e_info_poster, e_info_sposter, e_contact, TO_CHAR(E_SDATE, 'YYYY-MM-DD') as SNDAY , TO_CHAR(E_EDATE, 'YYYY-MM-DD') as ENDAY  from exhibition where exhibition_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, exhibitioCode);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setExhibition_code(rs.getString(1));
				vo.setE_title(rs.getString(2));
				vo.setE_sdate(rs.getString(3));
				vo.setE_edate(rs.getString(4));
				vo.setE_etime(rs.getString(5));
				vo.setE_place(rs.getString(6));
				vo.setE_rating(rs.getString(7));
				vo.setE_genre(rs.getString(8));
				 vo.setE_price(rs.getInt(9));
				 vo.setE_host(rs.getString(10));
				vo.setE_poster(rs.getString(11));
				vo.setE_sposter(rs.getString(12));
				vo.setE_info_poster(rs.getString(13));
				vo.setE_info_sposter(rs.getString(14));
				vo.setE_contact(rs.getString(15));
				vo.setSnday(rs.getString(16));
				vo.setEnday(rs.getString(17));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	/**
	 * getMemberInfo
	 * @param id
	 * @return
	 */
	public General_mem_VO getResultMemInfo(String id) {
		General_mem_VO vo = new General_mem_VO();
		String sql = "select id, name, to_char(birth, 'yymmdd') birth, phone1, phone2, phone3, email_addr from general_mem where id = ?";
		
		getPreparedStatement(sql);
		try {
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setId(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setBirth(rs.getString(3));
				vo.setPhone1(rs.getString(4));
				vo.setPhone2(rs.getString(5));
				vo.setPhone3(rs.getString(6));
				vo.setEmail_addr(rs.getString(7));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	public Boolean getResultInsertPurchase(PurchaseVO cvo) {
		Boolean result = false;
		String sql = "insert into purchase values('p_'||LPAD(to_char(SQU_PURCHASE_CODE.NEXTVAL),3,'0'),?,?,?,?,?,?,SYSDATE)";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, cvo.getMem_id());
			pstmt.setString(2, cvo.getCe_code());
			pstmt.setString(3, cvo.getTce_cdate());
			pstmt.setString(4, cvo.getTce_paym());
			pstmt.setString(5, cvo.getTce_payw());
			pstmt.setString(6, cvo.getTce_pays());
			
			int val = pstmt.executeUpdate();
			if(val !=0) {
				result = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * insert concert ticket
	 * @return
	 */
	public boolean getResultInsertTE(ExhibitionTicketVO vo) {
		boolean result = false;
		String sql = "insert all"
				+ "			into ticket_Exhibition values( 'te_'||LPAD(to_char(SQU_TICKET_EXHIBITION_CODE.NEXTVAL),3,'0' ),?,?,?,?,?,?,?,?,?,?,?,?,?,?,p_code,sysdate)"
				+ "			select rownum rno, p_code"
				+ "			from (SELECT * FROM PURCHASE"
				+"			WHERE TCE_CODE=? "  
				+"			ORDER BY P_CODE DESC)" 
				+"			where rownum=1";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getExhibition_code());
			pstmt.setString(2, vo.getTe_cplace());
			pstmt.setInt(3, vo.getTe_cticket());
			pstmt.setInt(4, vo.getTe_cancelc());
			pstmt.setString(5, vo.getTe_canceld());
			pstmt.setInt(6, vo.getTe_price());
			pstmt.setString(7, vo.getTe_recive());
			pstmt.setString(8, vo.getTe_id());
			pstmt.setString(9, vo.getTe_name());
			pstmt.setString(10, vo.getTe_birth());
			pstmt.setString(11, vo.getTe_phone1());
			pstmt.setString(12, vo.getTe_phone2());
			pstmt.setString(13, vo.getTe_phone3());
			pstmt.setString(14, vo.getTe_email());
			pstmt.setString(15, vo.getExhibition_code());
			
			int val = pstmt.executeUpdate();
			
			
			if(val !=0) {
				result = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//6
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {e.printStackTrace();}
	}
}

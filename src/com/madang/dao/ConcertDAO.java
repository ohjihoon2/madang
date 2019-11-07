package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.ConcertTicketVO;
import com.madang.vo.ConcertVO;
import com.madang.vo.General_mem_VO;
import com.madang.vo.PurchaseVO;

public class ConcertDAO {

	String url ="jdbc:oracle:thin:@211.63.89.214:1521";
	String user ="madang";
	String pass ="1234";
	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	//1,2
	public ConcertDAO() {
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
	
	//4~5
	
	/**
	 * ConcertList 遺덈윭�삤湲�
	 * @return
	 */
	public ArrayList<ConcertVO> getConcertInfo() {
		ArrayList<ConcertVO> list = new ArrayList<ConcertVO>();
		
		String sql = "SELECT CONCERT_CODE, C_TITLE, TO_CHAR(C_SDATE,'YY.MM.DD(DY)'), TO_CHAR(C_EDATE, 'YY.MM.DD(DY)'), C_PLACE, C_PRICE,  C_POSTER, TO_CHAR(C_SDATE, 'YYMMDD') as SDAY , TO_CHAR(C_EDATE, 'YYMMDD') as EDAY  from concert order by concert_code asc";
		
		getPreparedStatement(sql);
		try {
			
			rs =	pstmt.executeQuery();
			
			while(rs.next()) {
				ConcertVO vo = new ConcertVO();
				
				vo.setConcert_code(rs.getString(1));
				vo.setC_title(rs.getString(2));
				vo.setC_sdate(rs.getString(3));
				vo.setC_edate(rs.getString(4));
				vo.setC_place(rs.getString(5));
				vo.setC_price(rs.getInt(6));
				vo.setC_poster(rs.getString(7));
				vo.setSday(rs.getString(8));
				vo.setEday(rs.getString(9));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * concert detail contents
	 * @param code
	 * @return
	 */
	public ConcertVO getResultConcertDetail(String code) {
		ConcertVO vo = new ConcertVO();

		String sql =  "SELECT CONCERT_CODE, C_TITLE,TO_CHAR(C_SDATE,'YY.MM.DD(DY)'), TO_CHAR(C_EDATE,'YY.MM.DD(DY)'),C_TIME, C_STIME,C_PLACE,C_RATING,C_GENRE,C_PRICE,C_HOST,C_POSTER,C_SPOSTER,C_INFO_POSTER,C_INFO_SPOSTER,C_CONTACT , TO_CHAR(C_SDATE, 'YYYY-MM-DD') as SNDAY , TO_CHAR(C_EDATE, 'YYYY-MM-DD') as ENDAY  FROM CONCERT WHERE CONCERT_CODE = ?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, code);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setConcert_code( rs.getString(1));
				vo.setC_title(rs.getString(2));
				vo.setC_sdate(rs.getString(3));
				vo.setC_edate(rs.getString(4));
				vo.setC_time(rs.getInt(5));
				vo.setC_stime(rs.getString(6));
				vo.setC_place(rs.getString(7));
				vo.setC_rating(rs.getString(8));
				vo.setC_genre(rs.getString(9));
				vo.setC_price(rs.getInt(10));
				vo.setC_host(rs.getString(11));
				vo.setC_poster(rs.getString(12));
				vo.setC_sposter(rs.getString(13));
				vo.setC_info_poster(rs.getString(14));
				vo.setC_info_sposter(rs.getString(15));
				vo.setC_contact(rs.getString(16));
				vo.setSnday(rs.getString(17));
				vo.setEnday(rs.getString(18));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	
	public String getResultSeats(String code, String datetime) {
		String result = "";

		String sql =  "SELECT "+ 
				"            LISTAGG(TC_CSEAT,'')"+ 
				"                WITHIN GROUP(ORDER BY TC_CDATE ) AS TC_CSEAT" + 
				" FROM TICKET_CONCERT" + 
				" WHERE CONCERT_CODE=? AND TC_CDATE=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, code);
			pstmt.setString(2, datetime);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * ticket getMemberInfo
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

	/**
	 * insert concert ticket
	 * @return
	 */
	public boolean getResultInsertTC(ConcertTicketVO vo) {
		boolean result = false;
		String sql = "insert all"
				+ "			into ticket_concert values( 'tc_'||LPAD(to_char(SQU_TICKET_CONCERT_CODE.NEXTVAL),3,'0' ),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,p_code,sysdate,?)"
				+ "			select rownum rno, p_code"
				+ "			from (SELECT * FROM PURCHASE"
				+"			WHERE TCE_CODE=? "  
				+"			ORDER BY P_CODE DESC)" 
				+"			where rownum=1";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getConcert_code());
			pstmt.setString(2, vo.getTc_cdate());
			pstmt.setString(3, vo.getTc_cplace());
			pstmt.setString(4, vo.getTc_cseat());
			pstmt.setInt(5, vo.getTc_cancelc());
			pstmt.setString(6, vo.getTc_canceld());
			pstmt.setInt(7, vo.getTc_price());
			pstmt.setString(8, vo.getTc_recive());
			pstmt.setString(9, vo.getTc_id());
			pstmt.setString(10, vo.getTc_name());
			pstmt.setString(11, vo.getTc_birth());
			pstmt.setString(12, vo.getTc_phone1());
			pstmt.setString(13, vo.getTc_phone2());
			pstmt.setString(14, vo.getTc_phone3());
			pstmt.setString(15, vo.getTc_email());
			pstmt.setString(16, vo.getTc_d());
			pstmt.setString(17, vo.getConcert_code());
			
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
	 * Purchase insert
	 * @param cvo
	 * @return
	 */
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
	
	
	//6
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {e.printStackTrace();}
	}
	
	
	
}

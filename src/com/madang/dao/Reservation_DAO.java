package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.Concert_Reserv_VO;

public class Reservation_DAO {
	//Field
	String url="jdbc:oracle:thin:@211.63.89.214:1521";
	String user="madang";
	String pass="1234";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	
	//Constructor
	public Reservation_DAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {e.printStackTrace();}
	}
	
	//Method
	public void getPreparedStatement(String sql) {
		try {
			pstmt=conn.prepareStatement(sql);
		} catch (Exception e) {e.printStackTrace();}
	}
	
	
	/** 공연 예매내역 리스트 */
	public ArrayList<Concert_Reserv_VO> getConcertReservList(String id) {
		ArrayList<Concert_Reserv_VO> list=new ArrayList<Concert_Reserv_VO>();
		
		String sql="select to_char(tc_time, 'yyyy-mm-dd'), tc_code, c_title, t.tc_cdate, tc_cseat, tc_pays\r\n" + 
				"  from purchase p, ticket_concert t, concert c \r\n" + 
				"  where p.p_code=t.p_code and t.concert_code=c.concert_code\r\n" + 
				"    and t.tc_cdate is not null\r\n" + 
				"    and mem_id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Concert_Reserv_VO vo=new Concert_Reserv_VO();
				vo.setTc_time(rs.getString(1));
				vo.setTc_code(rs.getString(2));
				vo.setC_title(rs.getString(3));
				vo.setTc_cdate(rs.getString(4));
				vo.setTc_cseat(rs.getString(5));
				vo.setTc_pays(rs.getString(6));
				list.add(vo);
			}
		} catch (Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	
	/** 공연 예매 상세내역 */
	public Concert_Reserv_VO getConcertReservContent(String id, String tc_code) {
		Concert_Reserv_VO vo=new Concert_Reserv_VO();
		
		String sql="select p_date, tc_payw, tc_pays, tc_price, p.p_code, c.concert_code, \r\n" + 
				"  tc_code, tc_time, t.tc_cdate, tc_cseat, tc_name, tc_phone1, tc_phone2, tc_phone3, tc_recive, tc_canceld, \r\n" + 
				"  c_sposter, c_title, c_place,\r\n" + 
				"  floor(sysdate-to_date(tc_time))\r\n" + 
				"  from purchase p, ticket_concert t, concert c \r\n" + 
				"  where p.p_code=t.p_code and t.concert_code=c.concert_code\r\n" + 
				"    and t.tc_cdate is not null\r\n" + 
				"    and mem_id=? and tc_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, tc_code);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setP_date(rs.getString(1));
				vo.setTc_payw(rs.getString(2));
				vo.setTc_pays(rs.getString(3));
				vo.setTc_price2(rs.getInt(4));
				vo.setP_code(rs.getString(5));
				vo.setConcert_code(rs.getString(6));
				
				vo.setTc_code(rs.getString(7));
				vo.setTc_time(rs.getString(8));
				vo.setTc_cdate(rs.getString(9));
				vo.setTc_cseat(rs.getString(10));
				vo.setTc_name(rs.getString(11));
				vo.setTc_phone(rs.getString(12)+"-"+rs.getString(13)+"-"+rs.getString(14));
				vo.setTc_recive(rs.getString(15));
				vo.setTc_canceld(rs.getString(16));
				
				vo.setC_sposter(rs.getString(17));
				vo.setC_title(rs.getString(18));
				vo.setC_place(rs.getString(19));
				
				vo.setStatus(rs.getInt(20));
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	
	/** 공연 예매취소 */
	public boolean getConcertReservDelete(String id, String tc_code) {
		boolean result=false;
		
		String sql="delete from ticket_concert where tc_id=? and tc_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, tc_code);
			
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	
	
	/** 전시 예매내역 리스트 */
	
	
	
	/** 전시 예매 상세내역 */
	
	
	
	/** 전시 예매취소 */
	
	
	
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {e.printStackTrace();}
	}
}

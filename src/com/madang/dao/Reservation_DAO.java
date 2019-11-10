package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.Concert_Reserv_VO;
import com.madang.vo.Exhib_Reserv_VO;

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
	
	
	/** ���� ���ų��� ����Ʈ */
	public ArrayList<Concert_Reserv_VO> getConcertReservList(String id) {
		ArrayList<Concert_Reserv_VO> list=new ArrayList<Concert_Reserv_VO>();
		
		String sql="select to_char(tc_time, 'yyyy-mm-dd'), tc_code, c_title, t.tc_cdate, tc_cseat, tc_pays,\r\n" + 
				"  floor(sysdate-to_date(tc_d))\r\n" + 
				"  from purchase p, ticket_concert t, concert c \r\n" + 
				"  where p.p_code=t.p_code and t.concert_code=c.concert_code\r\n" + 
				"    and p.tc_cdate is not null\r\n" + 
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
				vo.setStatus(rs.getInt(7));
				list.add(vo);
			}
		} catch (Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	
	/** ���� ���� �󼼳��� */
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
	
	
	/** ���� ���ų��� ����Ʈ */
	public ArrayList<Exhib_Reserv_VO> getExhibReservList(String id) {
		ArrayList<Exhib_Reserv_VO> list=new ArrayList<Exhib_Reserv_VO>();
		
		String sql="select to_char(te_time, 'yyyy-mm-dd'), te_code, e_title, to_char(e_sdate, 'yyyy-mm-dd'), to_char(e_edate, 'yyyy-mm-dd'), te_cticket, tc_pays,\r\n" + 
				"  floor(sysdate-e_edate)\r\n" + 
				"  from purchase p, ticket_exhibition t, exhibition e \r\n" + 
				"  where p.p_code=t.p_code and t.exhibition_code=e.exhibition_code\r\n" + 
				"    and p.tc_cdate is null\r\n" + 
				"    and mem_id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Exhib_Reserv_VO vo=new Exhib_Reserv_VO();
				vo.setTe_time(rs.getString(1));
				vo.setTe_code(rs.getString(2));
				vo.setE_title(rs.getString(3));
				vo.setE_sdate(rs.getString(4));
				vo.setE_edate(rs.getString(5));
				vo.setTe_cticket(rs.getInt(6));
				vo.setTc_pays(rs.getString(7));
				list.add(vo);
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	
	
	/** ���� ���� �󼼳��� */
	public Exhib_Reserv_VO getExhibReservContent(String id, String te_code) {
		Exhib_Reserv_VO vo=new Exhib_Reserv_VO();
		
		String sql="select p_date, tc_payw, tc_pays, te_price, p.p_code, e.exhibition_code, \r\n" + 
				"  te_code, te_cticket, \r\n" + 
				"	te_recive, te_name, te_phone1, te_phone2, te_phone3, \r\n" + 
				"  te_time, te_canceld, \r\n" + 
				"  e_title, e_place, to_char(e_sdate, 'yyyy-mm-dd'), to_char(e_edate, 'yyyy-mm-dd'), e_etime, e_sposter, \r\n" + 
				"  floor(sysdate-e_edate) \r\n" + 
				"  from purchase p, ticket_exhibition t, exhibition e \r\n" + 
				"  where p.p_code=t.p_code and t.exhibition_code=e.exhibition_code \r\n" + 
				"    and p.tc_cdate is null \r\n" + 
				"    and mem_id=? and te_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, te_code);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setP_date(rs.getString(1));
				vo.setTc_payw(rs.getString(2));
				vo.setTc_pays(rs.getString(3));
				vo.setTe_price(rs.getInt(4));
				vo.setP_code(rs.getString(5));
				vo.setExhibition_code(rs.getString(6));
				
				vo.setTe_code(rs.getString(7));
				vo.setTe_cticket(rs.getInt(8));
				vo.setTe_recive(rs.getString(9));
				vo.setTe_name(rs.getString(10));
				vo.setTe_phone(rs.getString(11)+"-"+rs.getString(12)+"-"+rs.getString(13));
				
				vo.setTe_time(rs.getString(14));
				vo.setTe_canceld(rs.getString(15));
				
				vo.setE_title(rs.getString(16));
				vo.setE_place(rs.getString(17));
				vo.setE_sdate(rs.getString(18));
				vo.setE_edate(rs.getString(19));
				vo.setE_etime(rs.getString(20));
				vo.setE_sposter(rs.getString(21));
				
				vo.setStatus(rs.getInt(22));
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return vo;	
	}

	
	/** ������� */
	public boolean getReservDelete(String id, String p_code) {
		boolean result=false;
		
		String sql="delete from purchase where mem_id=? and p_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, p_code);
			
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {e.printStackTrace();}
	}
}

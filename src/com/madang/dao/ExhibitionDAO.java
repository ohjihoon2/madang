package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.ConcertVO;
import com.madang.vo.ExhibitionVO;

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
	public ExhibitionVO getResultExhibition(String code) {
		ExhibitionVO vo = new ExhibitionVO();
		String sql = "select exhibition_code,e_title, e_sdate,  e_edate, e_etime, e_place, e_rating, e_genre, e_price, e_host, e_poster, e_sposter, e_info_poster, e_info_sposter, e_contact from exhibition where exhibition_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, code);
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
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
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

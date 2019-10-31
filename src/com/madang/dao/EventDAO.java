package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.EventVO;

public class EventDAO {
	//field
		String url ="jdbc:oracle:thin:@localhost:1521";
		String user ="madang";
		String pass ="1234";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
	public EventDAO() {
		try {
			Class.forName("Oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url,user,pass);
			
		}catch(Exception e) {e.printStackTrace();}				
	}
	
	public void getPreparedStatement(String sql) {
		try {
			pstmt = conn.prepareStatement(sql);
			
		}catch(Exception e) {e.printStackTrace();}
	}
	
	/** 이벤트 리스트 전체 출력 **/
	public ArrayList<EventVO> getResultList(){
		ArrayList<EventVO> list = new ArrayList<EventVO>();
		String sql = "SELECT ev_code, ev_title, ev_sthumbnail,ev_sdetail, to_char(ev_date,'yyyy.mm.dd.'),ev_status, ev_hits"
				+ " FROM EVENT ORDER BY BDATE DESC";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				EventVO vo = new EventVO();
				
				vo.setEv_code(rs.getString(1));
				vo.setEv_title(rs.getString(2));
				vo.setEv_sthumbnail(rs.getString(3));
				vo.setEv_sdetail(rs.getString(4));
				vo.setEv_date(rs.getString(5));
				vo.setEv_status(rs.getString(6));
				vo.setEv_hits(rs.getInt(7));
				
				list.add(vo);
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	/**  현재 진행중인 이벤트 리스트 출력 **/
	public ArrayList<EventVO> getResultIngList(){
		
		ArrayList<EventVO> elist = new ArrayList<EventVO>();
		String sql = "select ev_code, ev_title, ev_sthumbnail,ev_sdetail, to_char(ev_date,'yyyy.mm.dd.'),to_char(ev_sdate,'yyyy.mm.dd.'),to_char(ev_edate,'yyyy.mm.dd.'), ev_status, ev_hits"
				+ " from event"
				+ " where ev_edate>sysdate"
				+ " order by ev_date desc";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				EventVO vo = new EventVO();
				
				vo.setEv_code(rs.getString(1));
				vo.setEv_title(rs.getString(2));
				vo.setEv_sthumbnail(rs.getString(3));
				vo.setEv_sdetail(rs.getString(4));
				vo.setEv_date(rs.getString(5));
				vo.setEv_sdate(rs.getString(6));
				vo.setEv_edate(rs.getString(7));
				vo.setEv_status(rs.getString(8));
				vo.setEv_hits(rs.getInt(9));
				
				elist.add(vo);
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return elist;
	}
	
	/** Contents VO출력 **/
	public EventVO getResultVO(String ev_code) {
		EventVO vo = new EventVO();
		String sql = "select * from event where ev_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, ev_code);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setEv_code(rs.getString(1));
				vo.setEv_title(rs.getString(2));
				vo.setEv_sthumbnail(rs.getString(3));
				vo.setEv_sdetail(rs.getString(4));
				vo.setEv_date(rs.getString(5));
				vo.setEv_sdate(rs.getString(6));
				vo.setEv_edate(rs.getString(7));
				vo.setEv_status(rs.getString(8));
				vo.setEv_hits(rs.getInt(9));
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return vo;
	}


}

package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.Bookmark_VO;

public class Bookmark_DAO {
	//Field
	String url="jdbc:oracle:thin:@211.63.89.214:1521";
	String user="madang";
	String pass="1234";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//Constructor
	public Bookmark_DAO() {
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
	
	
	/** 공연 리스트 출력 */
	public ArrayList<Bookmark_VO> getConcertList(String id) {
		ArrayList<Bookmark_VO> list=new ArrayList<Bookmark_VO>();
		
		String sql="select bmark_code, bookmark.concert_code, c_title, to_char(c_sdate, 'yyyy.mm.dd'), to_char(c_edate, 'yyyy.mm.dd'), c_place, c_sposter from bookmark, concert\r\n" + 
				"  where bookmark.concert_code = concert.concert_code and id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Bookmark_VO cvo=new Bookmark_VO();
				cvo.setBmark_code(rs.getString(1));
				cvo.setConcert_code(rs.getString(2));
				cvo.setC_title(rs.getString(3));
				cvo.setC_sdate(rs.getString(4));
				cvo.setC_edate(rs.getString(5));
				cvo.setC_place(rs.getString(6));
				cvo.setC_sposter(rs.getString(7));
				list.add(cvo);
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	
	/** 전시 리스트 출력 */
	public ArrayList<Bookmark_VO> getExhibitionList(String id) {
		ArrayList<Bookmark_VO> list=new ArrayList<Bookmark_VO>();
		
		String sql="select bmark_code, bookmark.exhib_code, e_title, to_char(e_sdate, 'yyyy.mm.dd'), to_char(e_edate, 'yyyy.mm.dd'), e_place, e_sposter from bookmark, exhibition\r\n" + 
				"   where bookmark.exhib_code = exhibition.exhibition_code and id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Bookmark_VO evo=new Bookmark_VO();
				
				
				list.add(evo);
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	
	/** 등록 */
	public boolean getResultAdd() {
		boolean result=false;
		
		String sql="";
		getPreparedStatement(sql);
		
		try {
			
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	/** 삭제 */
	public boolean getResultDelete() {
		boolean result=false;
		
		String sql="";
		getPreparedStatement(sql);
		
		try {
			
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

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
	
	
	/** 공연 북마크 여부 */
	public boolean getCheckConcertBmark(String concert_code, String id) {
		boolean result=false;
		
		String sql="select count(*) from bookmark, concert where bookmark.concert_code = concert.concert_code \r\n" + 
				"  and id=? and concert.concert_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, concert_code);
			
			rs=pstmt.executeQuery();
			
			int val=0;
			if(rs.next()) val=rs.getInt(1);
			if(val!=0) result=true;
			
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	/** 공연 북마크 코드 */
	public String getConcertBmarkCode(String concert_code, String id) {
		String bmark_code="";
		
		String sql="select bmark_code from bookmark, concert where bookmark.concert_code = concert.concert_code \r\n" + 
				"  and id=? and concert.concert_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, concert_code);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) bmark_code=rs.getString(1);
			
		} catch (Exception e) {e.printStackTrace();}
		
		return bmark_code;
	}
	
	
	/** 전시 북마크 여부 */
	public boolean getCheckExhibBmark(String exhib_code, String id) {
		boolean result=false;
		
		String sql="";
		getPreparedStatement(sql);
		
		try {
			
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	/** 전시 북마크 코드 */
	public String getExhibBmarkCode(String concert_code, String id) {
		String bmark_code="";
		
		String sql="";
		getPreparedStatement(sql);
		
		try {
			
		} catch (Exception e) {e.printStackTrace();}
		
		return bmark_code;
	}
	
	
	/** 등록 */
	public int getResultAdd(String concert_code, String id) {
		int result=0;
		
		String sql="insert into bookmark values(('bm'||lpad(sequ_bookmark.nextval,4,'0')), ?, ?, null)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, concert_code);
			
			result=pstmt.executeUpdate();
			
		} catch (Exception e) {e.printStackTrace();}
		
		System.out.println("dao 등록 "+concert_code);
		System.out.println("dao 등록 "+result);
		
		return result;
	}
	
	
	/** 삭제 */
	public int getResultDelete(String bmark_code, String id) {
		int result=0;
		
		String sql="delete from bookmark where bmark_code=? and id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bmark_code);
			pstmt.setString(2, id);
			
			result=pstmt.executeUpdate();
			
		} catch (Exception e) {e.printStackTrace();}
		
		System.out.println("dao 삭제 "+bmark_code);
		System.out.println("dao 삭제 "+result);
		
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

package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.ConcertVO;
import com.madang.vo.ReviewVO;

public class ReviewDAO {
	//field
    String url="jdbc:oracle:thin:@211.63.89.214:1521";
    String user="madang";
    String pass="1234";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ReviewDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url,user,pass);
			
		}catch(Exception e) {e.printStackTrace();}				
	}
	
	public void getPreparedStatement(String sql) {
		try {
			pstmt = conn.prepareStatement(sql);
			
		}catch(Exception e) {e.printStackTrace();}
	}
	
	
	/** 리뷰 리스트 출력 **/
	public ArrayList<ReviewVO> getResultListByDate(){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql = "select to_char(rv_date,'yyyy.mm.dd.'), r.id, rv_staravg, rv_title, rv_content, rv_hits, c_poster\r\n" + 
					" from review r, concert c \r\n" + 
					" where r.concert_code = c.concert_code\r\n" + 
					" order by rv_date desc";
		getPreparedStatement(sql);
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReviewVO vo = new ReviewVO();
				vo.setRv_date(rs.getString(1));				
				vo.setId(rs.getString(2));
				vo.setRv_staravg(rs.getInt(3));
				vo.setRv_title(rs.getString(4));
				vo.setRv_content(rs.getString(5));
				vo.setRv_hits(rs.getInt(6));
				vo.setC_poster(rs.getString(7));
				
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	/** 리뷰 리스트 출력 **/
	public ArrayList<ReviewVO> getResultListByStar(){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql = "select to_char(rv_date,'yyyy.mm.dd.'), r.id, rv_staravg, rv_title, rv_content, rv_hits, c_poster\r\n" + 
				" from review r, concert c \r\n" + 
				" where r.concert_code = c.concert_code\r\n" + 
				" order by rv_staravg desc";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReviewVO vo = new ReviewVO();
				vo.setRv_date(rs.getString(1));				
				vo.setId(rs.getString(2));
				vo.setRv_staravg(rs.getInt(3));
				vo.setRv_title(rs.getString(4));
				vo.setRv_content(rs.getString(5));
				vo.setRv_hits(rs.getInt(6));
				vo.setC_poster(rs.getString(7));
				
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/** 공연 타이틀 불러오기 **/
	public ArrayList<ConcertVO> getConcertList(){
		ArrayList<ConcertVO> clist = new ArrayList<ConcertVO>();
		String sql="select c_title, concert_code from concert";
		getPreparedStatement(sql);
		
		try {
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ConcertVO cvo = new ConcertVO();
				cvo.setC_title(rs.getString(1));
				cvo.setConcert_code(rs.getString(2));
				
				clist.add(cvo);
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return clist;
	}
	
	
	/** 후기 글쓰기 **/
	public boolean getResultWrite(ReviewVO vo) {
		
		boolean result = false;
		String sql = "insert into review values('rv'|| lpad(sequ_review.nextval, 4,'0'),?,?,?,sysdate,58,'id',?)";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getRv_title());
			pstmt.setString(2, vo.getRv_content());
			pstmt.setString(3, vo.getConcert_code());
			pstmt.setInt(4, vo.getRv_staravg());
			
			int val = pstmt.executeUpdate();
			if(val !=0 ) result = true;
			
System.out.println("result:"+result);
		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}
}

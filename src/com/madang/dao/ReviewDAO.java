package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	
	/** ¸®ºä ±Û¾²±â **/
	public boolean getResultWrite(ReviewVO vo) {
		
		boolean result = false;
		String sql = "insert into review values('rv'|| lpad(sequ_review.nextval, 4,'0'),?,?,'','',sysdate,58,?,4)";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getRv_title());
			pstmt.setString(1, vo.getRv_content());
			pstmt.setString(1, vo.getRv_title());

		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}
}

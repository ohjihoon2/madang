package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.ConcertVO;

public class ConcertDAO {

	String url ="jdbc:oracle:thin:@localhost:1521";
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
	
	//4
	public ArrayList<ConcertVO> getConcertInfo() {
		ArrayList<ConcertVO> list = new ArrayList<ConcertVO>();
		
		String sql = "SELECT CONCERT_CODE, C_TITLE, TO_CHAR(C_SDATE,'YY.MM.DD'), TO_CHAR(C_EDATE, 'YY.MM.DD'), C_PLACE, C_PRICE,  C_POSTER, C_STATUS" 
					 +    " FROM CONCERT WHERE C_STATUS = 1";
		
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
				vo.setC_status(rs.getString(8));
				
				list.add(vo);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
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

package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.Rental_VO;

public class Rental_DAO {
	//Field
	String url="jdbc:oracle:thin:@211.63.89.214:1521";
	String user="madang";
	String pass="1234";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	
	//Constructor
	public Rental_DAO() {
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
	
	/** 리스트 출력 */
	public ArrayList<Rental_VO> getList(String id){
		ArrayList<Rental_VO> list=new ArrayList<Rental_VO>();
		
		String sql="select r_case, rental_code, r_title, \r\n" + 
				"  to_char(r_sdate, 'yyyy-mm-dd'), to_char(r_edate, 'yyyy-mm-dd'), \r\n" + 
				"  r_place, r_status, floor(sysdate-to_date(r_sdate,'yy/mm/dd')) startcount, floor(to_date(r_edate,'yy/mm/dd')-sysdate)+1 endcount \r\n" + 
				"  from rental where r_id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Rental_VO vo=new Rental_VO();
				vo.setR_case(rs.getString(1));
				vo.setRental_code(rs.getString(2));
				vo.setR_title(rs.getString(3));
				vo.setR_sdate(rs.getString(4));
				vo.setR_edate(rs.getString(5));
				vo.setR_place(rs.getString(6));
				vo.setR_status(rs.getString(7));
				if(rs.getString(7).equals("신청완료")) {
					if(rs.getInt(9)>=0) {
						if(rs.getInt(8)<0) {
							vo.setR_status2("예정");
						} else {
							vo.setR_status2("진행중");
						}
					} else {
						vo.setR_status2("종료");
					}
				}
				list.add(vo);
			}
		} catch (Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	
	
	/** 상세내역 출력 */
	public Rental_VO getContent(String rental_code, String id) {
		Rental_VO vo=new Rental_VO();
		
		String sql="select rental_code, r_case, r_title, r_place, \r\n" + 
				"  to_char(r_sdate, 'yyyy-mm-dd')||' ('||to_char(r_sdate, 'dy')||')', to_char(r_edate, 'yyyy-mm-dd')||' ('||to_char(r_sdate, 'dy')||')', \r\n" + 
				"  r_opentime, r_time, r_rhtime, r_status, r_id, r_file, r_sfile, \r\n" + 
				"  floor(sysdate-to_date(r_sdate,'yy/mm/dd')) startcount, floor(to_date(r_edate,'yy/mm/dd')-sysdate)+1 endcount \r\n" + 
				"  from rental where rental_code=? and r_id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, rental_code);
			pstmt.setString(2, id);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setRental_code(rs.getString(1));
				vo.setR_case(rs.getString(2));
				vo.setR_title(rs.getString(3));
				vo.setR_place(rs.getString(4));
				vo.setR_sdate(rs.getString(5));
				vo.setR_edate(rs.getString(6));
				vo.setR_opentime(rs.getString(7));
				vo.setR_time(rs.getString(8));
				vo.setR_rhtime(rs.getString(9));
				vo.setR_status(rs.getString(10));
				vo.setR_id(rs.getString(11));
				vo.setR_file(rs.getString(12));
				vo.setR_sfile(rs.getString(13));
				if(rs.getString(10).equals("신청완료")) {
					if(rs.getInt(15)>=0) {
						if(rs.getInt(14)<0) {
							vo.setR_status2("예정");
						} else {
							vo.setR_status2("진행중");
						}
					} else {
						vo.setR_status2("종료");
					}
				}
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	
	/** 취소 신청 */
	public boolean getResultcancel(String rental_code) {
		boolean result=false;
		
		String sql="update rental set r_status='취소' where rental_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, rental_code);
			
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

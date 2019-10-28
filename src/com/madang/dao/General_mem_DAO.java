package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.madang.vo.General_mem_VO;

public class General_mem_DAO {
	//Field
	String url="jdbc:oracle:thin:@localhost:1521";
	String user="scott";
	String pass="tiger";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	
	//Constructor
	public General_mem_DAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url,user,pass);
		} catch (Exception e) {e.printStackTrace();}
	}
	
	
	//Method
	public void getPreparedStatement(String sql) {
		try {
			pstmt=conn.prepareStatement(sql);
		} catch (Exception e) {e.printStackTrace();}
	}
	
	
	/** 회원정보 수정 전 셋팅(전체 출력) */
	public General_mem_VO getContent(String id) {
		
		General_mem_VO vo=new General_mem_VO();
		
		String sql="select id, pw, name, gender, to_char(birth,'yyyy-mm-dd') birth, email_id, email_addr, post_num, addr, addr_d,"
				+ " phone1, phone2, phone3, p_comp, accept_email, accept_sms, joindate from general_mem where id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setId(rs.getString(1));
				vo.setPw(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setGender(rs.getString(4));
				vo.setBirth(rs.getString(5));
				vo.setEmail_id(rs.getString(6));
				vo.setEmail_addr(rs.getString(7));
				vo.setPost_num2(rs.getString(8));
				vo.setAddr(rs.getString(9));
				vo.setAddr_d(rs.getString(10));
				vo.setPhone1(rs.getString(11));
				vo.setPhone2(rs.getString(12));
				vo.setPhone3(rs.getString(13));
				vo.setP_comp(rs.getString(14));
				vo.setAccept_email(rs.getString(15));
				vo.setAccept_sms(rs.getString(16));
				vo.setJoindate(rs.getString(17));
				
				
				System.out.println(vo.getId());
				System.out.println(vo.getPost_num2());
				System.out.println(vo.getJoindate());
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	
	
	public boolean getResultUpdate(General_mem_VO vo) {
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

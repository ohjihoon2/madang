package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.madang.vo.Group_mem_VO;

public class Group_mem_DAO {
	//Field
	String url="jdbc:oracle:thin:@localhost:1521";
	String user="scott";
	String pass="tiger";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	
	//Constructor
	public Group_mem_DAO() {
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
	
	
	public Group_mem_VO getContent(String id) {
		
		Group_mem_VO vo=new Group_mem_VO();
		
		String sql="select * from group_mem where id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setId(rs.getString(1));
				vo.setPw(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setEmail_id(rs.getString(4));
				vo.setEmail_addr(rs.getString(5));
				vo.setPhone1(rs.getString(6));
				vo.setPhone2(rs.getString(7));
				vo.setPhone3(rs.getString(8));
				vo.setFax1(rs.getString(9));
				vo.setFax2(rs.getString(10));
				vo.setFax3(rs.getString(11));
				vo.setCompany(rs.getString(12));
				vo.setC_name(rs.getString(13));
				vo.setC_number(rs.getString(14));
				vo.setC_phone1(rs.getString(15));
				vo.setC_phone2(rs.getString(16));
				vo.setC_phone3(rs.getString(17));
				vo.setC_post_num2(rs.getString(18));
				vo.setC_addr(rs.getString(19));
				vo.setC_addr_d(rs.getString(20));
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {e.printStackTrace();}
	}
}

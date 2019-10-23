package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.madang.vo.General_member_VO;

public class General_member_DAO {
	//Field
		String url="jdbc:oracle:thin:@localhost:1521";
		String user="scott";
		String pass="tiger";
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		
		
		//Constructor
		public General_member_DAO() {
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
		
		
		public General_member_VO getContent(String id) {
			
			General_member_VO vo=new General_member_VO();
			
			String sql="select * from general_member where id=?";
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
					vo.setEmail1(rs.getString(6));
					vo.setEmail2(rs.getString(7));
					vo.setPost_num(rs.getString(8));
					vo.setAddr(rs.getString(9));
					vo.setAddr_d(rs.getString(10));
					vo.setPhone1(rs.getString(11));
					vo.setPhone2(rs.getString(12));
					vo.setPhone3(rs.getString(13));
					vo.setP_comp(rs.getString(14));
					vo.setAccept_email(rs.getString(15));
					vo.setAccept_sms(rs.getString(16));
					
				}
				
			} catch (Exception e) {e.printStackTrace();}
			
			return vo;
		}
		
		
		
		public boolean getResultUpdate(General_member_VO vo) {
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

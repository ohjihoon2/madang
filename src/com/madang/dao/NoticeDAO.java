package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.NoticeVO;

public class NoticeDAO {
	//field
    String url="jdbc:oracle:thin:@211.63.89.214:1521";
	String user="madang";
	String pass="1234";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public NoticeDAO() {
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
	
	
	//bring the notice list
	public ArrayList<NoticeVO> getNoticeListAdmin(){
		ArrayList<NoticeVO> list = new ArrayList<NoticeVO>();
		String sql="select nt_code, nt_title, to_char(nt_date,'yyyy-mm-dd'),nt_hits from notice order by nt_date desc";
		getPreparedStatement(sql);
		try {
			rs=pstmt.executeQuery();
			while(rs.next()) {
				NoticeVO vo = new NoticeVO();
				
				vo.setNt_code(rs.getString(1));
				vo.setNt_title(rs.getString(2));
				vo.setNt_date(rs.getString(3));
				vo.setNt_hits(rs.getInt(4));
				
				list.add(vo);
			}
			
		}catch(Exception e) {e.printStackTrace();}
		return list;
	}
	
	//insert new notice
	public boolean getResultWriteAdmin(NoticeVO vo) {
		boolean result=false;
		String sql ="insert into notice values('nt'||lpad(sequ_notice.nextval,4,0),?,?,?,?,sysdate,0)";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getNt_title());
			pstmt.setString(2, vo.getNt_contents());
			pstmt.setString(3, vo.getNt_file());
			pstmt.setString(4, vo.getNt_sfile());
			
			int val = pstmt.executeUpdate();
			if(val != 0) {
				result = true;
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	//bring 
	public NoticeVO getNoticeContentsAdmin(String nt_code){
		NoticeVO vo = new NoticeVO();
		String sql="select nt_title, nt_contents, nt_file, nt_sfile, nt_date from notice where nt_code=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, nt_code);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				vo.setNt_title(rs.getString(1));
				vo.setNt_contents(rs.getString(2));
				vo.setNt_file(rs.getString(3));
				vo.setNt_sfile(rs.getString(4));
				vo.setNt_date(rs.getString(5));
			}
			
		}catch(Exception e) {e.printStackTrace();}
		return vo;
	}
	
	
	//update notice update
	public boolean getResultUpdateAdmin(NoticeVO vo) {
		System.out.println("dao: "+vo.getNt_code());
		boolean result=false;
		String sql ="update notice set nt_title=?, nt_contents=?, nt_file=?,nt_sfile=? where nt_code=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getNt_title());
			pstmt.setString(2, vo.getNt_contents());
			pstmt.setString(3, vo.getNt_file());
			pstmt.setString(4, vo.getNt_sfile());
			pstmt.setString(5, vo.getNt_code());
			
			int val = pstmt.executeUpdate();
			if(val != 0) {
				result = true;
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	//admin delete
	public boolean getResultDeleteAdmin(String nt_code) {
		boolean result=false;
		String sql="delete notice where nt_code=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, nt_code);
			
			int val = pstmt.executeUpdate();
			if(val != 0) {
				result = true;
			}
		}catch(Exception e) {e.printStackTrace();}
		System.out.println("dao"+nt_code + result);
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

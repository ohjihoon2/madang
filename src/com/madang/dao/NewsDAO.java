package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.NewsVO;

public class NewsDAO {
	//Field
	    String url="jdbc:oracle:thin:@211.63.89.214:1521";
		String user="madang";
		String pass="1234";
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		
		//Constructor
		public NewsDAO() {
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
		
		//관리자 -언론보도 리스트 가져오기
		public ArrayList<NewsVO> getNewsListAdmin(){
			ArrayList<NewsVO> list = new ArrayList<NewsVO>();
			String sql="select nw_code, nw_title, to_char(nw_date,'yyyy-mm-dd'), nw_press, nw_url from news";
			getPreparedStatement(sql);
			try {
				rs=pstmt.executeQuery();
				while(rs.next()) {
					NewsVO vo = new NewsVO();
					vo.setNw_code(rs.getString(1));
					vo.setNw_title(rs.getString(2));
					vo.setNw_date(rs.getString(3));
					vo.setNw_press(rs.getString(4));
					vo.setNw_url(rs.getString(5));
					
					list.add(vo);
				}
			}catch(Exception e) {e.printStackTrace();}
			
			return list;
		}
		
		
		//관리자 업데이트_1.내용가져오기
		public NewsVO getNewsContentAdmin() {
			NewsVO vo = new NewsVO();
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

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
		
		//�꽴占썹뵳�딆쁽 -占쎈섧嚥≪쥓�궖占쎈즲 �뵳�딅뮞占쎈뱜 揶쏉옙占쎌죬占쎌궎疫뀐옙
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
		
		
		//admin - bring to update page
		public NewsVO getNewsContentAdmin(String nw_code) {
			NewsVO vo = new NewsVO();
			String sql="select nw_code, nw_title, to_char(nw_date,'yyyy-mm-dd'), nw_press, nw_url from news where nw_code=?";
			getPreparedStatement(sql);
			try {
				pstmt.setString(1, nw_code);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					vo.setNw_code(rs.getString(1));
					vo.setNw_title(rs.getString(2));
					vo.setNw_date(rs.getString(3));
					vo.setNw_press(rs.getString(4));
					vo.setNw_url(rs.getString(5));
				}
			}catch(Exception e) {e.printStackTrace();}
			return vo;
		}
		
		
		//damin - update
		public boolean getResultUpdate(NewsVO vo) {
			boolean result = false;
			String sql = "update news set nw_title=?,nw_press=?,nw_url=? where nw_code=?";
			getPreparedStatement(sql);
			try {
				pstmt.setString(1, vo.getNw_title());
				pstmt.setString(2, vo.getNw_press());
				pstmt.setString(3, vo.getNw_url());
				pstmt.setString(4, vo.getNw_code());
				
				int val = pstmt.executeUpdate();
				if(val!=0) {
					result = true;
				}
			}catch(Exception e) {e.printStackTrace();}
			return result;
		}
		
		//admin - new write
		public boolean getResultWrite(NewsVO vo) {
			boolean result = false;
			String sql = "insert into news values('nw'|| lpad(sequ_news.nextval, 4,'0'), ?,sysdate,?,?)";
			getPreparedStatement(sql);
			try {
				pstmt.setString(1, vo.getNw_title());
				pstmt.setString(2, vo.getNw_press());
				pstmt.setString(3, vo.getNw_url());
				
				int val = pstmt.executeUpdate();
				if(val!=0) {
					result = true;
				}
			}catch(Exception e) {e.printStackTrace();}
			return result;
		}
		
		
		
		//admin - delete
		public boolean getResultDelete(String nw_code) {
			boolean result = false;
			String sql = "delete news where nw_code=?";
			getPreparedStatement(sql);
			try {
				pstmt.setString(1, nw_code);
				
				int val = pstmt.executeUpdate();
				if(val!=0) {
					result = true;
				}
			}catch(Exception e) {e.printStackTrace();}	
			return result;
		}
		
		public ArrayList<NewsVO> getResultNewsList(){
			ArrayList<NewsVO> list = new ArrayList<NewsVO>();
			String sql = "select nw_code, nw_title, to_char(nw_date,'yyyy.mm.dd.'), nw_press, nw_url from news";
			getPreparedStatement(sql);
			try {
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					NewsVO vo = new NewsVO();
					vo.setNw_code(rs.getString(1));
					vo.setNw_title(rs.getString(2));
					vo.setNw_date(rs.getString(3));
					vo.setNw_press(rs.getString(4));
					vo.setNw_url(rs.getString(5));
					
					list.add(vo);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}
		
		
		public void close() {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e) {e.printStackTrace();}
		}
		

		
}

package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.madang.vo.General_mem_VO;

public class General_mem_DAO {
	//Field
	String url="jdbc:oracle:thin:@211.63.89.214:1521";
	String user="madang";
	String pass="1234";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	
	//Constructor
	public General_mem_DAO() {
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
	
	
	/** ȸ������ ���� �� ����(��ü ���) */
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
				vo.setPost_num(rs.getString(8));
				vo.setAddr(rs.getString(9));
				vo.setAddr_d(rs.getString(10));
				vo.setPhone1(rs.getString(11));
				vo.setPhone2(rs.getString(12));
				vo.setPhone3(rs.getString(13));
				vo.setP_comp(rs.getString(14));
				vo.setAccept_email(rs.getString(15));
				vo.setAccept_sms(rs.getString(16));
				vo.setJoindate(rs.getString(17));
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	
	/** ȸ������ ���� */
	public boolean getResultUpdate(General_mem_VO vo) {
		boolean result=false;
		
		String sql="update general_mem set pw=?, phone1=?, phone2=?, phone3=?, p_comp=?, email_id=?, email_addr=?,\r\n" + 
				"  gender=?, post_num=?, addr=?, addr_d=?, accept_email=?, accept_sms=? where id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getPw());
			pstmt.setString(2, vo.getPhone1());
			pstmt.setString(3, vo.getPhone2());
			pstmt.setString(4, vo.getPhone3());
			pstmt.setString(5, vo.getP_comp());
			pstmt.setString(6, vo.getEmail_id());
			pstmt.setString(7, vo.getEmail_addr());
			pstmt.setString(8, vo.getGender());
			pstmt.setString(9, vo.getPost_num());
			pstmt.setString(10, vo.getAddr());
			pstmt.setString(11, vo.getAddr_d());
			pstmt.setString(12, vo.getAccept_email());
			pstmt.setString(13, vo.getAccept_sms());
			pstmt.setString(14, vo.getId());
			
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
			
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	//ȸ������ db�� ȸ����������
	public boolean getResultJoin(General_mem_VO vo) {
		boolean result=false;
		String sql="insert into general_mem values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getBirth());
			pstmt.setString(6, vo.getEmail_id());
			pstmt.setString(7, vo.getEmail_addr());
			pstmt.setString(8, vo.getPost_num());
			pstmt.setString(9, vo.getAddr());
			pstmt.setString(10, vo.getAddr_d());
			pstmt.setString(11, vo.getPhone1());
			pstmt.setString(12, vo.getPhone2());
			pstmt.setString(13, vo.getPhone3());
			pstmt.setString(14, vo.getP_comp());
			pstmt.setString(15, vo.getAccept_email());
			pstmt.setString(16, vo.getAccept_sms());
			
			int val = pstmt.executeUpdate();
			if(val!=0) {
				result=true;
			}
		}catch(Exception e) {e.printStackTrace();}
		return result;
	}
	
	
	//ȸ�����Խ� ���̵� �ߺ� üũ
		public boolean IsOverlapId(String nid) {
			boolean result=false;
			int val=0;
			String sql="select count(*) from general_mem generalM, group_mem groupM where generalM.id=? or groupM.id=?";
			getPreparedStatement(sql);
			try {
				pstmt.setString(1, nid);
				pstmt.setString(2, nid);
				rs=pstmt.executeQuery();
				if(rs.next()){
					val = rs.getInt(1);
				}
				if(val != 0){
					result = true;
				}		
			}catch(Exception e) {e.printStackTrace();}
			return result;
		}
		

		//�α��� Ȯ��
			public boolean getResultLogin(General_mem_VO vo) {
				boolean result=false;
				int val = 0;
				String sql="select count(*) from general_mem where id=? and pw=?";
				getPreparedStatement(sql);
				try {
					pstmt.setString(1,vo.getId());
					pstmt.setString(2,vo.getPw());
					rs=pstmt.executeQuery();
					
					if(rs.next()) val=rs.getInt(1);
					if(val!=0) result=true;
				}catch(Exception e) {e.printStackTrace();}
				return result;
			}


	/** ȸ�� Ż�� ��й�ȣ Ȯ�� */
	public int getResultPw(String id, String u_pw) {
		int result=0;
		
		String sql="select count(*) from general_mem where id=? and pw=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, u_pw);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) result=rs.getInt(1);
			
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	/** ȸ�� Ż�� */
	public boolean getResultOut(String id, String pw) {
		boolean result=false;
		
		String sql="delete from general_mem where id=? and pw=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
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
